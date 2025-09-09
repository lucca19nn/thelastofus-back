const principalModel = require('../models/principalModel');

const getAllPrincipais = async (req, res) => {
    
    try {
        const principais = await principalModel.getAllPrincipais();
        console.log(principais);

        res.json(principais);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar personagens principais' });
    }
};

const getPrincipalById = async (req, res) => {
    const { id } = req.params;
    try {
        const principal = await principalModel.getPrincipalById(id);
        if (principal) {
            res.json(principal);
        } else {
            res.status(404).json({ error: 'Personagem principal não encontrado' });
        }
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar personagem principal' });
    }
};

const createPrincipal = async (req, res) => {
    const principal = req.body;
    try {
        const newPrincipal = await principalModel.createPrincipal(principal);
        res.status(201).json(newPrincipal);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao criar personagem principal' });
    }
};

const updatePrincipal = async (req, res) => {
    const { id } = req.params;
    const principal = req.body;
    try {
        const updatedPrincipal = await principalModel.updatePrincipal(id, principal);
        res.json(updatedPrincipal);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao atualizar personagem principal' });
    }
};

const deletePrincipal = async (req, res) => {
    const { id } = req.params;
    try {
        await principalModel.deletePrincipal(id);
        res.status(204).send();
    } catch (error) {
        res.status(500).json({ error: 'Erro ao deletar personagem principal' });
    }
};

module.exports = {
    getAllPrincipais,
    getPrincipalById,
    createPrincipal,
    updatePrincipal,
    deletePrincipal
};