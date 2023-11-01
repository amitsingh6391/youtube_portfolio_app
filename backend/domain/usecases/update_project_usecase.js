const Project = require('../entities/project');

class UpdateProjectUsecase {
    constructor(projectRepository) {
        this.projectRepository = projectRepository;
    }

    async execute(id, title, description, imageUrl, projectUrl, projectCategory) {

        const newUpdateProject = new Project(
            id,
            title,
            description,
            imageUrl,
            projectUrl,
            projectCategory
        )
        return this.projectRepository.updateProject(newUpdateProject);
    }

}

module.exports = UpdateProjectUsecase;