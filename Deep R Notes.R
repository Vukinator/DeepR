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

hist(rexp(1000, rate = 0.7), probability= T) # ako je probability= T, tada je y os "Density"
x= seq(0,8, length.out= 101)
lines(x, dexp(x), lwd= 2)

hist(rgamma(1000, shape = 1)) # izlgeda ko eksponencijalna; ovisno kolko stavimo shape
x= seq(0, 8, length.out= 101)
lines(x, dgamma(x, shape = 1), lwd= 2) # jako čudna linija; skroz je na dnu

hist(rbeta(100, shape1 = 1, shape2= 1, ncp= 9))
x= seq(0,1, length.out= 100)
lines(x, dbeta(x, shape1= 1, shape2= 1, ncp= 9), lwd= 2) # kul; mijenjaj ih i gledaj kakvih sve oblika ima

hist(rlnorm(1000, meanlog = 1, sdlog= 1))
x= seq(0, 60, length.out= 101)
lines(x, dlnorm(x, meanlog=1, sdlog= 1), lwd= 2)# opet je linija skroz dolje

hist(rt(1000, df= 999, ncp= 0))
x= seq(-5, 5, length.out= 1000)
lines(x, dt(x, df= 999, ncp= 0 ), lwd= 2) # linija treba pratiti distribuciju, a tvoja ne prati

### Arithmetic operations
pmin(c(1,2,3,4), c(2,3,4,5)) # 2 2 3 4; pmin i pmax vraćaju paralelni minimum i maksimum odgovarajućeg elementi ulaznih vektora.
x= c(11,2,3,4); y= c(2,3,4,5)
pmin(x,y)

runif(3, c(10, 20, 30), c(11,22,33)) # Neke funkcije mogu biti vrlo duboko vektorizirane, tj. s obzirom na više argumenata; generates three random numbers uniformly distributed over the intervals (10, 11), (20, 22), and (30, 33), respectively.

#### Accumulating

cumsum(0:8) # kumulativno zbrajanje svih idućih elemenata vektora
cumprod(0:8) # 0 0 0 0 0 0 0 0 0; ako nešto stalno množimo s 0, onda je rezultat 0
cumprod(1:8) # 1 2 6 24 120 720 5040 40320 # kumulativni umnožak
prod(1:8) # 40320
sum # 36

diff(c(2,4,1,5,67,35)) # 2 -3 4 62 -32; gleda razliku između svakog prethodnog i idućeg elementa

aud= scan(paste0("https://github.com/gagolews/teaching-data/raw/",
                 "master/marek/euraud-20200101-20200630.csv"), comment.char = "#")

aud.all= na.omit(aud)
plot(diff(aud), type = "s", ylab= "Daily EUR/AUD Change") # postoji prazni prostor zato kaj si koristil "aud" u kojem ima NA, a NA je taj prazan prostor
plot(diff(aud.all), type= "l", ylab= "Daily EUR/AUD Change")
abline(h= 0, lty= "dotted") # h= visina na kojoj bude horizontalna linija

#### Exercises
x= seq(-1, 1, length.out= 20)
plot(x, asin(x),
     type= "l",
     ylim= c(-pi/2, pi),
     ylab= "asin(x), acos(x)")
lines(x, acos(x), col= "red", lty= "dashed")
legend("topright", c("asin(x)", "acos(x)"),
       lty= c("solid", "dashed"), col= c("black", "red"), bg= "white")

plot(x, abs(asin(x^2)),
     type= "l",
     ylab= "|sin(x^2)|")

plot(x, abs(asin(abs(x))),
     type= "l",
     ylab= "|sin|x||")

plot(x, sqrt(floor(x)),
     type= "l",
     ylab= "√⌊𝑥⌋")

plot(x, 1/1-exp(-x),
     ylab= "1/(1 + 𝑒−𝑥)",
     type= "l") # predivna funkcija

##### Exercise 2.12.

x= 1:1000000
y= (-1)^(x+1)/(2*x-1)
y= 4*y
sum(y) # hehe dobro je

plot(x, y,
     type= "l") # bezveze graf

x= rnorm(100)
y= 2*x+10+rnorm(100, 0, 0.5)

cor(x,y) # 0.96

xi= sum(x- (1/100 * y))
yi= sum(y- (1/100 * y))

r= (xi*yi)/ (sqrt(xi^2)* sqrt(yi^2)) # dobili smo razliku

##### Exercise 2.14.
# install.packages("zoo")
library(zoo)
rollmean(aud.all, k= 2)
plot(rollmean(aud.all, k= 5), type= "l", lwd= 2) # napravi grafove za više k; možeš plot(), pa lines() za svaku liniju, a možeš i matplot() da budeš učinkovitiji
lines(rollmean(aud.all, k= 3, type= "l", color= "red", lwd= 2))
lines(rollmean(aud.all, k= 2, type= "l", color= "blue", lwd= 2))
lines(rollmean(aud.all, k= 11, type= "l", color="green", lwd= 2))
## LOGICAL VECTORS

rep(c(T, F), each= 2)
sample(c(T, F), 10, replace= T, prob= c(0.8, 0.2))

x= 1<3
x # TRUE
x= c(10,23,4012,2945,-124, 12, 1255, -9571, -18275, -195813, 125)
(x>10) & (x<124) # FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE

