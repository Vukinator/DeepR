### Tipovi kontrolnih struktura

a= 5; b= 7
if(a<b){
  print(paste(a, "je manje od", paste(b)))
} # "5 je manje od 7"

if(a<0){
  print(paste(a, "je negativan broj"))
} else{
  print(paste(a, "nije negativan broj"))
} # "5 nije negativan broj"

a= 9; b= 7
if(a<b){
  print(paste(a, "je manji od", paste(b)))
  print("Uvjet (a<b) je zadovoljen")
} else{
  print(paste(a, "je veći od", paste(b)))
  print("Uvjet (a<b) nije zadovoljen")
} # "9 je veći od 7"
# "Uvjet (a<b) nije zadovoljen"

x= -3
if(x<0){
  print(paste(x, "je negativan"))
} else{
  print(paste(x, "je pozitivan ili 0"))
} # "-3 je negativan"

x= 7
if(x<0){
  print(paste(x, "je negativan broj"))
} else{
  print(paste(x, "nije negativan broj"))
} # "7 nije negativan broj"

x= -3
if(x<0){
  print(paste(x, "je negativan broj"))
} else if(x==0){
  print(paste(x, "je 0"))
} else{
  print(paste(x, "je pozitivan broj"))
} # "-3 je negativan broj"

x= 0
if(x< 0){
  print(paste(x, "je negativan broj"))
} else if(x== 0){
  print(paste(x, "je 0"))
} else{
  print(paste(x, "je pozitivan broj"))
} # "0 je 0"

x= 3
if(x<0){
  print(paste(x, "je negativan broj"))
} else if(x== 0){
  print(paste(x, "je 0"))
} else{
  print(paste(x, "je pozitivan broj"))
} # "3 je pozitivan broj"

x= 6
if(x%%2==0){
  print(paste(x, "je djeljiv sa 2"))
} else{
  print(paste(x, "nije djeljiv sa 2"))
} # "6 je djeljiv sa 2"

ime= "Ivan"
keš= 100
if(ime== "Ivan"){
  print("Ivan je vaše ime")
} else{
  print("Ivan nije vaše ime. Nepoznati ste!")
} # "Ivan je vaše ime"

if(keš>120){
  print("Odlično kockate!")
} else{
  "Jao! Prestanite kockati!" # može i bez print()
} # "Jao! Prestanite kockati!"

# Može se nadodati koliko god uvjeta želimo.

ime= "Josip"
keš= 100

if(keš<= 100){
  "Osrednje kockate"
} else if (keš>100){
  "Dobri ste!"
} else{
  "Odličan ste kockar!"
} # "Osrednje kockate"


if(ime== "Josip"){
  "Josip je Vaše ime"
} else{
  "Nepoznata osoba"
} # "Josip je Vaše ime"

x= 7
if(x<10){
  if(x<5){
    rezultat= "Broj je jako malen"
  } else{
    rezultat= "Broj je malen"
  }
} else if(x<100){
  rezultat= "Srednji"
} else{
  rezultat= "Velik"
}
print(rezultat) # "Broj je malen"

x= 1
while(x<=10){
  print(paste("Iznos je", x))
  x= x+1
} # "Iznos je 1"
# "Iznos je 2"
# "Iznos je 3"
# "Iznos je 4"
# "Iznos je 5"
# "Iznos je 6" itd. sve do 10

v= 64
while(v>30){
  print(paste("Vaša brzina od", v, "km/h je veća od 30. Usporite malo!"))
  v= v-5
} print(v) # 29; kul, dobro je

v= 64
while(v>30){
  print(paste("Vaša brzina je", v, "km/h."))
  if(v>48){
    print("Jako usporite!")
    v= v-10 
  } else{
    print("Malo usporite")
    v= v-5
  }
}
print(v)

novac= 190
while(novac>50){
  print(paste("Možete trošiti! Iznos novca na Vašem računu je", novac, "."))
  novac= novac- 40
} print(novac)

novac= 190
while(novac>50){
  print(paste("Imate", novac, "kn."))
  if(novac>100){
    print("Možete puno trošiti!")
    novac= novac-40
  } else{
    print("Trošite")
    novac= novac-15
  }
}

x= 1
while(x<=10){
  if(x %% 4 == 0){
    break
  }
  print(paste("Broj je", x))
  x= x+1
} # "Broj je 1"
# "Broj je 2"
# "Broj je 3"

