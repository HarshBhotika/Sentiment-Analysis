#Import the EVE file here
data <- read.csv(file.choose(),header = TRUE)
View(data)
attach(data)
names(data)
plot(Strong,Positiv)
cor(Positiv,Strong)
cor.test(Positiv,Passive)
cor(data[10:192])

# Import the Normalized data set file here
data1 <- read.csv(file.choose(),header = TRUE)
names(data1)
cor(data1[10:40])
d <- data.frame(data1[10:40])
View(d)
model <- lm(Positiv ~ ., data = d)
summary(model)

# plot the depenent with the indep variables
plot(Strong,Positiv)
abline(lm(Strong ~ Positiv))
