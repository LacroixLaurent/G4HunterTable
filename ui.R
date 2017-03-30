library(shiny)
library(Biostrings)
source('./scoreG4hunt.R')


ui =fluidPage(
  headerPanel("G4Hunter"),
  p('by L. Lacroix, laurent.lacroix@inserm.fr'),
  hr(),
  sidebarLayout(
    sidebarPanel(
    	fileInput('file1', 'Choose TEXT or FASTA File',
    							accept='text'),
    	radioButtons('type', 'File Type',
    							 c(text='txt',
    							 	fasta='fasta')),
    		tags$hr(),
    		checkboxInput('header', 'Header', F)
    	,downloadButton('downloadData', 'Download')
    	),
		mainPanel(tableOutput('result'))
)
)
