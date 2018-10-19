# TaskManager

## Building and Running

The following scripts are useful in various ways to build the production application:
* build.sh - builds the distillery release
* foreground.sh - runs the built release as a foreground process
* background.sh - runs the built release as a background process
* update.sh - Builds the release then runs it in the background

update.sh is essentially the "GO" button for prod

## Design decisions

The major design decision I struggled with was how to represent time worked on a task. Originally I thought maybe I would have another table that held a user, a task, and how long that user had worked on that task. And I do think that is the better design, but I ran out of time before I could implement it so I went with a quicker and easier solution of having a task keep track of time worked on it by anybody, but only allow the assigned user to log time on the task.

