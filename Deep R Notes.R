# DEEP R

## NUMERIC VECTORS (13 - 39)

rep(1, 5) # 1 1 1 1 1
rep(c(1,2,3), 4) # 1 2 3 1 2 3 1 2 3 1 2 3
rep(c(1, NA_real_, 4, Inf, 7), 2) # 1 NA 4 Inf 7 1 NA 4 Inf 7
# NA_real_ - numeric NA
# NA_character_ - character NA
# NA_integer_ - integer NA
rep(c(1,2,3), c(2,1,4)) # 1 1 2 3 3 3 3
rep(c(1,2,3), c(2,2,2)) # 1 1 2 2 3 3 
rep(c(1,2,3), times=2) # 1 2 3 1 2 3 
rep(c(1,2,3), length.out= 5) # 1 2 3 1 2
rep(c(1,2,3), each= 2) # 1 1 2 2 3 3 
rep(c(1,2,3), length.out= 7, each= 3) # 1 1 1 2 2 2 3
rep(c(1,2,3), 0) # numeric (0)

seq(1, 15, 2) # 1 3 5 7 9 11 13 15
seq(from= 1, to= 15, by= 2) # 1 3 5 7 9 11 13 15
seq(1, 0, length.out= 5) # 1.00 0.75 0.50 0.25 0.00
seq(1, 0, length.out= 8) # 1.0000000 0.8571429 0.7142857 0.5714286 0.4285714 0.2857143 0.1428571 0.0000000
seq(length.out= 5) # 1 2 3 4 5; default "from" and "by" is 1

runif(7) # uniform U(0,1)
rnorm(7) # normal N(0,1)
sample(1:10, 20, replace= T) # 20 with replacement (allow repetitions)
sample(1.00:10.00, 5, replace= F) # 5 without replacement (do not repeat); integer
sample(0:1, size= 20, replace= T, prob = c(0.9, 0.1)) # 0.9 that the number is going to be 0
set.seed(12345) # seeds are specified with integers
sample(1:10, 5, replace= F)
sample(1:10, 5, replace= F)
sample(1:10, 5, replace= T)
sample(1:10, 5, replace= T)
sample(1:10, 10, replace= T)

### Reading data with scan()
scan(paste0("https://github.com/gagolews/teaching-data/raw/",
            "master/marek/euraud-20200101-20200630.csv"), comment.char = "#")
