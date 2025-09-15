const pool = require('../config/database');

const getAllPrincipais = async () => {
    const result = await pool.query('SELECT * FROM principal');
    console.log(result.rows);
    return result.rows;
};

const getPrincipalById = async (id) => {
    const result = await pool.query('SELECT * FROM principal WHERE id = $1', [id]);
    return result.rows[0];
};

const createPrincipal = async (principal) => {
    const { nome, papel, status, origem, descricao, imagem } = principal;
    const result = await pool.query(
        'INSERT INTO principal (nome, papel, status, origem, descricao, imagem) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *',
        [nome, papel, status, origem, descricao, imagem]
    );
    return result.rows[0];
};

const updatePrincipal = async (id, principal) => {
    const { nome, papel, status, origem, descricao, imagem } = principal;
    const result = await pool.query(
        'UPDATE principal SET nome = $1, papel = $2, status = $3, origem = $4, descricao = $5, imagem = $6 WHERE id = $7 RETURNING *',
        [nome, papel, status, origem, descricao, imagem, id]
    );
    return result.rows[0];
};

const deletePrincipal = async (id) => {
    await pool.query('DELETE FROM principal WHERE id = $1', [id]);
};

module.exports = {
    getAllPrincipais,
    getPrincipalById,
    createPrincipal,
    updatePrincipal,
    deletePrincipal
};