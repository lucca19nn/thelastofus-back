const express = require('express');
const router = express.Router();
const locaisController = require('../controllers/locaisController');

router.get('/locais', locaisController.getAllLocais);
router.get('/locais/:id', locaisController.getLocalById);
router.post('/locais', locaisController.createLocal);
router.put('/locais/:id', locaisController.updateLocal);
router.delete('/locais/:id', locaisController.deleteLocal);

module.exports = router;