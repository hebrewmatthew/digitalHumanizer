# This script uses various wordcloud packages to create clouds of words 
# whose midpoint co-occurs with annotations related to conversational 
# humor, in terms of various discourse # related aspects of humor, 
# such as the form, process, cues (indicators) and reactions. 
# smiles are also of interest


install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("wordcloud2")


library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library("wordcloud2")


# Set working directory to source file location

# setwd('C:/Users/jacob/Downloads/digitalHumanities-main/')

dataContexts = read.table('ADWords.txt', quote = "", head=TRUE, fill = TRUE, sep = "\t")
dataContextsMD = read.table('MDWords.txt', quote = "", head=TRUE, fill = TRUE, sep = "\t")

# print data for male speaker AD

print(dataContexts)

# print data for female speaker MD

print(dataContextsMD)


# AD non humor contexts (bonafide communication)

text2 = data.frame(dataContexts$word[dataContexts$reactions == ''])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD humor, eliciting a positive reaction

text2 = data.frame(dataContexts$word[dataContexts$reactions == 'positive'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# AD humor targeting self

text2 = data.frame(dataContexts$word[dataContexts$target == 'L'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# Ad humor Targeting Addressee

text2 = data.frame(dataContexts$word[dataContexts$target == 'A'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# AD no smile

text2 = data.frame(dataContexts$word[dataContexts$smile == 'S0'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# AD Smile intensity S1

text2 = data.frame(dataContexts$word[dataContexts$smile == 'S1'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD Smile intensity S2

text2 = data.frame(dataContexts$word[dataContexts$smile == 'S2'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD Smile intensity S3

text2 = data.frame(dataContexts$word[dataContexts$smile == 'S3'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD Smile intensity S4

text2 = data.frame(dataContexts$word[dataContexts$smile == 'S4'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD no smile

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S0'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))



# MD smiling indicator during humor

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S1'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD smile level 2

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S2'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD smile level 3

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S3'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD smile level 4
text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S4'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# AD Prosody during humor

text2 = data.frame(dataContexts$word[dataContexts$indicators == 'prosodie'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# AD's humorous reported speech

text2 = data.frame(dataContexts$word[dataContexts$processes == 'discours rapporté'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD's fictionnalisation humor processes 

text2 = data.frame(dataContexts$word[dataContexts$processes == 'fictionnalisation'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# ADs autodérision forms of Humor

text2 = data.frame(dataContexts$word[dataContexts$forms == 'autodérision'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD's mockery humor

text2 = data.frame(dataContexts$word[dataContexts$forms == 'moquerie'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))



# MD non humor cloud
text2 = data.frame(dataContextsMD$word[dataContextsMD$indicators == ''])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# MD humor cloud positive reactions

text2 = data.frame(dataContextsMD$word[dataContextsMD$reactions == 'positive'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

print(dataContextsMD)

# MD Prosody during humor

text2 = data.frame(dataContextsMD$word[dataContextsMD$indicators == 'prosodie'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


# MD laughing indicator during humor

text2 = data.frame(dataContextsMD$word[dataContextsMD$indicators == 'prosodie'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD smiling S0 (no smiling) during humor

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S0'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD Smile intensity S1

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S1'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# AD Smile intensity S2

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S2'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD Smile intensity S3

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S3'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

# MD Smile intensity S4

text2 = data.frame(dataContextsMD$word[dataContextsMD$smile == 'S4'])
docs <- Corpus(VectorSource(text2))
docs <- tm_map(docs, removePunctuation)
dtm <- TermDocumentMatrix(docs)
matrix <- as.matrix(dtm)
words <- sort(rowSums(matrix),decreasing=TRUE)
df <- data.frame(word = names(words),freq=words)
set.seed(1234)
wordcloud(words = df$word, freq = df$freq, min.freq = 1, max.words=200, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))


