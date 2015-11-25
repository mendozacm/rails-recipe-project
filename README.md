# Rails Hello World

In this lab you will integrate a static route so that the application will render a "Hello World" page.

# Objectives

1. Draw a route
2. Map a route to a controller/action
3. Render (implicitly or explicitly) a static template
4. Create a static template


## Testing

The RSpec/Capybara test suite currently is not passing, to run the tests, you will have passed the lab when the test is passing.


## Instructions

Below are the tasks that you will need to complete in order to finish the lab:

* Integrate a route for ```localhost:3000/hello_world```

* Create a static controller that inherits from the application controller and holds the ```hello_world``` action. You can have the call to the view file occur using either the implicit or explicit processes.

* Create a file in the views' directory that will be called by the static controller's ```hello_world``` action, and add the heading ```<h1>Hello World</h1>``` to the file (the test is case sensitive, so make sure you enter it as shown).

You can test this out in the browser and via the RSpec test suite.