### Aggregating with all(), any() and sum()

x= runif(1000) # niti jednom nisi postavio set.seed()
all(x<2) # TRUE
all(x<.2) # FALSE
any(x<2) # TRUE
sum(x) # 502.235

x= 1:3
all(x == 1:3) # TRUE
all(x==T) # FALSE
all(x==F) # FALSE
any(x== c(T, F)) # TRUE
z= 1:3
z == 1:3 # TRUE TRUE TRUE
all(z==1:3) # TRUE
any(z==1:3) # TRUE
z= sin((0:10)*pi)
all(abs(z-0.0)< 1e-8) # TRUE

##### Exercise 3.1. (Pojednostavi izraze)

!(b>a & b<c); !b>a | !b<c; b<=a | b>=c # točno
!(a>=b & b>=c & a>=c); !a>=b | !b>=c | !a>=c; a<b | b<c | a<c # točno
a>b & a<c | a<c & a>d; a>b&(a<c&a>d); a>d # ovo treba dodatno proučiti
a>b | a<=b # to je to
a<=b & a>c | a>b & a<=c; # ne znam kaj bi tu trebal napraviti
a<=b & (a>c | a>b) & a<=c # ne znam
!all(a>b & b<c); any(a<=b | b>=c)# ovo točno

#### Choosing elements wit ifelse()

z= rnorm(6)
ifelse(z >= 0, z, -z) # to je kao abs()
x= rnorm(6)
y= rnorm(6)
ifelse(x>=y, x, y) # to je kao pmax()
ifelse(x>0, x^2, 0) # kvadrirani pozitivni x elementi i 0 ako x nije veće od 0
ifelse(z>=0, log(z), NA_real_)
log(ifelse(z>=0, z, NA_real_)) # isti rezultat kao i u 220 retku

ifelse(x>=y,
       ifelse(z>=x, z, x),
       ifelse(z>=y, z, y)
) # primjer kako ugnježđeni ifelse()može biti kao pmax

##### Exercise 3.3.
n= 100000
z= ifelse(runif(n) <= 0.2, rnorm(n, -2, 0.5), rnorm(n, 3, 1)) # umjesto onih koji budu <0.2 ubaci broj iz distribucije čija je aritmetička sredina -2, a sd joj iznosi 0.5; ako nisu manji od 0.2, onda ubaci broj iz normalne distribucije čija je aritmetička sredina 3, a sd= 1
hist(z, breaks= 50,probability= T, main= "z", col= "white") # breaks označuje interval x-osi koji bude prikazan na grafu (50+50+50 itd)

n= 10000
p= ifelse(runif(n)<= 2/3, rnorm(n, 100, 16), rnorm(n, 116, 8))
hist(p, breaks= 50, probability = T, main="p", col= "white") # breaks nam služi da odaberemo koliko broj 

n= 10000
u= ifelse(runif(n)<=0.3, rnorm(n, -10, 2), rnorm(n, 0, 2))
i=ifelse(u>=0.7, rnorm(n, 10, 2), u)
hist(i, breaks= 50, probability= T, col= "white") #hehehe odlično je ovo

w= runif(n)<= 0.2 # ako w ima N(0,1), onda je skalirano pomaknuto 𝜎𝑋 + 𝜇 raspoređeno N(𝜇, 𝜎)
z= rnorm(n, 0, 1)* ifelse(w, 0.5, 1) + ifelse(w, -2, 3)
hist(z, breaks= 50, probability = T, col= "white")

p= runif(10000)
y= rep(c(T, F), length.out= 10000, prob= c(0.6, 0.4))
l= ifelse(y== T, -log(p), -log(1-p))
loss= sum((-1/length(p))*((sum(l*log(p)))+(1-l)*log(1-p)))
loss # 11279.13

## LISTS AND ATTRIBUTES
### Type hierarchy and conversion

as.numeric(c(T, F, NA, T, NA, F)) # eksplicitna konverzija;1  0 NA  1 NA  0
as.logical(c(-2,-1,0,0,0,0,1,2,3,4,535,15815)) # explicit conversion;TRUE  TRUE FALSE FALSE FALSE FALSE TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

a= c(NA, 10, F, T) + 10 # implicitna konverzija; NA 20 10 11
# T + 10= 11 i F + 10= 10; zato što je T= 1, a F= 0

#Exercise 4.1.
y= sample(c(T, F), replace= T, size= 1000, prob= c(0.5, 0.5))
p= runif(1000)
loss= sum((-1/1000*(sum(y*log(p))+ (1-y)*log(1-p))))
loss# 492.471

sum(c(F, F, F, F, T, T, T, T, T, F, 0, 1)) # 6
cumsum(c(T, T, T, T, T, F, F, F, F, F)) # 1 2 3 4 5 5 5 5 5 5
cummin(c(T, T, T, T, T, F, F, F, F, F)) # gleda se zapravo vrijednost svakoga elementa;1 1 1 1 1 0 0 0 0 0
cumprod(c(T, T, T, T, T, 2, 3, 5)) # 1  1  1  1  1  2  6 30

