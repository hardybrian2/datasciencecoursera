
pollutantmean <- function( directory, pollutant, id = 1:324){
  
  mean_of_means <- 0 #function scope mean_of_means
  #print(pollutant)
  file_list <- dir(directory)
  
  for (i in id){
    
    #check to see if file is CSV
    if(grepl("\\.csv$", file_list[i])){ # check to makesure file is CSV and calulate mean of pollutant else
    
      #bould the path to csv file i.
      csv_file <- paste(directory, "/", file_list[i], sep = "")
    
      #Read csv_file[i]
      csv_data <- read.csv2(csv_file, sep = ",", header = TRUE)
      #print(names(csv_data))
      #add the the mean of file_i to the mean_of_means.
      if (!is.nan(mean(as.numeric(csv_data[,pollutant]), na.rm = TRUE))){
        mean_of_means <- mean_of_means + mean(as.numeric(csv_data[,pollutant]), na.rm = TRUE)
        #print(mean_of_means)
      }
        

    }

  }
  print(i)
  print(mean_of_means)
  print(mean_of_means/i)
}

