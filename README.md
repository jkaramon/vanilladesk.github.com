Setup (Win)
===========

Download and install latest stable Ruby 1.9:

	http://rubyinstaller.org/downloads/

Download and install latest ruby development kit from the same source:
    
	http://rubyinstaller.org/downloads/
	
	# Extract into C:\RubyDevKit
	cd C:\RubyDevKit
	ruby dk.rb init
	ruby dk.rb install --force

Install Rake and jekyll gems:

	gem install jekyll




Editing
=======

Run jekyll server(with auto-restart on update)
	
	jekyll --server --auto

Open browser 

	http://localhost:4000


Modify files, commit and push changes


Adding News
===========

Add new file in _posts folder

File should follow this naming convention:
	
	yyyy-mm-dd-TITLE.htm
	(2012-04-16-VanillaDesk-acquired-Atlassian.htm)

To add images, you may use this helper

	{% news_img vd.png %} 	# expands into image with preview located in /images/news/yyyy-mm-dd/vd.png
				# where yyyy-mm-dd is date of the post

For start, you may use template located in:
	
	_posts/templates.htm


More on:

	https://github.com/mojombo/jekyll/wiki 
	


Publishing
==========
Run:

	rake publish # this will build and publish web site
		



