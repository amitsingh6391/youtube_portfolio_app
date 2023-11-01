
const mysqDataSource = require('../datasource/project_data_source');
class ProjectRepository {

    async getAllProjects() {

        const query = 'SELECT * FROM projects'

        const [rows] = await mysqDataSource.excuteSelectQuery(query);

        return rows;

    }

    async createProject(project) {


        const { title, description, imageUrl, id, projectUrl, projectCategory } = project;

        const query = 'INSERT INTO projects (title, description, imageUrl, id, projectUrl, projectCategory) VALUES (? ,? ,? ,? ,? ,?)';

        const params = [title, description, imageUrl, id, projectUrl, projectCategory];

        const [result] = await mysqDataSource.excuteModificationQueryQuery(query, params)

        return result;


    }

    async deleteProject(id) {

        const query = 'DELETE FROM projects WHERE id = ?';
        const params = [id];

        const [result] = await mysqDataSource.excuteModificationQueryQuery(query, params);

        return result;

    }

    async updateProject(project) {


        const { title, description, imageUrl, id, projectUrl, projectCategory } = project;

        const query = 'UPDATE projects SET title =?,description = ?, imageUrl= ?, projectUrl =?,  projectCategory =? WHERE id =?';

        const params = [title, description, imageUrl, projectUrl, projectCategory, id];

        const [result] = await mysqDataSource.excuteModificationQueryQuery(query, params)

        return result;


    }

    async getProjectsByFilter(filter) {

        const query = 'SELECT * FROM projects WHERE projectCategory = ?';

        const params = [filter];

        const [rows] = await mysqDataSource.excuteSelectQuery(query, params);

        return rows;

    }


}

module.exports = ProjectRepository;

