install.packages('shiny')
if (getRversion()<'3.5.0')
{
	# for older R setup
	source("http://bioconductor.org/biocLite.R")
	biocLite("Biostrings")
}else{
	# for R>=3.5.0
	if (!requireNamespace("BiocManager"))
		install.packages("BiocManager")
	BiocManager::install("Biostrings")
}
