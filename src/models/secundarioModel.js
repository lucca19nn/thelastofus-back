const pool = require('../config/database');

const getAllSecundario = async () => {
    const result = await pool.query('SELECT * FROM secundario');
    console.log(result.rows);
    return result.rows;
};

const getSecundarioById = async (id) => {
    const result = await pool.query('SELECT * FROM secundario WHERE id = $1', [id]);
    return result.rows[0];
};

const createSecundario = async (secundario) => {
    const { nome, papel, status, origem, descricao, imagem } = secundario;
    const result = await pool.query(
        'INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *',
        [nome, papel, status, origem, descricao, imagem]
    );
    return result.rows[0];
};

const updateSecundario = async (id, secundario) => {
    const { nome, papel, status, origem, descricao, imagem } = secundario;
    const result = await pool.query(
        'UPDATE secundario SET nome = $1, papel = $2, status = $3, origem = $4, descricao = $5, imagem = $6 WHERE id = $7 RETURNING *',
        [nome, papel, status, origem, descricao, imagem, id]
    );
    return result.rows[0];
};

const deleteSecundario = async (id) => {
    await pool.query('DELETE FROM secundario WHERE id = $1', [id]);
};

module.exports = {
    getAllSecundario,
    getSecundarioById,
    createSecundario,
    updateSecundario,
    deleteSecundario
};