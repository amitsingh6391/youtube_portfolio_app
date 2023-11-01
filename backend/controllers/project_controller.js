class ProjectController {

    constructor(getAllProjectsUsecase, createProjectUseCase, deleteProjectById, updateProjectUseCase, getProjectsByFilter) {

        this.getAllProjectsUsecase = getAllProjectsUsecase;
        this.createProjectUseCase = createProjectUseCase;
        this.deleteProjectById = deleteProjectById;
        this.updateProjectUseCase = updateProjectUseCase;
        this.getProjectsByFilter = getProjectsByFilter;

    };

    async getAllProjects(req, res) {


        try {

            const projects = await this.getAllProjectsUsecase.execute();

            res.json(projects);
        } catch (error) {

            res.status(500).json({ error: `Internal seerver erorr : ${error}` })

        }



    }

    async createProject(req, res) {
        const { title, description, imageUrl, id, projectUrl, projectCategory } = req.body;

        if (!title || !description || !imageUrl || !id || !projectUrl || !projectCategory) {

            return res.status(400).json({ error: 'Missig require field' })

        }


        try {

            const projectId = await this.createProjectUseCase.execute(id, title, description, imageUrl, projectUrl, projectCategory)

            res.status(201).json({ id: projectId });

        } catch (error) {

            res.status(500).json({ error: `Internal seerver erorr : ${error}` })

        }



    }


    async deleteProject(req, res) {

        const { id } = req.body;

        if (!id) {

            return res.status(400).json({ error: 'ID is required' });

        }


        try {

            const projectId = await this.deleteProjectById.execute(id);

            res.status(201).json({ id: projectId });


        } catch (error) {

            res.status(500).json({ error: `Internal seerver erorr : ${error}` })

        }



    }

    async updateProject(req, res) {
        const { title, description, imageUrl, id, projectUrl, projectCategory } = req.body;

        if (!title || !description || !imageUrl || !id || !projectUrl || !projectCategory) {

            return res.status(400).json({ error: 'Missig require field' })

        }


        try {

            const projectId = await this.updateProjectUseCase.execute(id, title, description, imageUrl, projectUrl, projectCategory)

            res.status(201).json({ id: projectId });

        } catch (error) {

            res.status(500).json({ error: `Internal seerver erorr : ${error}` })

        }

    }

    async projectsByFilter(req, res) {

        const { projectCategory } = req.query;

        if (!projectCategory) {
            return res.status(400).json({ error: 'Missig require field' })
        }

        try {

            const projects = await this.getProjectsByFilter.execute(projectCategory);

            res.json(projects);
        } catch (error) {

            res.status(500).json({ error: `Internal seerver erorr : ${error}` })

        }


    }


}

module.exports = ProjectController;