list(1:3, 4, c(T, F, NA, T), "itd")
list(list(c(T, F, NA, T), letters), list(1:3))
str(list(list(c(T, F, NA, T, letters), list(1:3))))
c(1, "itd.", identity)
c(list(1),list(2), list(3)) # može i c() za više listi
rep(list(1:11, LETTERS), 2) # liste se mogu ponavljati s rep()

as.list(c(1, 2, 3)) # konverzija vektora u listu
unlist(list(1,2,3)) # konverzija liste u vektor
unlist(list(list(1,2), list(3, list(4:8)), "spam")) # konverzija listi u vektorske elemente
list(NULL, NULL, NULL, month.name)# kul
c(1, NA, 3, NULL, 5) # 1 NA  3  5; NULL nije isto što i NA; NULL se ponaša kao vektor nulte dužine (vidiš output)

### OBJECT ATTRIBUTES- atributi su sredstva pomoću kojih ubacujemo dodatne podatke u objekt

x_simple= 1:10
x= structure(
  x_simple, # objekt kojem će se dodijeliti atribute
  attribute1= "value1",
  attribute2= c(6, 100, 324)
) # oke, kul; ovo je zapravo mala bilježnica u kojoj možeš imenovati elemente (attribute1), a da se vektor x može koristiti za analizu; npr. attribute1="" može biti specifikacija prvog elementa u vektoru, attribute2="" može biti specifikacija drugog elementa, itd.
y= c(10, 20, NA, 40, NA, 30, NA, 50)
y.na.free= na.omit(NA)
mean(y.na.free)
attr(y.na.free, "na.action") #[1] 1 attr(,"class") [1] "omit"; "na.action" atribut pokazuje nam koji su elementi bili NA i što se s njima učinila

#### gregexpr
needle= "spam|durian" # pattern koji tražimo
haystack= c("spam, bacon and durian flavoured spam", "spammer")

patterns= gregexec(needle, haystack, perl= T) # needle (uzorak koji tražimo); haystack(varijabla u kojoj tražimo needle uzorak)
patterns # dobili smo podudaranje u prvom i drugom elementu needle vektora

#### Exercise 4.2.
euraud= structure(scan(paste0("https://github.com/gagolews/teaching-data/raw/master/marek/euraud-20200101-20200630.csv"),
                       comment.char= "#"), currency_from= "EUR", currency_to= "GBP")
eurgbp= structure(scan(paste0("https://raw.githubusercontent.com/gagolews/teaching-data/master/marek/eurgbp-20200101-20200630.csv"),
                       comment.char = "#"), currency_from= "EUR", currency_to= "GBP")
eurusd= structure(scan(paste0("https://raw.githubusercontent.com/gagolews/teaching-data/master/marek/eurusd-20200101-20200630.csv"), 
                       comment.char= "#"), currency_from= "EUR", currency_to= "USD")
eur.list= list(euraud, eurgbp, eurusd)
eur.list # točno; kul; uvijek probaj sa što manje koda napraviti što više moguće
# inače, liste se najčešće koriste kao spremišta za ostale R objekte; npr. za spremanje rezultata istraživanja i tome slično
#### Exercise 4.3.

i= 1:10
i= structure(
  i,
  comment= "aaa"
) # da, u pravu je


x= structure(
  c(12,12412,135124),
  names=c("narezak", "kobasa", "celer")
)
# narezak  kobasa   celer 
#   12      12412   135124

structure(x, additional_attribute= 1:10)
attr(x, "names") # "narezak" "kobasa"  "celer"
c(a= 2, b= 3) # može i tak da ih se samo imenuje u vektoru umjesto korištenja names()
c(a= 2, b= 3) # a b 
# 2 3 
list(a= 1, b= 2) # može i tak da ih se samo imenuje u listi
u= c(a= c(x= 1, y= 2), b= 3, c= c(z=4)) # prekul
attr(u, "names") # "a.x" "a.y" "b"   "c.z"
quantile(runif(100)) # puno funkcija vraća vektore; quantile je samo jedan primjer
#   0%          25%          50%          75%         100% 
#  0.0008266114 0.2542507872 0.4895991031 0.7429493846 0.9997708010 
hist(runif(100), plot= FALSE)# primjer da i hist() može vratiti vektor, a ne samo graf #  breaks [1] 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
# counts [1] 12 11 12  7  5 12 10  8 11 12
# density [1] 1.2 1.1 1.2 0.7 0.5 1.2 1.0 0.8 1.1 1.2
# mids [1] 0.05 0.15 0.25 0.35 0.45 0.55 0.65 0.75 0.85 0.95
# xname [1] "runif(100)"
# equidist [1] TRUE
# attr(,"class") [1] "histogram"
options() # uh brate, puno je vektora
capabilities() # uh brate, jako puno vektora

df= head(iris) # znaš tu funkciju; prikazuje prvih šest redova
typeof(df) # "list"
unclass(df) # Sepal.Length
#  [1] 5.1 4.9 4.7 4.6 5.0 5.4
# Sepal.Width
#  [1] 3.5 3.0 3.2 3.1 3.6 3.9
# Petal.Length
# [1] 1.4 1.4 1.3 1.5 1.4 1.7
# Petal.Width [1] 0.2 0.2 0.2 0.2 0.2 0.4
# Species[1] setosa setosa setosa setosa setosa setosa 
#Levels: setosa versicolor virginica
# attr(,"row.names") [1] 1 2 3 4 5 6

