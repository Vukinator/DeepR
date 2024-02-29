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



