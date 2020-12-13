
 
/**
 * This module implements a REST-inspired webservice for the Campus Crawl DB.
 * The database is hosted on ElephantSQL.
 *
 * @author: avolzer
 * @date: Fall, 2020
 */

// Set up the database connection.
const pgp = require('pg-promise')();
const db = pgp({
    host: process.env.HOST,
    port: 5432,
    database: process.env.USER,
    user: process.env.USER,
    password: process.env.PASSWORD
});

// Configure the server and its routes.

const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const router = express.Router();
router.use(express.json());

router.get("/", readHelloMessage);
router.get("/locations", readLocations);
router.get("/locations/:id", readLocation);
router.post("/tour", createTour);
router.put("/locations/:id", updatePlayer);
router.delete("/tourstop/:tourid/:stopnumber", deleteStop);

app.use(router);
app.use(errorHandler);
app.listen(port, () => console.log(`Listening on port ${port}`));

// Implement the CRUD operations.

function errorHandler(err, req, res) {
    if (app.get('env') === "development") {
        console.log(err);
    }
    res.sendStatus(err.status || 500);
}

function returnDataOr404(res, data) {
    if (data == null) {
        res.sendStatus(404);
    } else {
        res.send(data);
    }
}

function readHelloMessage(req, res) {
    res.send('Team B data service');
}

function readLocations(req, res, next) {
    db.many("SELECT * FROM Location")
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            next(err);
        })
}

function readLocation(req, res, next) {
    db.oneOrNone('SELECT * FROM Location WHERE id=${id}', req.params)
        .then(data => {
            returnDataOr404(res, data);
        })
        .catch(err => {
            next(err);
        });
}

function createTour(req, res, next) {
    db.one(`INSERT INTO tour(name, password) VALUES ($(name), $(password)) RETURNING id`, req.body)
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            next(err);
        });
}

function updateLocation(req, res, next) {
    db.oneOrNone(`UPDATE Location SET name=$(name), latitude=$(latitude), longitude=$(longitude), description=$(description), greeting=$(greeting), image=$(image) WHERE id=${req.params.id} RETURNING id`, req.body)
        .then(data => {
            returnDataOr404(res, data);
        })
        .catch(err => {
            next(err);
        });
}

function deleteStop(req, res, next) {
    db.oneOrNone(`DELETE FROM tourstop WHERE tourid=${req.params.tourid} AND stopnumber=$(req.params.stopnumber) RETURNING id`)
        .then(data => {
            returnDataOr404(res, data);
        })
        .catch(err => {
            next(err);
        });
}