i= 9
while(i>0){
  print(i+10)
  if((i+10) %% 5 == 0){
    break
  } 
  i= i-1
} # 19 18 17 16 15

novac= 190
while(novac>140){
  print(paste("Imate", novac, "kn. Možete puno trošiti!"))
  if(novac<140){
    break
  }
  novac= novac - 40
} # "Imate 190 kn. Možete puno trošiti!"
# "Imate 150 kn. Možete puno trošiti!"

imena= c("Josip", "Juraj", "Pepo", "Štef")
for(i in imena){ # ovo znači da želimo ispisati svako ime u vektoru "imena"
  print(i)
} # [1] "Josip"
# [1] "Juraj"
# [1] "Pepo"
# [1] "Štef

for(i in 1:length(imena)){
  print(imena[i])
} # [1] "Josip"
# [1] "Juraj"
# [1] "Pepo"
# [1] "Štef"

imena.list= list("Josip", "Juraj", "Pepo", "Štef")
for(i in imena.list){ # for petlja može ići i na liste!
  print(i)
} # [1] "Josip" 
# [1] "Juraj"
# [1] "Pepo"
# [1] "Štef

for(i in 1:length(imena)){
  print(paste(imena[i], "je na poziciji", i, "u vektoru"))
} # "Josip je na poziciji 1 u vektoru"
# "Juraj je na poziciji 2 u vektoru"
# "Pepo je na poziciji 3 u vektoru"
# "Štef je na poziciji 4 u vektoru"

primarni= seq(1, 10, by= 2)
for (i in primarni){
  print(i)
} # [1] 1
# [1] 3
# [1] 5
# [1] 7
# [1] 9

for (i in 1:length(primarni)){
  print(primarni[i])
} # [1] 1
# [1] 3
# [1] 5
# [1] 7
# [1] 9

kocka= c(150, -40, 30, -110, 250)
for(i in kocka){
  print(i)
} # [1] 150
# [1] -40
# [1] 30
# [1] -110
# [1] 250

for(i in 1:length(kocka)){
  print(kocka[i])
} # [1] 150
# [1] -40
# [1] 30
# [1] -110
# [1] 250

ivan.list= list(ime= "Ivan", hobi= c("Nogomet", "Tenis", "Košarka", jedina= F))
for(i in ivan.list){
  print(i)
} # [1] "Ivan"
#                                 jedina 
# "Nogomet"   "Tenis" "Košarka"   "FALSE

for(i in 1:length(ivan.list)){
  print(ivan.list[i])
} # dobro je, ali previše je outputa; ak se radi s listama, onda je donji primjer bolji

for(i in 1:length(ivan.list)){
  print(ivan.list[[i]])
} # da

matrica= matrix(1:15, ncol= 3, byrow= T)
for(i in 1:nrow(matrica)){
  for(j in 1:ncol(matrica)){
    print(paste("U retku", i, "i stupcu", j, "matrica ima vrijednost", matrica[i,j]))
  }
} # [1] "U retku 1 i stupcu 1 matrica ima vrijednost 1"
# [1] "U retku 1 i stupcu 2 matrica ima vrijednost 2"
# [1] "U retku 1 i stupcu 3 matrica ima vrijednost 3"
# [1] "U retku 2 i stupcu 1 matrica ima vrijednost 4"
# [1] "U retku 2 i stupcu 2 matrica ima vrijednost 5"
# [1] "U retku 2 i stupcu 3 matrica ima vrijednost 6"
# [1] "U retku 3 i stupcu 1 matrica ima vrijednost 7"
# [1] "U retku 3 i stupcu 2 matrica ima vrijednost 8"
# [1] "U retku 3 i stupcu 3 matrica ima vrijednost 9"
# [1] "U retku 4 i stupcu 1 matrica ima vrijednost 10"
# [1] "U retku 4 i stupcu 2 matrica ima vrijednost 11"
# [1] "U retku 4 i stupcu 3 matrica ima vrijednost 12"
# [1] "U retku 5 i stupcu 1 matrica ima vrijednost 13"
# [1] "U retku 5 i stupcu 2 matrica ima vrijednost 14"
# [1] "U retku 5 i stupcu 3 matrica ima vrijednost 15"

