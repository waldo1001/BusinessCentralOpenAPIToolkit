const express = require('express');
const app = express();
const port = 3000;
const swaggerUi = require('swagger-ui-express');
const YAML = require('yamljs');
const swaggerDocument = YAML.load('./CustomAPI/CustomAPI.yaml');

var options = {};
app.use('/', swaggerUi.serve, swaggerUi.setup(swaggerDocument, options));
app.listen(port, () => console.log(`Swagger UI for Business Central listening on port ${port}!`))