x= structure(c("neki", "objekt"), names= c("X", "Y"),
             atribut1= "vrijednost1",
             atribut2= "vrijednost2",
             atribut3= "vrijednost3")
# ILI
x= structure(c(X="neki", Y="objekt"),
             atribut1= "vrijednost1",
             atribut2= "vrijednost2",
             atribut3= "vrijednost3")
attr(x, "atribut1") # "vrijednost1"; tražimo specifični atribut
attributes(x) # names [1] "X" "Y"
# atribut1 [1] "vrijednost1"
# atribut2 [1] "vrijednost2"
# atribut3 [1] "vrijednost3"
structure(x, 
          atribut1= NULL,
          atribut4= "dodano",
          atribut3= "modificirano") # fora output, ali ga je puno
unname(x) # "neki" više nije X, a "objekt" više nije Y 

#### Exercises 4.5
as.numeric(as.character(x))
as.numeric(c(0,13,52,345,23))

x= cummin((rep(c(T, F), length.out= 812, prob= c(0.4, 0.6))))
cummin(!x)
cummax(x)
cummax(!x)
cumsum(x)
cumsum(!x)
cumprod(x)
cumprod(!x)

x= quantile(runif(100))
2*mean(x)
round(x,2)
x== NULL # logical(0)

as.character(list(list(1, 2), list(3, list(4)), 5))
as.character(unlist(list(list(1,2), list(3, list(4)), 5)))
unlist(list(list(1,2), sd))


### VECTOR INDEXING
#### head() and tail()

x= 1:10
head(x) # 1 2 3 4 5 6; prvih 6
head(x, 3) # 1 2 3; prva 3
head(x, -3) # 1 2 3 4 5 6 7;  ne iznose se zadnja tri
head(x, 100) # ispis prvih 100 elemenata (u ovom je slučaju ipak samo 10 elemenata u vektoru)
tail(x) # 5  6  7  8  9 10; zadnjih 6
tail(x,3) # 8  9 10; zadnjih 3
tail(x, -3) # izuzimanje prvi tri elementa, tj. prikazani su elementi od 4. do posljednjeg
tail(x, 1000)# ispis posljednjih 100 elemenata (u ovom je slučaju ipak samo 10 elemenata u vektoru)

#### Subsetting and extracting from vectors

x= seq(from= 10, to= 100, by= 10) # x= seq(10, 100, 10)
y= list(1, 11:12, 21:23)
x[1]
x[length(x)] # stoti element vektora x je 
x[c(1, length(x))] # 10 100
x[c(1,2,1,10, 3, 0, NA_real_, 1, 11)] # 10  20  10 100  30  NA  10  NA
x[1:3] # 10 20 30
y[2] # list; 1] 11 12
y[c(1,3)] #  [[1]] [1] 1 [[2]] [1] 21 22 23
y[[2]] # ekstrakcija elemenata drugoga elementa
y[[c(2, 2)]] # drugi element drugoga elementa liste

y[-1] # od prikazivanja smo izuzeli prvi element liste; ispisuju se samo drugi i treći elementi

#### Logical indexer
x[c(T, F, F, F, T, T, F, T, NA, T)] # 10  50  60  80  NA 100
c("one", "two", "three")[c(NA, T, F)] # NA "two"; za F ništa ne ispisuje, dok za NA u vektoru piše NA, a za NA u listi piše NUlL
list("one", "two", "three")[c(NA, T, F)] # NULL "two"; za F ništa ne ispisuje, dok za NA ispisuje NULL
which(c(NA, T, F, T, F, NA, T)) # 2 4 7; which() se koristi da se vidi koji su elementi TRUE
c("one", "two", "three")[which(c(NA, T, F))] # "two"; dakle, c(...) je varijabla koju smo subsettali s which(c(NA, T, F)) i rezultat je "two" zato što se s which() traže T, što znači da su svi ostali koji se ne ispišu zapravo F
x>60 # FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE TRUE  TRUE
x[x>60] # 70  80  90 100
x[x<mean(x)] # 10 20 30 40 50
x[x^2 > 777 | log10(x)<= 1.6] # 10  20  30  40  50  60  70  80  90 100
z= round(runif(length(x)), 2) # 0.10 0.73 0.28 0.60 0.36 0.41 0.56 0.10 0.54 0.88
x[z<0.5] # 10 30 50 60 80; zamisli da su elementi iz x i z poredani jedan ispod drugog- ovo indeksiranje prikazuje elemente vektora x čiji pripadajući elementi vektora z su manji od 0.5
x[c(T, F)] # 20  40  60  80 100
x[c(F, T)] # 10 30 50 70 90

