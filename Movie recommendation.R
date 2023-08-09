library(arules)
tr_data <- read.transactions("data_movielens_hw1.csv", format = "single",
                             sep = ",", cols = c("userId", "title"), header = TRUE)
inspect(tr_data[1:3])
summary(tr_data)
freq <- itemFrequency(tr_data)
head(freq, n = 10)
itemFrequencyPlot(tr_data, topN = 10)
rules <- apriori(tr_data, parameter = list(support = 0.02, confidence = 0.7, minlen = 3))
inspect(rules[1:3])
rules <- sort(rules, by = "support")
inspect(rules)
qual <- quality(rules) # extract quality measures
# compute p(A) and p(B)
pA <- qual$coverage
pB <- qual$confidence/qual$lift
# compute lift upper and lower bounds
U <- apply(cbind(1/pA, 1/pB), 1, min)
L <- apply(cbind(1/pA + 1/pB - 1/(pA*pB), 0.02/(pA*pB), 0.8/pB, 0), 1, max)
std_lift <- (qual$lift - L)/(U - L) # standardized lift
rules_df = data.frame(rule = labels(rules),lift = qual$lift,qual$support,qual$confidence, L, U, std_lift)
rules1_df<- rules_df[(sort(rules_df$std_lift, decreasing = TRUE)),]
rules_df
