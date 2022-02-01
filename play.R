working_directory <- "~/Personal_projects/wordle_R/Wordle"
setwd(working_directory)

#libraries
library(stringr)

#run functions
source("functions.R")


play <- function(letters = 5, guesses = 6) {
  number_of_guesses <- guesses
  number_of_letters <- letters
  
  word_vector <- c("ones.csv", "twos.csv", "threes.csv", "fours.csv",
                   "fives.csv", "sixes.csv", "sevens.csv")
  
  if (letters < 3 | letters > 7) {
    stop("choose # letters betweeen 3 and 7")
  } else {
    words <- read.csv(word_vector[letters])
  }
  
  guesses <- rep("", number_of_guesses)
  answer <- words$x[sample(1:nrow(words),1)]
  for (i in 1:number_of_guesses) {
    guess <- obtain_guess(number_of_letters, words)
    guesses[i] <- guess
    for(j in 1:i) {
      print_guess_output(guesses[j], answer, number_of_letters)
    }
    if(check_if_done(guess, answer, number_of_letters) == T) {
      print("CORRECT!", quote = F)
      break
    } 
    if (i == number_of_guesses) {
      print("OUT OF GUESSES", quote = F)
      print(paste0("THE WORD WAS: ", answer), quote = F) 
    }
  }

}

