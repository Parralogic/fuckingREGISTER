#!/bin/bash
#Creator: David Parra-Sandoval
#Date: 12/24/2023
#Last Modified: 12/24/20023
clear

#checking requirements
for APP in bc; do
command -vv bc &> /dev/null
if [[ $? = 0 ]]; then
echo -e  "\e[92m$APP installed\e[00m"
else echo -e "\e[91m$APP not installed\e[00m THIS Fucking Register will NOT work!"
exit 1
fi
done

product1 () {
echo "product1 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=2.50
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product1 $TOTALPRICE >> YourRECEIPT
break
done
}

product2 () {
echo "product2 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=5.25
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product2 $TOTALPRICE >> YourRECEIPT
break
done

}

product3 () {
echo "product3 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=10.99
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product3 $TOTALPRICE >> YourRECEIPT
break
done

}

product4 () {
echo "product4 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=6.99
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product4 $TOTALPRICE >> YourRECEIPT
break
done

}

product5 () {
echo "product5 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=1.25
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product5 $TOTALPRICE >> YourRECEIPT
break
done

}

product6 () {
echo "product6 HOW MANY?"
select HOWMANY in 1 2 3 4 5 6 CUSTOM; do
if [[ $HOWMANY = CUSTOM ]]; then
read -p "How Many? # " CUSTOM
HOWMANY=$CUSTOM
fi
PRICE=3.99
TOTALPRICE=$(bc <<< "$PRICE * $HOWMANY")
echo "[$PRICE * $HOWMANY]"
echo $TOTALPRICE
echo product6 $TOTALPRICE >> YourRECEIPT
break
done

}

TOTAL () {
wc -l YourRECEIPT >> YourRECEIPT
cat YourRECEIPT

TOTALNUMBEROFPRODUCTS=$(cat YourRECEIPT | grep YourRECEIPT | cut -d " " -f 1)

if [[ $TOTALNUMBEROFPRODUCTS = 1 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TAX=.0837
WITH_TAX=$(bc <<< "$ONE_PRODUCT * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ONE_PRODUCT + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 2 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 2)
ADD_TWO_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2")
TAX=.0837
WITH_TAX=$(bc <<< "$ADD_TWO_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_TWO_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 3 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 2)
THREE_PRODUCT3=$(cat YourRECEIPT | head -3 | tail -2 | tail -1 | cut -d " " -f 2)
ADD_THREE_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3")
TAX=.0837
WITH_TAX=$(bc <<< "$ADD_THREE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_THREE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 4 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 2)
THREE_PRODUCT3=$(cat YourRECEIPT | tail -3 | head -1 | cut -d " " -f 2)
FOUR_PRODUCT4=$(cat YourRECEIPT | tail -2 | head -1 | cut -d " " -f 2)
ADD_FOUR_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4")
TAX=.0837
WITH_TAX=$(bc <<< "$ADD_FOUR_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FOUR_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 5 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 2)
THREE_PRODUCT3=$(cat YourRECEIPT | tail -4 | head -1 | cut -d " " -f 2)
FOUR_PRODUCT4=$(cat YourRECEIPT | tail -3 | head -1 | cut -d " " -f 2)
FIVE_PRODUCT5=$(cat YourRECEIPT | tail -2 | head -1 | cut -d " " -f 2)
ADD_FIVE_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4 + $FIVE_PRODUCT5")
TAX=.0837
WITH_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 6 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 2)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 2)
THREE_PRODUCT3=$(cat YourRECEIPT | head -3 | tail -2 | tail -1 | cut -d " " -f 2)
FOUR_PRODUCT4=$(cat YourRECEIPT | head -4 | tail -2 | head -2 | tail -1 | cut -d " " -f 2)
FIVE_PRODUCT5=$(cat YourRECEIPT | tail -3 | head -2 | head -1 | cut -d " " -f 2)
SIX_PRODUCT6=$(cat YourRECEIPT | tail -3 | head -2 | tail -1 | cut -d " " -f 2)
ADD_SIX_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4 + $FIVE_PRODUCT5 + $SIX_PRODUCT6")
TAX=.0837
WITH_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
read -p "PRESS Enter will Delete the RECEIPT"
rm YourRECEIPT
fi
}
##THANKS#https://unix.stackexchange.com/questions/80099/bc-automatic-full-precision-multiplication#######
#########################################################################################################
while true; do
echo -e "\t####The Fucking Register!####"
echo -e "\t1)product1   4)product4"
echo -e "\t2)product2   5)product5"
echo -e "\t3)product3   6)product6"
echo -e "7)Total"
read -p "#? " PRODUCT
clear
case $PRODUCT in
product|1)
product1
;;

product|2)
product2

;;

product|3)
product3
;;

product|4)
product4
;;

product|5)
product5
;;

product|6)
product6
;;

TOTAL|7)
TOTAL
;;
esac
done
