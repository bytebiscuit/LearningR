download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)
kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45,0.55))

kobe$basket
sim_basket

boxplot(table(kobe$basket ~ sim_basket))