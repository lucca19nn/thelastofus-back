const secundarioModel = require('../models/secundarioModel');

const getAllSecundario = async (req, res) => {
    
    try {
        const secundarios = await secundarioModel.getAllSecundario();
        console.log(secundarios);
        
        res.json(secundarios);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar personagens secundarios' });
    }
};

const getSecundarioById = async (req, res) => {
    const { id } = req.params;
    try {
        const secundario = await secundarioModel.getSecundarioById(id);
        if (secundario) {
            res.json(secundario);
        } else {
            res.status(404).json({ error: 'Personagem secundario não encontrado' });
        }
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar personagem secundario' });
    }
};

const createSecundario = async (req, res) => {
    const secundario = req.body;
    try {
        const newSecundario = await secundarioModel.createSecundario(secundario);
        res.status(201).json(newSecundario);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao criar personagem secundario' });
    }
};

const updateSecundario = async (req, res) => {
    const { id } = req.params;
    const secundario = req.body;
    try {
        const updatedSecundario = await secundarioModel.updateSecundario(id, secundario);
        res.json(updatedSecundario);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao atualizar personagem secundario' });
    }
};

const deleteSecundario = async (req, res) => {
    const { id } = req.params;
    try {
        await secundarioModel.deleteSecundario(id);
        res.status(204).send();
    } catch (error) {
        res.status(500).json({ error: 'Erro ao deletar personagem secundario' });
    }
};

module.exports = {
    getAllSecundario,
    getSecundarioById,
    createSecundario,
    updateSecundario,
    deleteSecundario
};