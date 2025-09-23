const infectadosModel = require('../models/infectadosModel');

const getAllInfectados = async (req, res) => {
    try {
        const infectados = await infectadosModel.getAllInfectados();
        res.json(infectados);
    } catch (error) {
        console.error("ERRO DETALHADO:", error); 
        
        res.status(500).json({ error: 'Erro ao buscar infectados' });
    }
};

const getInfectadosById = async (req, res) => {
    const { id } = req.params;
    console.log(id);
    
    try {
        const infectado = await infectadosModel.getInfectadosById(id);
        if (infectado) {
            res.json(infectado);
        } else {
            res.status(404).json({ error: 'Infectado não encontrado' });
        }
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar infectado' });
    }
};

const createInfectados = async (req, res) => {
    const infectado = req.body;
    try {
        const newInfectado = await infectadosModel.createInfectados(infectado);
        res.status(201).json(newInfectado);
    } catch (error) {
        // >>> ESTA LINHA É ESSENCIAL PARA DESCOBRIR O ERRO REAL <<<
        console.error("ERRO DETALHADO AO CRIAR INFECTADO:", error); 
        
        res.status(500).json({ error: 'Erro ao criar infectado' });
    }
};
const updateInfectados = async (req, res) => {
    const { id } = req.params;
    const infectado = req.body;
    try {
        const updatedInfectado = await infectadosModel.updateInfectados(id, infectado);
        res.json(updatedInfectado);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao atualizar infectado' });
    }
};
const deleteInfectados = async (req, res) => {
    const { id } = req.params;
    try {
        await infectadosModel.deleteInfectados(id);
        res.status(204).send();
    } catch (error) {
        res.status(500).json({ error: 'Erro ao deletar infectado' });
    }
};

module.exports = {
    getAllInfectados,
    getInfectadosById,
    createInfectados,
    updateInfectados,
    deleteInfectados
};