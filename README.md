# NestJs bookmark api

Bookmark api created to store browser bookmarks in database.

Keep all your bookmarks in one place,in order to access them any time.This app helped gather together all my bookmarks and never lost them.

For project development i used nestjs framework with mvc model.Two entities exists user and bookmark.App creates new user and after that user can add new bookmarks (One user -> Many bookamrks)

Prisma library used to help integration with database,create db schema and execute CRUD operations.

Application is dockerized,creating images and databases with docker-compose.

For testing application 2 databases created,one for development and one for testing.When in testing mode,test db is used,in order not to edit main db infos for extra safety.
Test db is only used during test and each time its infos are erased.

## Stack
+ TypeScript
+ NestJs
+ PostgresSql
+ Prisma
+ Docker
+ PactumJs

### Run the API in development mode
    yarn // install
    yarn db:dev:restart // start postgres in docker and push migrations
    yarn start:dev // start api in dev mode

#### Future plan
+ Deploy database in cloud provider to make it accessible from everywhere.This way we are implementing SAAS model,as db is hosted in cloud.As all database updates/maintenance will be done by vendor.
