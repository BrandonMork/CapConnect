# Developer Guide

##### This guide will show you how to setup the local development environment on your personal machine.

- Step 1: Clone the repository using the following link: git@gitlab.ecs.baylor.edu:aars/20200143c9-pariveda01.git
- Step 2: Open PowerShell or your own version and go the 20200143c9-pariveda01\scripts folder
- Step 3: Run the script “setupDenEnv.cmd”
  - The script will ask you to install NPM and MongoDB. After installing verify that npm and MongoDB are in your PATH folder
  - After installing, the script will build strapi for you.
- Step 4: Run the script “mongoImportPermissions.cmd”
- Step 5: Open the project in Webstorm
- Step 6: Open two terminals within Webstorm or another terminal of your preference
  - Have the first terminal go to \20200143c9-pariveda01\client
  - Have the second terminal go to \20200143c9-pariveda01
  - The first terminal will host the front end and the second terminal will host Strapi
- Step 7: Type “npm install” on both terminals
- Step 8: Type “npm run build” on both terminals
- Step 9: Type “npm start” on both terminals

The project will now be running Strapi, MongoDB, and React. If you ever wish to change the fields within a collection type, go to the second terminal and type “npm run develop” to change collection types.

If you change any of the permissions, make sure to run the script “mongoExportPermissions.cmd” before committing your code so that other may be able to import those permissions.



