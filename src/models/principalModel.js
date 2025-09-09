const pool = require('../config/database');

const getAllPrincipais = async () => {
    const result = await pool.query('SELECT * FROM principais');
    console.log(result.rows);
    return result.rows;
};

const getPrincipalById = async (id) => {
    const result = await pool.query('SELECT * FROM principais WHERE id = $1', [id]);
    return result.rows[0];
};

const createPrincipal = async (principal) => {
    const { nome, papel, status, origem, descricao } = principal;
    const result = await pool.query(
        'INSERT INTO principais (nome, papel, status, origem, descricao) VALUES ($1, $2, $3, $4, $5) RETURNING *',
        [nome, papel, status, origem, descricao]
    );
    return result.rows[0];
};

const updatePrincipal = async (id, principal) => {
    const { nome, papel, status, origem, descricao } = principal;
    const result = await pool.query(
        'UPDATE principais SET nome = $1, papel = $2, status = $3, origem = $4, descricao = $5 WHERE id = $6 RETURNING *',
        [nome, papel, status, origem, descricao, id]
    );
    return result.rows[0];
}

const deletePrincipal = async (id) => {
    const result = await pool.query(
        'DELETE FROM principais WHERE id = $1 RETURNING *',
        [id]
    );
    return result.rows[0];
};

module.exports = {
    getAllPrincipais,
    getPrincipalById,
    createPrincipal,
    updatePrincipal,
    deletePrincipal
};