##### Exercise 5.1.
ime= c("Štef", "Jura", "Lojzek", "Đuka", "Daša", "Ivek")
hrana= c("špek", "špek", "odojak", "štruklji", "čušpajz", "grah")
godina= c(1941, 1939, 1942, 1943, 1943, 1940)
godina[godina== 1941 | godina== 1942] # 1941 1942
hrana[hrana== "špek"] # "špek" "špek"
ime[hrana== "špek" & godina>1940] # Štefu je špek najdraže jelo i rođen je nakon 1940
mean(godina[hrana== "špek"]) # 1940; prosječna godina rođenja onih kojima je špek najdraža hrana
mean(1969-godina[hrana!= "špek"]) # Prosječni broj godina onih kojima špek 1969. godina nije bilo baš i najfinije jelo
x= structure(x, names= letters[1:10]) # a   b   c   d   e   f   g   h   i   j 
# 10  20  30  40  50  60  70  80  90 100
x[c("a", "f", "a", "g", "z")] # a    f    a    g <NA> 
# 10   60   10   70   NA 
x[1:3] # a b c
# 10 20 30
x[-(1:5)] # f g h i j
# 60  70  80  90 100; dakle, iz prikaza se izuzimaju svi elementi od prvog do petoga, uključujući i prvi i peti
x[x>70] # h i j
# 80 90 100

y= structure(y, names= c("prvi", "drugi", "treći"))
y # $prvi [1] 1
# $drugi [1] 11 12
# $treći [1] 21 22 23
y[c("prvi", "drugi")] # $prvi [1] 1
# $drugi [1] 11 12

structure(c(1,2,3), names= letters[1:3]) # a b c 
# 1 2 3 
ljudi= list(ime, hrana, godina)

#### Replacing elements
##### Modifying atomic vectors
x= 1:12
x[length(x)]= 42 # dvanaesti element vektora x je 42
x[c(T, F)]= c("a", "b", "c") # svaki drugi element mijenja se jednim od slova "a", "b", "c"
x # "a"  "2"  "b"  "4"  "c"  "6"  "a"  "8"  "b"  "10" "c"  "42"

##### Modifyng lists
y= list(a= 1, b= 1:2, c= 1:3)
y[[1]]= "c" # zamijenili smo prvi element prvoga elementa liste u "c"
y[[1]]= 100:110 # prvi element liste sada sadrži 11 elemenata od 100 do 110
y[1:3]= list(1, c("a", "b", "c"), c(T, F)) # promijenili smo sve elemente svih elemenata liste
y[1]= list(1:10)# zamijenili smo prvi element liste listom koja sadrži 11 elemenata brojeva od 1 do 10
y[-1]= 10:11 # zamijenili smo drugi element brojem 10 i treći element s 11, a prvi je element ostao isti
y # $a [1]  1  2  3  4  5  6  7  8  9 10
# $b [1] 10
# $c [1] 11

##### Exercise 5.5.
y
y[1]= c("a", "b", "c")
y[[1]]= c("a", "b", "c")
y[[1]]= list(c("a", "b", "c"))
y[1:3]= c("a", "b", "c")
y[1:3]= list(c("a", "b", "c"))
y[1:3]= "a"
y[1:3]= list("a")

y[c(1,2,1)]= c("a", "b", "c")
y= list(1,2,3,4)
y[1]= NULL # [[1]] [1] 2; kada se subsetta sa NULL, onda se taj element gubi iz vektora/liste
# [[2]] [1] 3
# [[3]] [1] 4
##### Inserting new elements
x= 1:5
x[length(x)+1]= 6 # 1 2 3 4 5 6
x[10]= 10 # 1  2  3  4  5 6 NA NA NA 10; nema veze koliko elemenata vektor ima; ukoliko postoji prazan prostor, popunit će se s NA sve do željenoga elementa vektora
x["a"]= 11  #                               a
# 1  2  3  4  5  6 NA NA NA 10 11
x["z"]= 12
x["b"]= 13

#### Functions related to indexing
##### Matching elements in another vector

c("špek", "luk", "gulaš") %in% c("špek", "gulaš") # TRUE FALSE  TRUE
x= structure(1:12, names= month.abb) # Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
# 1    2   3   4   5   6   7   8   9  10  11  12 
x[!names(x) %in% c("Jan", "May", "Sep", "Oct")] # Feb Mar Apr Jun Jul Aug Nov Dec
# 2   3   4   6   7   8   11  12
match(c("špek", "luk", "gulaš"), c("špek", "gulaš")) # 1 NA  2
match(month.abb, c("Nov", "Dec")) # NA NA NA NA NA NA NA NA NA NA  1  2; "Nov" ima podudaranja i prvi je element vektora (zato nije NA), a "Dec" je drugi element vektora (zato nije NA)
match(c("Nov", "Dec", "Jan"), month.abb) # 11 12  1; podudaraju se studeni, prosinac i siječanj
x= round(runif(10), 2)
match(T, x>0.8) # 10; samo je 10. element veći od 0.8

##### Assigning numbers into intervals
findInterval(c(0, 0.2, 0.25, 0.4, 0.66, 1), c(-Inf, 0.25, 0.5, 0.75, Inf)) # ovo su intervali, a u lijevome vektoru su brojevi koji se smještaju u određene intervale)) # 1 1 2 2 3 4

##### Exercise 5.9.
intervals= c(-Inf, 0.25, 0.5, 0.75, Inf)
as.logical(findInterval(x, (intervals[2:3]))) # FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE

##### Splitting vectors into subgroups

