# Business Central OpenAPI Toolkit
this repo is merely a collection of tools to make it somewhat easier to convert the edmx that we can easily get of all Business Central APIs, to an OpenAPI Specification, by using Microsoft's [OpenAPI.NET.OData](https://github.com/microsoft/OpenAPI.NET.OData) and SwaggerUI.

More information [here](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/api-reference/v1.0/dynamics-open-api).

## Usage
1. You can use the 1_xx scripts to get the corresponding edmx to a file.  There is a script for custom APIs. And there is one for the default APIs.  The corresponding script will simply save the edmx to a file in the corresponding folder (folder "CustomAPI" or "MicrosoftAPIv2.0").
2. Script 2_convertEdmxToYaml.ps1 will convert it in that same folder to an OpenAPI Specification using Microsoft OoasUtil.exe.
3. Script 3_.. will start SwaggerUI on your localhost (follow the directions [here](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/api-reference/v1.0/dynamics-open-api) to set up your machine).  Be aware you can also just use the yaml to upload to something like SwaggerHub to use an online service for previewing and editing your API documentation.