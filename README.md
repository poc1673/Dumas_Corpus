# Dumas_Corpus
Get the frequencies of the most commonly used words in Dumas!

This repo contains two bash scripts and one R script:

* readlines_two - Takes the list of links in the dumas.txt file and appends the text contents of each url to one text file called dumas_compiled.txt.
  
 * summarize_text - Takes a text file (in this case the dumas_compiled.txt file), makes all characters lowercase, counts each word and then outputs the 1000 most common ones to res.txt.
  
 * dumas_charts.R - Uses ggplot2 on res.txt to create the graphs in my blog post.
  
 The only file which is necessary to begin the file with the above scripts is dumas.txt.