name= c("Štef", "Jura", "Ivek", "Daša", "Mara", "Joža")
food= c("špek", "kobase", "kobase", "bažulj", "sarma", "mahune")
split(name, food) # bažulj [1] "Daša"
# kobase [1] "Jura" "Ivek"
# mahune [1] "Joža"
# sarma [1] "Mara"
# špek [1] "Štef"; uvijek vraća listu
# split uzima bilo koji output i dijeli elemente jednoga vektora u odgovarajuće podgrupe

x= c(0, 0.2, 0.25, 0.4, 0.66, 1)
split(x, findInterval(x, c(-Inf, 0.25, 0.5, 0.75, Inf))) # dobivamo listu; $`1`[1] 0.0 0.2 `2` [1] 0.25 0.40 `3` [1] 0.66 `4`[1] 1
split(x, findInterval(x, seq(0, 1, by= 0.2))) # `1` [1] 0 `2` [1] 0.20 0.25 `3`[1] 0.4 `4`[1] 0.66 `6` [1] 1
split(x, findInterval(x, seq(0, 1, by= 0.10))) # `1` [1] 0 `3` [1] 0.20 0.25 `5` [1] 0.4 `7` [1] 0.66 `11` [1] 1
i = runif(10)
split(i, findInterval(i, seq(0, 1, by= 0.33)))

teeth= as.list(ToothGrowth)
str(teeth) # "len" i "dose" su numerički, a "supp" je faktor
teeth[["supp"]]= as.character(teeth[["supp"]])
print(teeth)
split(teeth[["len"]], teeth[c("supp", "dose")], sep= "_") # u interakciji su "supp" i "dose" (npr. OJ_2 znači da imamo 2 grama suplementa OJ)
split(teeth[[1]], teeth[c(2, 3)]) # isto interakcija; po defaultu je sep= "."

boxplot(split(teeth[["len"]], teeth[c("supp", "dose")], sep= "_"))# napravili smo boxplot koji nam pokazuje podatke za svaku interakciju

##### Ordering elements
x= c(46,23452,352,36,24,235)
o= order(x) # 5 4 1 6 3 2; znači, ide od najmanjeg prema najvećem i ispisuje redni broj elementa
x[o] # 24    36    46   235   352 23452; ovo je odlično

x= c("b", "a", "abs", "bass", "aaargh", "aargh", "aaaargh")
o= order(x)
x[o] # "a" "aaaargh" "aaargh" "aargh" "abs" "b" "bass"   
x[order(x, decreasing= T)] # "bass" "b" "abs" "aargh" "aaargh"  "aaaargh" "a"

##### Exercise 5.11.
x= runif(10)
is.unsorted(x) # TRUE
sort(x, decreasing= T)
sort(diff(x), decreasing= T)
x= seq(10, 60, by= 10)
y1= c("a", "b", "a", "a", "b", "b")
y2= c("w", "w", "v", "u", "u", "v")
x[order(y1)] # 10 30 40 20 50 60;poredali smo elemente iz "x" prema abecednom redu elemenata iz "y1" varijable
x[order(y2)] # 40 50 30 60 10 20; poredali smo elemente iz "x" prema uzlaznom normalnom redoslijedu elemenata iz "y2" varijable
x[order(y1, y2)] # 40 30 10 50 60 20; isto ko prvi slučaj, ali se sada u obzir uzimaju dva vektora (jedina je razlika što ovdje nemamo decreasing = T)
x[order(y2, y1)] # 40 50 30 60 10 20; isto ko drugi slučaj

##### Identifying duplicates
x= sample(1:5, size= 10, replace= T)
duplicated(x) # FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE

##### Exercise 5.13.
match(x, unique(x)) # pokazuje nam koji su elementi u vektoru isti

##### Exercise 5.14.; na ovo se moraš vratiti i riješiti- fakat ne kužim
x= list(a= 1, b= 2)
y= list(c= 3, a= 4)
z= union(x, y); # ovo i dalje nije točno zato kaj dobivaš 4 elementa, a u rješenju piše da su samo tri elementa liste
str(z)

#### Counting index occurences
x= c(2,4,6,2,2,2,3,6,6,3)
tabulate(x) # 0 4 2 1 0 3; 0 jedinica, 4 dvojke, 2 trojke...;tabulate() da bismo vidjeli koliko se puta neki broj pojavljuje
##### Exercise 5.15.; na ovo se moraš vratiti i riješiti
y= c("a", "b", "a", "c", "a", "d", "e", "e", "g", "g", "c", "c", "g")
result=table(y) # da, ali treba koristiti tabulate()


#### Preserving and losing attributes
x= structure(1:4, names=c("a", "b", "c", "d"), atribut1= "da")
c(x) # c() smo iskoristili da bi se izbacilo sve atribute koji su dodani vektoru
unname(x)# unname() smo iskoristili da bismo maknuli names=c("a","b","c","d")
as.vector(x) # s as.vector() smo izbacili sve atribute ako je x prije bio definiran kao vektor
x[1] # a 1
x[[1]] # [1] 1

y= x
y[]= c("u", "v")
y #  a   b   c   d
# "u" "v" "u" "v"
# attr(,"atribut1")
# [1] "da"
y= structure(c(1, 10), names= c("f", "g"), atribut1= "ravnoduško", atribut2= "iznenađenko")
y*x # x je duži od y; pomnožilo se 1*1= 1, 2*10= 20, 3*1= 3, 4*10= 40)
y[c("h", "i")]= c(100, 1000) # dodali smo još nove elemente da bi bilo iste dužine kao i x
y*x # sad su iste dužine 1*1= 1, 2*10= 20, 3*100= 300, 4*1000= 4000

