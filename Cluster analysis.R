
setwd("C:/Users/ANIL PARVATHANENI/Desktop/MKTA")

#install.packages("readxl")
library(readxl)
data = read_excel("Segmentation Exercise Data.xlsx", 2)

any(is.na(data))

head(data)

data1 <- data[ ,-c(1:9) ]
head(data1)

#install.packages('proxy') 
library('proxy')

# Dissimilarity matrix
d <- dist(data1, method = "cosine")

# Hierarchical clustering using Complete Linkage
hc <- hclust(d, method = "complete" )

# Plot the obtained dendrogram
plot(hc1, cex = 0.6, hang = -1)

cc <- cutree(hc, 3)
cc

c_data=cbind(data[, 1:9],cc)
head(clt_data)

c_data_1=subset(c_data,c_data$cc==1)
c_data_2=subset(c_data,c_data$cc==2)
c_data_3=subset(c_data,c_data$cc==3)

mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_1 <- sapply(c_data_1, mode)
mode_2 <- sapply(c_data_2, mode)
mode_3 <- sapply(c_data_3, mode)

mode_1
mode_2
mode_3

