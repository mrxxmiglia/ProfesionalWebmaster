var pool = require('./bd');

//LISTADO
async function getNovedades() {
    var query = 'select * from novedades';
    var rows = await pool.query(query);
    return rows;
}


//BORRAR

async function deleteNovedadesById(id) {
    var query = 'delete from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows
}

//agregar

async function insertNovedad(obj) {
    try {
        var query = "insert into novedades set ? ";
        var rows = await pool.query(query, [obj]);
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

// modificar

async function getNovedadById(id) {
    var query = "select * from novedades where id = ?";
    var rows = await pool.query(query, [id]);
    return rows[0];
}

async function modificarNodedadById(obj, id) {
    try {
        var query = "update novedades set ? where id=?"
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;


    }

}

module.exports = { getNovedades, deleteNovedadesById, insertNovedad, getNovedadById, modificarNodedadById }