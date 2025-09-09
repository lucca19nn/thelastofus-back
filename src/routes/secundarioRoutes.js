const express = require('express');
const router = express.Router();
const secundarioController = require('../controllers/secundarioController');

router.get('/secundario', secundarioController.getAllSecundario);
router.get('/secundario/:id', secundarioController.getSecundarioById);
router.post('/secundario', secundarioController.createSecundario);
router.put('/secundario/:id', secundarioController.updateSecundario);
router.delete('/secundario/:id', secundarioController.deleteSecundario);

module.exports = router;
