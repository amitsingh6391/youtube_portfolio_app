class Project {

    constructor(id, title, description, imageUrl, projectUrl, projectCategory) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.imageUrl = imageUrl;
        this.projectUrl = projectUrl;
        this.projectCategory = projectCategory;
    };

}

module.exports = Project;