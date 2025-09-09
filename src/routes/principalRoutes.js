const express = require('express');
const router = express.Router();
const principalController = require('../controllers/principalController');

router.get('/principais', principalController.getAllPrincipais);
router.get('/principais/:id', principalController.getPrincipalById);
router.post('/principais', principalController.createPrincipal);
router.put('/principais/:id', principalController.updatePrincipal);
router.delete('/principais/:id', principalController.deletePrincipal);

module.exports = router;