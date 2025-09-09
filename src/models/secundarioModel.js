const pool = require('../config/database');

const getAllSecundario = async () => {
    const result = await pool.query('SELECT * FROM secundario');
    console.log(result.rows);
    return result.rows;
};

const getSecundarioById = async (id) => {
    const result = await pool.query('SELECT * FROM secundarios WHERE id = ?', [id]);
    return result.rows[0];
}

const createSecundario = async (secundario) => {
    const { nome, papel, status, origem, descricao } = secundario;
    const result = await pool.query(
        'INSERT INTO secundarios (nome, papel, status, origem, descricao) VALUES (?, ?, ?, ?, ?)',
        [nome, papel, status, origem, descricao]
    );
    return { id: result.insertId, ...secundario };
}

const updateSecundario = async (id, secundario) => {
    const { nome, papel, status, origem, descricao } = secundario;
    await pool.query(
        'UPDATE secundarios SET nome = ?, papel = ?, status = ?, origem = ?, descricao = ? WHERE id = ?',
        [nome, papel, status, origem, descricao, id]
    );
    return { id, ...secundario };
}

const deleteSecundario = async (id) => {
    await pool.query('DELETE FROM secundarios WHERE id = ?', [id]);
}

module.exports = {
    getAllSecundario,
    getSecundarioById,
    createSecundario,
    updateSecundario,
    deleteSecundario
};