#### Exercises

# Exercise 5.17

y= list(1,2,3)
y[c(length(y)+1, length(y)+1, length(y)+1)]= list(1,2,3)
y

x[x>0]
x[which(x>0)] # gornji slučaj je manje tipkanja

x= 1:3
x[5:n] # imamo NA sve do kraja, makar vektor ima samo 3 elementa
x= sample(5:20, size= 30, replace= T)
x[order(x, decreasing= T)][1:5] # zadatak je bio pronaći prvih 5 najvećih elemenata

x= sample(1:8, 20, replace= T)
mean(x, trim= T)
quant=quantile(x)
mean(x, trim= 0.25) # 'trim' must be numeric of length one
# uglavnom, biramo neki broj za trim i to je to

x= sample(1:60, size= 40)
y= sample(1:50, size= 40)
cor(x, y, method= "spearman") # -0.1596623
cor(x, y, method= "pearson") # -0.1565892
cor(x, y, method= "kendall") # -0.1205128

euraud= structure(scan(paste0("https://github.com/gagolews/teaching-data/raw/master/marek/euraud-20200101-20200630.csv"),
                       comment.char= "#"), currency_from= "EUR", currency_to= "GBP")
?approx
?spline


n= sample(1:10, size= 20, replace= T)
interval= c(-Inf, 3, 6, 9, Inf)
as.logical(findInterval(n, interval))

x= sample(1:10, size= 5) # 2 7 8 5 6
y= sample(1:10, size= 5) # 2 8 5 3 1

which(x== min(x)) # 1 ; 2 7 8 5 6
which(y== min(y)) # 5; 2 8 5 3 1
which.min(x) # 1
which.min(y) # 5
which.max(x) # 3
which.max(y) # 2
rev(x) # obrće redoslijed elemenata; 6 5 8 7 2
rev(y) # 1 3 5 8 2
which.min(x)
which(x== min(x))

x= c(letters[1:6])
y= c(3, 1, 2, 1, 1, 4)
x[which.min(y)] # "b"
x[which.max(y)] # "f"

x= sample(1:10, size= 10, replace= T)
as.logical(diff(x))
as.logical(order(x, decreasig= T))

## Character vectors

x= "Ja \"volim\" slaninu \n\\\"/"
x
nchar(x)
cat(x, sep= "\n") # Ja "volim" slaninu \"/

x= r"(spam\n\\\"maps)" # raw character constant!!!


cat(x, sep= "\n") # spam\n\\\"maps
x= r"(Moje ime je Dominik)" # "Moje ime je Dominik"
x= r'(Moje ime je Dominik)' # "Moje ime je Dominik"; nema razlike između '' i ""
x= r"(Moje\ime\je\Dominik)" # "Moje\\ime\\je\\Dominik"
x= r"(\Moje\ime\je\Dominik)" # \\Moje\\ime\\je\\Dominik
x= r"(Moje\n ime\n je\n Dominik)" # "Moje\\n ime\\n je\\n Dominik"
cat(x) # Moje\n ime\n je\n Dominik; vidiš da nema navodnika; cat() x prikazuje vektor bez navodnika
nchar(x) # 25
x= r"(Moje ime je Dominik)" # "Moje ime je Dominik"
cat(x) # Moje ime je Dominik
cat(x, sep= "\n") # Moje ime je Dominik

cat("abc\bd\tef\rg\nhij", sep= "\n")
cat("abc\behg") # abehg
cat("abc\bagj\tasg") # abagj	asg; \t je zapravo "Tab"
cat("adgjagn\nsdg\bsdhas") # adgjagn
# sdsdhas

#### Many strings, one object

x= c(rep("špek", 3), "čvarki", NA_character_, "paradajz") # "špek" "špek" "špek" "čvarki" NA  "paradajz"
length(x) # 6; broj elemenata vektora
nchar(x) # 4  4  4  6 NA  8; broj znakova svakoga elementa u vektoru

#### Concatenating character vectors

paste(c("a", "b", "c"), c("a", "b", "c")) # "a a" "b b" "c c"; po defaultu je sep=" " tj. razmak
paste(c("a", "b", "c"), c("1", "2", "3"), sep= "x") # ax1" "bx2" "cx3"
paste(c("a", "b", "c"), c("1", "2", "3"), sep= "") # "a1" "b2" "c3"

paste(c("a", "b", "c"), 1:6, c("!", "?")) # "a 1 !" "b 2 ?" "c 3 !" "a 4 ?" "b 5 !" "c 6 ?"
paste(c("a", "b", "c"), c("!" ,"?"), sep= 1:6) # invalid separator; dakle, 1:6 !sep
paste(c("a", "b", "c", "d"), 1:2, sep="") # "a1" "b2" "c1" "d2"

