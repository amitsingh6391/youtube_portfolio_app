class GetAllProjectUseCase {

    constructor(projectRepository) {

        this.projectRepository = projectRepository;

    }


    execute() {

        return this.projectRepository.getAllProjects();

    }


}

module.exports = GetAllProjectUseCase;