const locaisModel = require('../models/locaisModel');

const getAllLocais = async (req, res) => {
    try {
        const locais = await locaisModel.getAllLocais();
        res.json(locais);
    } catch (error) {
        console.error("ERRO DETALHADO (locaisController):", error); 
        res.status(500).json({ error: 'Erro ao buscar locais' });
    }
};

const getLocalById = async (req, res) => {
    const { id } = req.params;
    try {
        const local = await locaisModel.getLocalById(id);
        if (local) {
            res.json(local);
        } else {
            res.status(404).json({ error: 'Local não encontrado' });
        }
    } catch (error) {
        console.error("ERRO DETALHADO (locaisController):", error); 
        res.status(500).json({ error: 'Erro ao buscar local' });
    }
};

// ... (as outras funções create, update, delete permanecem iguais)
const createLocal = async (req, res) => {
    const local = req.body;
    try {
        const newLocal = await locaisModel.createLocal(local);
        res.status(201).json(newLocal);
    } catch (error) {
        console.error("ERRO DETALHADO:", error); 
        res.status(500).json({ error: 'Erro ao criar local' });
    }
};

const updateLocal = async (req, res) => {
    const { id } = req.params;
    const local = req.body;
    try {
        const updatedLocal = await locaisModel.updateLocal(id, local);
        res.json(updatedLocal);
    } catch (error) {
        console.error("ERRO DETALHADO:", error); 
        res.status(500).json({ error: 'Erro ao atualizar local' });
    }
};

const deleteLocal = async (req, res) => {
    const { id } = req.params;
    try {
        await locaisModel.deleteLocal(id);
        res.status(204).send();
    } catch (error) {
        console.error("ERRO DETALHADO:", error); 
        res.status(500).json({ error: 'Erro ao deletar local' });
    }
};


module.exports = {
    getAllLocais,
    getLocalById,
    createLocal,
    updateLocal,
    deleteLocal
};