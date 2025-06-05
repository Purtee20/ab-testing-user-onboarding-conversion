# Inputs
converted <- c(2327, 2284)
total_users <- c(18942, 19086)

# Two-proportion z-test
prop.test(converted, total_users, alternative = "two.sided", correct = FALSE)
