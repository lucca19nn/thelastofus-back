const pool = require('../config/database');

const getAllLocais = async () => {
    const result = await pool.query('SELECT * FROM locais');
    console.log(result.rows);
    return result.rows;
};

const getLocalById = async (id) => {
    const result = await pool.query('SELECT * FROM locais WHERE id = $1', [id]);
    console.log(result.rows);
    return result.rows[0];
};

const createLocal = async (local) => {
    const { nome, descricao, imagem } = local;
    const result = await pool.query(
        'INSERT INTO locais (nome, descricao, imagem) VALUES ($1, $2, $3) RETURNING *',
        [nome, descricao, imagem]
    );
    return result.rows[0];
};

const updateLocal = async (id, local) => {
    const { nome, descricao, imagem } = local;
    const result = await pool.query(
        'UPDATE locais SET nome = $1, descricao = $2, imagem = $3 WHERE id = $4 RETURNING *',
        [nome, descricao, imagem, id]
    );
    return result.rows[0];
};

const deleteLocal = async (id) => {
    await pool.query('DELETE FROM locais WHERE id = $1', [id]);
};

module.exports = {
    getAllLocais,
    getLocalById,
    createLocal,
    updateLocal,
    deleteLocal
};