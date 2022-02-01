all_words <- read.table("https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt", sep = "\t")
colnames(all_words) <- "word"
write.csv(all_words, "all_words.csv", row.names = F)
all_words <- read.csv("all_words.csv")
fives <- all_words[nchar(all_words$word) == 5, ]
write.csv(fives, "fives.csv", row.names = F)


fours <- all_words[nchar(all_words$word) == 4, ]
write.csv(fours, "fours.csv", row.names = F)

threes <- all_words[nchar(all_words$word) == 3, ]
write.csv(threes, "threes.csv", row.names = F)


sixes <- all_words[nchar(all_words$word) == 6, ]
write.csv(sixes, "sixes.csv", row.names = F)

sevens <- all_words[nchar(all_words$word) == 7, ]
write.csv(sevens, "sevens.csv", row.names = F)
