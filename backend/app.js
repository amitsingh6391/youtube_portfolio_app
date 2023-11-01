const express = require('express');
const cors = require('cors');
const projectRoutes = require('./routes/project_routes');
const ProjectController = require('./controllers/project_controller');
const GetAllProjectUseCase = require('./domain/usecases/getall_projects_usecases');
const CreateProjectUseCase = require('./domain/usecases/create_project_usecase');
const DeleteProjectById = require('./domain/usecases/delete_project_by_id_usecase');
const UpdatePrpject = require('./domain/usecases/update_project_usecase');
const GetProjectsByFilter = require('./domain/usecases/get_projects_by_filter');
const ProjectRepository = require('./data/repositories/project_repositories');


const app = express();


const projectRepository = new ProjectRepository();
const getAllProjectUseCase = new GetAllProjectUseCase(projectRepository);
const createProjectUseCase = new CreateProjectUseCase(projectRepository);
const deleteProjectById = new DeleteProjectById(projectRepository);
const updateProjectUsecase = new UpdatePrpject(projectRepository);
const getProjectsByFilter = new GetProjectsByFilter(projectRepository);
const projectController = new ProjectController(getAllProjectUseCase, createProjectUseCase, deleteProjectById, updateProjectUsecase, getProjectsByFilter);


app.use(cors());
app.use(express.json());




app.use('/projects', projectRoutes({ projectController }))



// app.get('/', (req, res) => res.send('Hello word'));

// console.log('Hello word');

const PORT = process.env.PORT || 4000;

app.listen(PORT, () => {

    console.log(`Server is running on this port :${PORT}`);
});