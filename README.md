67-272: University 
===
This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  

Some items and helper files have been added in advance to speed up time in-class to complete these exercises.  For example, Prof. H's `minitest_extensions` module is present and included in `test/test_helper.rb` by default.  Another example is that `validates_timeliness` gem is installed and the initializer for that gem has also been run for you.  Note that time zone in `config/application.rb` was defaulted to Eastern (Pgh) time; feel free to change this as appropriate.


Instructions
---
Having cloned this repo to your laptop (recommended) or gotten the zip file from GitHub, we need to set up the project as follows:

1. Install gems with `bundle install`
2. Create the database with `rails db:migrate`
3. Now open rails console (`rails console`) in a VS Code terminal window
4. Make sure Hirb is set up with `Hirb.enable` for nicer output formatting
5. Within the console, we want to include our context to this point with the following:
	- `require './test/contexts'`
	- `include Contexts`
	- now run `create_all` and you will see the departments context is built
	- verify that by running `Department.all`; after that run `@is` to see it all works
6. In the console, build a Prof. Q object with `@profq = FactoryBot.build(:faculty)`
	- notice that there is no affliated department yet
7. Recreate the `@profq` object with a connection to the IS deparment with: 
	- `@profq = FactoryBot.build(:faculty, department: @is)`
	- note that we did NOT do `department_id` and a number (which could be anything) but connected the `@profq` object with a department object (in this case, `@is` which was created in our departments context) and let the system figure out the rest 
	- notice that there is no object ID yet; `build` only builds in memory and does not save to the database (`FactoryBot.create` will build in memory _and_ save to the database)
8. Since it's not saved yet, go ahead and save this record to the database with `@profq.save` and run `Faculty.all` to see results are there in the database
9. Open the `test/sets/faculties.rb` file and add step 7a code to the `create_faculties` method
10. Create two more faculty: 
	- from two other departments, but not `@soc`
	- make one inactive
	- make sure they are not all called "Jeria Quesenberry" ;-)
11. Require the faculties code by uncommenting the appropriate line in `test/contexts.rb`
12. Include the Faculties submodule by uncommenting the appropriate line in `test/contexts.rb`
13. Add the `create_faculties` method to `create_all` by uncommenting the appropriate lines
14. Quit rails console
15. Load the testing data into a clean copy of your dev database with the command `rake db:contexts`. (Note that this is not built into Rails; it was written for you and also exists in your project starter code.) Once that's done, re-open rails console and run `Department.all` and `Faculty.all` and see that the testing context data is loaded in the dev environment.  If you want a challenge, repeat a similar exercise for `Course` (optional)

In class, we hope to get through step 8, but in any case **please complete all steps prior to class on Thursday** so we can do another exercise then.

Qapla'

Prof. H & Prof. GS