pero= c(150, -40, 30, -110, 250)
for(i in pero){
  if(i>0){
    print("Pobjedio je taj dan")
  } else
    print("Izgubio je taj dan")
} # [1] "Pobjedio je taj dan"
# [1] "Izgubio je taj dan"
# [1] "Pobjedio je taj dan"
# [1] "Izgubio je taj dan"
# [1] "Pobjedio je taj dan"

for(i in pero){
  print(paste("Današnji je rezultat vašeg kockanja", i))
  if(i>250){
    print("Odlično!")
    next # da ide na idući primjer
  } else if(i<100){
    print("Grozno kockaš, odoh!")
    break # da prestane sa iteriranjem u vektoru ako dođe do toga slučaja gdje je i<100
  }
} # [1] "Današnji je rezultat vašeg kockanja 150"
# [1] "Današnji je rezultat vašeg kockanja -40"
# [1] "Grozno kockaš, odoh!"

imena= c("Josip", "Juraj", "Pepo", "Štef", "Petar Krešimir")
for(i in imena){
  if(nchar(i)>8 | nchar(i)<5){
    break
  } 
  print(i)
} # [1] "Josip" 
# [1] "Juraj"

rec= "Ana je danas radila do 10 navečer."
znakovi= strsplit(rec, split= "")[[1]]
brojac=0
for(i in 1:length(znakovi)){
  if((znakovi[i]=="a") | (znakovi[i]== "A")){
    brojac= brojac+1
  } else if(znakovi[i]== "t"){
    break
  }
} 
print(brojac) # Proučiti ovaj zadatak; rješavati takve zadatke.


### Pisanje vlastitih funkcija

poz= function(){
  print("Dobar dan svima!")
}
poz() # "Dobar dan svima!"

triple= function(x){
  return(3*x) # ovo je eksplicitno; može se napisati samo "3*x"
}
triple(3) # 9

tripley= function(x){
  y= 3*x
  return(y)
}
tripley(3) # 9

FtoC= function(fahrenheit){
  celsius= (fahrenheit-32)*5/9
  return(celsius)
}
FtoC(10) # -12.22222

square= function(x){
  x^2
}
square(3) # 9 

square2= function(x){
  y= x^2
  return(y)
}
square(3) # 9

sumaps= function(x, y){
  return(sum(abs(x+y)))
}
sumaps(-2, -3) # 5

sumaps2= function(x, y= 100){
  return(sum(abs(x+y)))
}
sumaps2(-800) # 700

calc= function(x, y){
  return((x/y)+1)
}
calc(2,5) # 1.4

calc2= function(x, y= 9){
  return((x/y)+1)
}
calc2(8) # 1.888889

calc2= function(x, y){
  if(y==0){
    print("Pazite! Dijelite s 0!")
    return(0) # Ovo da bude samo da ne piše "Inf", nego 0
  }
  return((x/y)+1)
}
calc2(7,0) # [1] "Pazite! Dijelite s 0!"
           # [1] Inf

triple= function(x, print_info= T){
  y= x*3
  if(print_info== T){
    print(paste(x, "množeno sa 3 iznosi", y))
  }
  return(y)
}
triple(3) # "3 množeno sa 3 iznosi 9"
          # 9

sumax= function(x){
  sum= 0
  for(i in 1:length(x)){
    sum= sum+abs(x[i])
  }
  sum
}

x= sample(1:10, size= 30, replace= T)
sumax(x) # 176

positive= function(x){
  if(x>0){
    return(x)
  } else{
    return(NULL)
  }
}

square= function(x, print_this= T){
  y= x^2
  if(print_this== T){
    print(paste(x, "na kvadrat je", y))
  }
  return(y)
}
square(4, FALSE) # 16
square(4, T) # "4 na kvadrat je 16"
             # 16

kockanje= function(x){
  if(x>0){
    print("Bravo, pobjedili ste!")
    return(x)
  } else{
    print("Loše igrate")
    return(0)
  }
}
kockanje(9) # "Bravo, pobjedili ste!"
            # 9
kockanje(-8) # "Loše igrate"
             # 0

kockanje.sve= function(kocka.rez, log= TRUE){
  suma= 0
  for(i in 1:length(x)){
    suma= suma + kockanje(x[i])
  }
  if(log== T){
    return(suma)
  } else {
    return(NULL)
  }
}
kockanje.sve(x, T) # [1] "Bravo, pobjedili ste!"
                   # [1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] "Bravo, pobjedili ste!"
                   #[1] 185
