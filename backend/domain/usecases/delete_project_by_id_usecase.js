class DeleteProjectByIdUseCase {

    constructor(projectRepository) {
        this.projectRepository = projectRepository;
    }

    async execute(id) {

        return this.projectRepository.deleteProject(id);

    }

}

module.exports = DeleteProjectByIdUseCase;