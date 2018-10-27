# TaskManager

## Building and Running

The following scripts are useful in various ways to build the production application:
* build.sh - builds the distillery release
* foreground.sh - runs the built release as a foreground process
* background.sh - runs the built release as a background process
* update.sh - Builds the release then runs it in the background

update.sh is essentially the "GO" button for prod

## Design decisions

The first major design decision was how to support both the previous version and the new version of the app, besides changing the name configuration in the app I also changed the database name for this project so that the old one can remain untouched by the new.
