const express = require('express');
const app = express();
const port = 3001;
const swaggerUi = require('swagger-ui-express');
const YAML = require('yamljs');
const swaggerDocument = YAML.load('./MicrosoftAPIv2.0/MicrosoftAPIv2.0.yaml');

var options = {};
app.use('/', swaggerUi.serve, swaggerUi.setup(swaggerDocument, options));
app.listen(port, () => console.log(`Swagger UI for Business Central listening on port ${port}!`))