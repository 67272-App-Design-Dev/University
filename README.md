## 67-272: University

This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.

This branch is for an exercise in building an API endpoint. Specifically, you need to build a route, controller, and a set of serializers that will create the JSON example found in the `docs` directory.

To start this exercise, first run `bundle install` to get the `fast_jsonapi` gem into the project. After that, run `rails db:contexts` and reset the database and create a series of departments, faculty, courses, and assignments to work with.

After this, start with the following steps:

1. Create a custom route in `config/routes.rb`. This will go into the `v1` namespace, not in the main section of the routes. The URL for this endpoint is: `http://localhost:3000/v1/departments`. Note we are only creating this one route as we only have one endpoint; do not create every CRUD route for this resource.

2. There is a shell called `departments_controller.rb` within the `app/controller/api/v1` directory. Notice that this controller inherits from `ApiController` and not `ApplicationController` since it generates json, not html web pages. Inside the file, add the lines to the `index` to generate the json for active departments in alphabetical order.

3. Create a serializer for departments with the `rails g serializer department` command and then flesh out that serializer so that it create the json as seen in the sample given. Note that we have already given you two other serializers you will need, `FacultySerializer` and `CourseSerializer`, so you can just focus on this one serializer.

4. Once you have the serializer (or think you are close), you can look at the result by starting the server and opening your browser to `http://localhost:3000/v1/departments`. Compare this output with the sample and make adjustments as needed.

Qapla'

Prof. H & Prof. Shihong
