67-272: University 
---

This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  

Some items and helper files have been added in advance to speed up time in-class to complete these exercises.  For example, Prof. H's `minitest_extensions` module is present and included in `test/test_helper.rb` by default.  Another example is that `validates_timeliness` gem is installed and the initializer for that gem has also been run for you.  Note that time zone in `config/application.rb` was defaulted to Eastern (Pgh) time; feel free to change this as appropriate.

To run the testing context in your dev environment, Prof. H already wrote a simple script that can be invoked at the command line terminal with `rake db:contexts`.  If you wanted to do this inside rails console (and assuming you dropped and remigrated the database), you could do this with the following:

```shellscript
require './test/contexts'
    
include Contexts
```

Then run the particular `create_` methods you've created in your context (e.g., `create_departments`).  Of course, this assumes your `test/contexts.rb` file is up to date...

Qapla'

Prof. H & Prof. GS