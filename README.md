# G4HunterTable App
#### Shiny App related to G4Hunter published in [Bedrat _et al._ NAR 2016][paper ref].
Supplementary Data can be downloaded from [NCBI](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4770238/bin/supp_44_4_1746__index.html) or [Github](https://github.com/LacroixLaurent/G4HunterPaperGit).  

##### The app requires the following packages:
* Biostrings
* shiny

##### To run the app
1- download the project from github.  
2- set the directory where you extract the project as your working directory in R by using the command **setwd('PATH_TO_THE_PROJECT')**.  
3- install the required packages by running the **install-packages.r** script.  
4- in the R-console, type **runApp()**.  
5- a browser pages should open with the app.  
6- for the next time you want to run the app, you can just go your R-console and type **shiny::runApp('PATH_TO_THE_PROJECT')**. Thus if you have installed this app in a directory named work under your home directory, you should type **shiny::runApp('~/work/G4HunterTable/')**.  

##### Tu use the app
This app reads a list of sequences in a **text or (multi)fasta format** and computes the G4Hunter score for each sequence as in the [G4Hunter paper][paper ref] as well as the length of each sequence.

For file in the **text format**, each line should contains only one sequence in the **DNA or RNA** alphabet.  
If the first line contains information other than sequence, it can be removed by checking the corresponding box.  
Each line should contains only the sequence, no other information like names or numbers.

For file in the **fasta format**, each sequence is reported in 2 lines. The first line starting with > correspond to the name of the sequence and the second line is the proper sequences that have to be in the **DNA** alphabet.  
_Sequences names are NOT kept._

The output is a **table** reporting the sequence, G4Hunter score and length for each sequence.  
This table can be downloaded in a text format in which columns are seperated by tabulation.


> Please cite _"Bedrat A, Lacroix L, & Mergny JL (2016) Re-evaluation of G-quadruplex propensity with G4Hunter. Nucleic Acids Res 44(4):1746-1759."_, when reporting results obtained with this App.

[paper ref]:http://doi.org/10.1093/nar/gkw006
