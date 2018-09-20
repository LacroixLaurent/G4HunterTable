library(shiny)
library(Biostrings)
source('./scoreG4hunt.R')


ui =fluidPage(
  headerPanel("G4HunterTable"),
  p('by L. Lacroix, laurent.lacroix@inserm.fr'),
  helpText(a("Click Here to open the README",href="README.html",target="_blank")),
  wellPanel(style="background-color:pink;",
    fluidRow(
    	column(4,fileInput('file1', 'Choose a TEXT or a FASTA File',
    							accept='text')),
    	column(6,radioButtons('type', 'File Type',
    							 c(text='txt',
    							 	fasta='fasta'),inline=T)),

    	column(6,checkboxInput('header', 'Remove the header (text file only)', F))

    	)),
		wellPanel(style="background-color:lightblue;",
			downloadButton('downloadData', 'Download the result in a text file '),
			tableOutput('result'))

)
