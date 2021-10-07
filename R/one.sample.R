# Import data
my.data <- read.delim(file.choose())
as.data.frame(my.data)
# 2-tailed test
res.2 <- t.test(my.data$weight, mu = 225)
res.2
# 1-tailed test, left side
res.l <- t.test(my.data$weight, mu = 225, alternative = "less")
res.l
# 1-tailed test, right side
res.r <- t.test(my.data$weight, mu = 225, alternative = "greater")
res.r
# Plotting distribution graph
library(webr)
plot(res.2)
plot(res.l)
plot(res.r)
# S.D.
sd(my.data$weight)