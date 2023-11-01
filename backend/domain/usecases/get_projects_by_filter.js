class GetProjectsByFilter {

    constructor(projectRepository) {
        this.projectRepository = projectRepository;
    }

    async execute(filter) {
        return this.projectRepository.getProjectsByFilter(filter);
    }

}

module.exports = GetProjectsByFilter;