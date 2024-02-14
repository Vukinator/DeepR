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
            "master/marek/euraud-20200101-20200630.csv"), comment.char = "#") # from URL
scan("~/Svaštara/Osnove proračuna/yield-curve-rates-1990-2021_treasury.csv", comment.char= "#") # ~ is for home directory
getwd() # C:/Users/Studenti/Downloads
setwd() # Platform specific variables
help(".Platform")# Specific info
help("scan") # Exercise

plot(scan(paste0("https://github.com/gagolews/teaching-data/raw/",
                 "master/marek/euraud-20200101-20200630.csv"), comment.char = "#"), xlab= "Day", ylab= "EUR/AUD")

### Vectorised mathematical functions
#### abs () and sqrt()
abs(c(2,1,0,-6, NA_real_, Inf)) #2   1   0   6  NA Inf
sqrt(c(2,23456,4,23,67,13, NA_real_, Inf)) # 1.414214 153.153518 2.000000 4.795832 8.185353 3.605551 NA Inf
print(sqrt(12974), digits= 18) # 113.903467901552503

#### Rounding

floor(c(7.2348, 9.1032841897, 8924.13598)) # 7 9 8924; zaokružuje na najbliži broj
ceiling(c(7.2348, 9.1032841897, 8924.13598)) # 8 10 8925; ide na veći broj
trunc(c(7.2348, 9.1032841897, 8924.13598)) # 7 9 8924; ide na manji broj
round(c(7.2348, 9.1032841897, 8924.13598)) # 7  9 8924; zaokružuje na broj, bez decimala

#### Natural exponential function and logarithm
exp(10) # 2.718
log(12)
log(12, base = exp(1)) # same as log(12); str. 25 za pravila logaritmiranja

x= seq(0, 10, length.out= 1001)
par(mfrow= c(1, 2))
par(mar= c(1,1,1,1)) # podešavanje margina; inače piše margins too large ili margins too small
plot(x, exp(x), type= "l", main= "Exponential")
plot(x, exp(x), type= "l", log= "y", main= "Linear") # kul
#### Vježba: prikaži svaku distribuciju od spomenutih na str 25-27
par(mfrow= c(1,1))
hist(runif(10000, 0, 1), probability = T)
x= seq(0,1, length.out= 101)
lines(x, dunif(x, 0, 1), lwd= 5) # linije isto trebaju x i y podatke da bi ih nacrtali

hist(rnorm(10000, 0, 1), probability = T)
x= seq(-4, 4, length.out= 101)
lines(x, dnorm(x, 0, 1), lwd= 2) # # linije isto trebaju x i y podatke da bi ih nacrtali

hist(rexp(1000, rate = 0.7), probability= T)
x= seq(0,8, lenght.out= 101)
lines(x, dexp(x, rate= 0.7) lwd= 2) # ovo trebaš napraviti naknadno

hist(rgamma(1000, shape = 1)) # izlgeda ko eksponencijalna; ovisno kolko stavimo shape
x= 
