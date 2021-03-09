67-272: University 
---

This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  

Some items and helper files have been added in advance to speed up time in-class to complete these exercises.  For example, Prof. H's `minitest_extensions` module is present and included in `test/test_helper.rb` by default.  Another example is that `validates_timeliness` gem is installed and the initializer for that gem has also been run for you.  Note that time zone in `config/application.rb` was defaulted to Eastern (Pgh) time; feel free to change this as appropriate.

This branch is for an exercise in building controllers.  Specifically, you need to build a controller for departments that handles the following:

- index: a list of all department objects in the system
- show: presents the details of a particular department in the system
- new: provides a form to enter a new department into the system
- edit: provides the same form, prepopulated with a particular department, to be used to edit department data

To start this exercise, first run `rake db:contexts` and reset the database and create a series of departments to work with.

To make this easier, we have given you a set of controller tests in `test/controllers/departments_controller_test/rb` that will work when everything is in place.  Run the tests right now with the command `rails test:controllers` and see that all the tests fail. (To be expected because we have no controllers or routes yet.)  Read over the tests and see what they are doing and what is expected. (See comments on first test for more help.)

After this start with the following steps:

1. Create a series of CRUD operation routes in `config/routes.rb`. (This can be a one-liner)  Set the root to the `departments#index` action. Verify that this is working by running `rake routes` on the command line of the terminal and see the routes that are generated.
2. Add a new file called `departments_controller.rb` (pluralization important) within the `app/controller/` directory.  Inside the file, add the following:

  ```
  class DepartmentsController < ApplicationController
  end
  ```
  
3. Within the aforementioned class, add a method called `index` and within that method, create an instance variable called `active_departments` to hold records of departments that are active in the system, listed in alphabetical order.
4. Next, create a method called `show` that should have an instance variable called `department` which is set set equal to `Deparment.find(params[:id])`
5. After that, create a method called `new` that simply creates an new, empty `Department` object as an instance variable.
6. Finally, create a method called `edit` that has the same instance variable as used in `show`.

With your routes in hand and these four methods created in your controller, confidently run your tests again with `rails test:controllers` and see them all pass.

Oh dear.  That didn't work as expected, did it?  If you are ahead of your peers in the exercise, try to figure out what went wrong, but take heart, we will discuss this failure in class and get you back on track easily enough.

Qapla'

Prof. H & Prof. GS