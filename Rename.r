
# change the working directory to the path for the relevant folser
setwd("C:/Users/Lord Zoey/Desktop/GPP-TIFF-Final1")

# function to rename the file name
rename_file <- function(x){
  x <- gsub('SMAP_L4_C_mdl_','',x)
  x <- gsub('T0.*','',x)
  x <- paste0(x,'_GPP.tif')
  return(x)
}

# get list of the current file names
files_old <- list.files()

# apply function to the files
files_new <- rename_file(files_old)

# change file names using "file.rename" function
file.rename(list.files(), files_new)
