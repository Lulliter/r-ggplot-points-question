# r-ggplot-points-question
Following 

http://nickstrayer.me/RMarkdown_Sites_tutorial/


Try to make this into a github page website

# STEPS
cd Users/luisamimmi/GoogleDrive/03_g_LAC/Question_ggplot_bubbles
git clone https://github.com/Lulliter/r-ggplot-points-question.git
 -- Your site is ready to be published at https://lulliter.github.io/r-ggplot-points-question/.
 
-> local change then 
git:(master) ✗ git add -A 
git:(master) ✗ git commit -m "added REadME"
git:(master) ✗ git push

# Next we need to create a couple empty files inside your repository.
-> in Terminal
touch _site.yml #"YML" file that tells your website how to assemble itself
touch index.Rmd #Create the main rmd file
touch about.Rmd #Create an about file

# Next fill these out 
-> in R
We will start by filling out the yml file. yml files, while confusing looking at first, are basically a road-map for R to know how to assemble your website.

# Next to actually build this as a website 
-> in Terminal
touch build_site.R

-> in R 
	... fill as 
	run 	# Output created: index.html

# Next to actually publish
-> in Terminal
	#Let's add all the files to our git staging area
	git add -A #the -A flag tells it git you want everything
	
	#Now we can commit
	git commit -m "My first website commit. The begining of greatness"
	
	#Now we push. Note the addendum to normal pushing
	git push origin master