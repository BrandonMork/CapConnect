# capconnect

The admin and users were split up in strapi-beta. To be able to log into the admin console, an existing admin will have to
make you an admin account by clicking on their profile in the top-right corner and selecting "Manage the administrators".

There are two "Users" content types. One is imported from the old project and the other is generated by strapi-beta.

Imported Users URL:    http://localhost:1337/admin/plugins/content-manager/plugins::users-permissions.user

Strapi-Beta Users URL: http://localhost:1337/admin/plugins/content-manager/plugins::users-permissions._beta_user

Notice the endings of the URL's.

We need to fix this issue.