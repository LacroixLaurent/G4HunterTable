library(shiny)
library(Biostrings)
source('./scoreG4hunt.R')


server = (function(input, output) {
	showModal(modalDialog(
		title = "G4Hunter score for a list of sequences",
		"This tiny app calculates the G4Hunter score of a list nucleic acid sequence",
		easyClose = TRUE
	))
	dataInput <- reactive({
		inFile <- input$file1
		if (is.null(inFile))
			return(NULL)
		if (input$type=='txt')
		{datatxt <- read.table(inFile$datapath, header=input$header, sep='\t')}
		if (input$type=='fasta')
		{dataseq <- readDNAStringSet(inFile$datapath,'fasta')
		datatxt <- as.data.frame(dataseq)}
		names(datatxt)='Sequence'
		G4Hscore <- apply(datatxt,1,scoreG4hunt)
		length <- apply(datatxt,1,function(x) length(strsplit(as.character(x),NULL)[[1]]))
		res <- cbind(datatxt,G4Hscore,length)
		return(res)
 })
	output$result <- renderTable(dataInput())
	output$downloadData <- downloadHandler(
	  filename = function() {
	    paste(input$file1, '_scored.txt', sep='')
	                        },
	  content = function(file) {
	    write.table(dataInput(), file,sep='\t',col.names=NA)
	                           })
})
