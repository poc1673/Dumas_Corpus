library(ggplot2)
words <- read.table(file = "res.txt",sep = "")
words$V2 <- as.character(words$V2)
words$V1 <- as.numeric(words$V1)
words <- words[order(-words$V1),]

bigger_words <- words[which(nchar(words$V2)>5),] 
ggplot(data = head(words,200)) + geom_histogram( aes(x = V1),fill="#003300", bins = 75)  +
                                 ggtitle("Distribution of Top 200 Words in Dumas")+xlab("Word Count")+ylab("")+ theme_minimal()

ggplot(data = head(bigger_words,50)) + geom_bar(aes(x = reorder(x = V2,V1), y = V1),fill="#003300",stat="identity") +
                                       coord_flip( ) + xlab("")+ylab("")+
                                       ggtitle("Frequencies of Top 50 Words in Dumas")+
                                       theme_minimal()
