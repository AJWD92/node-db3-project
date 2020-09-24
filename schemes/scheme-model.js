const db = require('../data/db-config');

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({ id }).first()
}

function findSteps(id) {
    return db('steps as st')
        .join('schemes as sc', 'sc.id', 'st.scheme_id')
        .select('st.id', 'sc.scheme_name', 'st.step_number', 'st.instructions')
        .where({ scheme_id: id });
    // return db('steps')
    //     .join('schemes', 'schemes.id', 'steps.scheme_id')
    //     .select('steps.id', 'schemes.scheme_name', 'steps.step_number', 'step.instructions')
    //     .where({ scheme_id: id });
}

function add(scheme) {
    return db('schemes')
        .insert(scheme, 'id');
}

function update(id, changes) {
    return db('schemes')
        .where({ id })
        .update(changes);
}

function remove(id) {
    return db('schemes')
        .where({ id })
        .del();
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}