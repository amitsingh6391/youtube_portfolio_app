const express = require('express');

const router = express.Router();

module.exports = (dependencies) => {

    const projectController = dependencies.projectController;
    router.get('/get', projectController.getAllProjects.bind(projectController));
    router.get('/get-project-by-filter', projectController.projectsByFilter.bind(projectController));
    router.post('/create/', projectController.createProject.bind(projectController));
    router.post('/delete/', projectController.deleteProject.bind(projectController));
    router.post('/update/', projectController.updateProject.bind(projectController));


    return router;

}
