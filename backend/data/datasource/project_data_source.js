const pool = require('../../config/database');

class ProjectDataSource {

    async excuteSelectQuery(query, params) {

        return await pool.query(query, params);

    }

    async excuteModificationQueryQuery(query, params) {

        return await pool.execute(query, params);
    }
}

module.exports = new ProjectDataSource();

