# CapConnect Installation Guide
## Install Capconnect
1. Install Docker from the official Docker website or you package manager
2. Install Docker Compose from the official Docker website or your package manager
3. Run `docker-compose up` from the root project directory
4. Run `./dockerExec.sh capconnect-db mongoImportPermissions.cmd mongoImportCollection.cmd permission.json role.json` from the scripts directory
5. Navigate to http://localhost/admin/ in the browser to set up the first 
## How do they configure system
## Backups
Use the `localBackup.cmd`, `lcoalRestore.cmd`, `dockerBackup.cmd`, and `dockerResotre.cmd`

### Demo Configuration
To load the demo run `[local/docker]Restore.cmd demo` from the `scripts` directory

### Docker Compose Environment Variables
You can set environment variables for just one run of Docker Compose by putting them on the line before the command, e.g. `CAPPY_PREFIX=tmp- docker-compose up`
#### CAPPY_PREFIX
Defaults to empty

Adds the defined prefix to the names of all docker containers, for example if the value “tmp-” is used, the created containers are named “tmp-capconnect” and “tmp-capconnect-db”.

If you set this option, make sure you append the prefix to “capconnect-db” when you run the dockerExec script.
#### CAPPY_HTTP_PORT
Defaults to 80

Redirects to CAPPY_HTTPS_PORT

Sets the port CapConnect is served on, e.g. if the port is “1337” you need to type “http://localhost:1337/” in the browser to access CapConnect from the machine it is running on. If the port is left as “80”, “http://localhost/” implies ”:80”
#### CAPPY_HTTPS_PORT
Defaults to 443

Sets the port CapConnect is served on, e.g. if the port is “8443” you need to type “https://localhost:8443/” in the browser to access CapConnect from the machine it is running on. If the port is left as “443”, “https://localhost/” implies ”:443”

## Usernames & Passwords
There are no default usernames or passwords.

## Troubleshooting
Containers can be re-run with Docker Compose as described above

Manual database modification can be done with the Strapi admin panel at https://<CapConnect URL>/admin/ or by accessing the Mongo console with `sudo docker exec -it capconnect-db mongo ff`
