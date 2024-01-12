const router = require('express').Router
const fire = require('../config/fire')
const bodyParser = require('body-parser')
const db = fire.firestore()
router.use(bodyParser.json())