paste(c("a", "b", "c", "d"), collapse= ",") # "a,b,c,d"; collapse= služi da se između elemenata vektora stavi nešto, isto kao što sep= služi da bismo stavili nešto između znakova elementa
paste(c("a", "b", "c", "d"), 1:2, sep= "", collapse= "") # "a1b2c1d2"
paste(c("a", "b", NA_character_, "c"), "!", sep= "") # "a!"  "b!"  "NA!" "c!" 
paste(c("a", "b", "c"), NA_character_, "!", sep= "\n") # "a\nNA\n!" "b\nNA\n!" "c\nNA\n!"

#### Formatting objects

x= c(123456.789, -pi, NA) # 123456.789000 -3.141593 NA
format(x) 
cat(format(x, digits= 2, scientific= F, drop0trailing= T), sep= "\n") # 123456.8

sprintf("%s%s", "a", c("X", "Y", "Z")) # "%s%s" je format (C programski jezik)                                                                 # -3.1
sprintf("key= %s, value= %f", c("špek", "jaja"), c(100000, 0))

#### Reading text data from files
head(readLines("https://github.com/gagolews/teaching-data/raw/master/README.md")) # readLines se koristi kada imamo poveznicu

#### Pattern searching
c("jaja", "luk", "slanina", "slanina") == c("jaja", "slanina") # recycling rule; TRUE FALSE FALSE  TRUE
match(c("jaja", "luk", "slanina", "slanina"), c("luk")) # [1] NA  1 NA NA
c("jaja", "luk") %in% c("luk") # [1] FALSE  TRUE

#### Partial matching
startsWith(c("jajovo","jasna", "jajovod", "jajnik", "jajasto", "jajolik", "jajce"), "jaja") # FALSE FALSE FALSE FALSE TRUE FALSE FALSE; tj. jesu li prva 4 slova ovih riječi lijevo ista slova kao što su i u ovome desno
charmatch(c("jao", "jaj", "jej", "jaja", "jao"), c("jaja")) # NA  1 NA  1 NA; podudaraju li se slova lijevo s onima desno (važno: ona lijevo moraju biti ili kraća ili iste duljine ko i ona desno)
charmatch(c("jao", "jaj", "jej", "jaja", "jao"), c("jajasto", "jaooo", "jaolik")) # 0  1 NA  1  0; 0 znači da ima više podudaranja


#### Matching anywhere within a string
x= c("jaja", "špek", "kobase", "paradajz")
grepl("ja", x) # TRUE FALSE FALSE FALSE



##### Exercise 6.2.
grep(x,y, value= T)   #  "spam" "y spammite spam" "spam"  
grep(x, y, value= F)  # [1] 1 2 4; vidi se, razlika je u outputu

grepl("^spam", x, perl= T)  #  TRUE FALSE FALSE FALSE
# počinje li string sa "spam"
grepl("(?i)^spam|spam$", x, perl= T)  # TRUE  TRUE  TRUE FALSE
# počinje li string ili završava li sa "spam"

#### Locating pattern occurences
x= c("spam", "y spammite spam", "yummy SPAM", "sram")
regexpr("spam", x, fixed = T) # regexpr() nalazi prvo pojavljivanje uzorka u stringu, a zadnji string nema podudaranja uzorka i zato se označuje s -1
gregexpr("(?i)^spam|spam$", x, perl= T) # gregexpr() se koristi da se nađu sva podudaranja
gregexpr("(?i)spam\\p{L}*", x, perl= T)

#### Replacing pattern occurences

x= c("slanina", "luk", "čvarki", "kobase")
sub("slanina", "špek", x) # "špek" "luk" "čvarki" "kobase"
gsub("slanina", "špek", x) # "špek" "luk" "čvarki" "kobase"

#### Splitting strings into tokens

strsplit(c("slanina;špek;luk;čvarki"), ";", fixed= T) # "slanina" "špek" "luk" "čvarki"

#### Extracting substrings
substring("špek i luk", first= 2, last= 4) # "pek"
substring("nema do špeka brate", first= nchar("nema do ")) # "špeka brate"
substring("Nemoj ga brate molim te", first= nchar("Nemoj ga brate ")) # " molim te"
substring(c("jaja", "špek i paradajz"), first= nchar("ja"), last= c(nchar(6), nchar= 8)) # ""        "pek i p"
substring(c("jaja", "stari kaj ti govoriš, nema do špeka"), first= c(nchar(""), nchar("stari kaj ti govoriš, "))) # "jaja"           " nema do špeka"
x= "jaja, jaja, špek i kobase"
substring(x, first=nchar("jaja, "), last=nchar("jaja, jaja,")) = "paradajz" # u knjizi su to napravili s primjerom koji ima jednaki broj slova ko i "jaja", pa zato ne dobivaju rezultat koji ja dobivam
x

#### Ordering strings
sort(c("Pero", "Jura", "Blaž"), locale = "do_DO") # "Blaž" "Jura" "Pero"; sort() ovisi o Sys.getlocale(), tj. ovisno na kojem je jeziku kompjuterski language setting
install.packages("stringx")
suppressPackageStartupMessages(library("stringx"))
detach("package:stringx") # hehe


x##### Exercise 6.8.
nchar("ab\n\\\t\\\\\"") # 8
nchar(r"-{ab\n\\\t\\\\\"-)}-") # 16
paste(NA, 1:5, collapse= "") # "NA 1NA 2NA 3NA 4NA 5"

##### Character vectors si prošao krajnje mlako. Sram te može biti.














