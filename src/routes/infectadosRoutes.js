const express = require('express');
const router = express.Router();
const infectadosController = require('../controllers/infectadosController');

router.get('/infectados', infectadosController.getAllInfectados);
router.get('/infectados/:id', infectadosController.getInfectadosById);
router.post('/infectados', infectadosController.createInfectados);
router.put('/infectados/:id', infectadosController.updateInfectados);
router.delete('/infectados/:id', infectadosController.deleteInfectados);

module.exports = router;