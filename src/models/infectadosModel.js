const pool = require('../config/database');

const getAllInfectados = async () => {
    const result = await pool.query('SELECT * FROM infectados');
    console.log(result.rows);
    return result.rows;
};

const getInfectadosById = async (id) => {
    const result = await pool.query('SELECT * FROM infectados WHERE id = $1', [id]);
    console.log(result.rows);
    return result.rows[0];
};

const createInfectados = async (infectado) => {
    const { nome, descricao, origem, comportamento_tipico } = infectado;
    const result = await pool.query(
        'INSERT INTO infectados (nome, descricao, origem, comportamento_tipico) VALUES ($1, $2, $3, $4) RETURNING *',
        [nome, descricao, origem, comportamento_tipico]
    );
    return result.rows[0];
};

const updateInfectados = async (id, infectado) => {
    const { nome, descricao, origem, comportamento_tipico } = infectado;
    const result = await pool.query(
        'UPDATE infectados SET nome = $1, descricao = $2, origem = $3, comportamento_tipico = $4 WHERE id = $5 RETURNING *',
        [nome, descricao, origem, comportamento_tipico, id]
    );
    return result.rows[0];
};

const deleteInfectados = async (id) => {
    await pool.query('DELETE FROM infectados WHERE id = $1', [id]);
};

module.exports = {
    getAllInfectados,
    getInfectadosById,
    createInfectados,
    updateInfectados,
    deleteInfectados
};