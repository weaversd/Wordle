check_if_valid <- function(word, number_of_letters, wordlist) {
  if (nchar(word) != number_of_letters) {
    return(F)
  } else if (!grepl('^[a-z]+$', word)) {
    return(F)
  } else if (!any(wordlist==word)){
    return(F)
  } else {
    return(T)
  }
}



obtain_guess <- function(number_of_letters, wordlist) {
  acceptable <- F
  while (acceptable == F) {
    guess <- readline(prompt = "guess:")
    if(check_if_valid(guess, number_of_letters,wordlist) == F) {
      print("not a valid guess", quote = F)
    } else {
      return(guess)
    }
  }
}

print_guess_output <- function(guess, answer, number_of_letters) {
  answer_vector <- str_split(answer, "")[[1]]
  guess_vector <- str_split(guess, "")[[1]]
  
  result_vector <- rep("", number_of_letters)
  for (i in 1:number_of_letters) {
    if (guess_vector[i] == answer_vector[i]) {
      result_vector[i] <- paste0("{", toupper(guess_vector[i]), "}")
    } else if (guess_vector[i] %in% answer_vector) {
      result_vector[i] <- paste0(" ", toupper(guess_vector[i]), "*")
    } else {
      result_vector[i] <- paste0(" ", guess_vector[i], " ")
    }
  }
  print(result_vector, quote = F)
}

check_if_done <- function(guess, answer, number_of_letters) {
  answer_vector <- str_split(answer, "")[[1]]
  guess_vector <- str_split(guess, "")[[1]]
  result_vector <- rep(0, number_of_letters)
  for (i in 1:number_of_letters) {
    if (guess_vector[i] == answer_vector[i]) {
      result_vector[i] <- 1
    }
  }
  
  if (sum(result_vector) == number_of_letters) {
    return(T)
  } else {
    return(F)
  }
}
