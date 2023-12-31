#!/bin/bash
#Creator: David Parra-Sandoval
#Date: 12/24/2023
#Last Modified: 12/31/2023
clear

#checking requirements
for APP in bc; do
if [[ -d RECEIPTSforTHEday ]]; then
echo "The directory for the RECEIPTs exist; GOOD!"
else
mkdir RECEIPTSforTHEday
fi
command -vv bc &> /dev/null
if [[ $? = 0 ]]; then
echo -e  "\e[92m$APP installed\e[00m"
else echo -e "\e[91m$APP not installed\e[00m THIS Fucking Register will NOT work!"
exit 1
fi
done

CUSTOMERSNAME () {

read -p "Name of Customer for the RECEIPT: " NAMEOFCUSTOMER

}
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
echo "product1 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
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
echo "product2 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
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
echo "product3 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
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
echo "product4 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
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
echo "product5 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
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
echo "product6 $PRICE * $HOWMANY = $TOTALPRICE" >> YourRECEIPT
break
done

}

TOTAL () {
wc -l YourRECEIPT >> YourRECEIPT
cat YourRECEIPT

TOTALNUMBEROFPRODUCTS=$(cat YourRECEIPT | grep YourRECEIPT | cut -d " " -f 1)

if [[ $TOTALNUMBEROFPRODUCTS = 1 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TAX=.084
WITH_TAX=$(bc <<< "$ONE_PRODUCT * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ONE_PRODUCT + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 2 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 6)
ADD_TWO_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2")
TAX=.084
WITH_TAX=$(bc <<< "$ADD_TWO_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_TWO_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 3 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 6)
THREE_PRODUCT3=$(cat YourRECEIPT | head -3 | tail -2 | tail -1 | cut -d " " -f 6)
ADD_THREE_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3")
TAX=.084
WITH_TAX=$(bc <<< "$ADD_THREE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_THREE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 4 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 6)
THREE_PRODUCT3=$(cat YourRECEIPT | tail -3 | head -1 | cut -d " " -f 6)
FOUR_PRODUCT4=$(cat YourRECEIPT | tail -2 | head -1 | cut -d " " -f 6)
ADD_FOUR_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4")
TAX=.084
WITH_TAX=$(bc <<< "$ADD_FOUR_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FOUR_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 5 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 6)
THREE_PRODUCT3=$(cat YourRECEIPT | tail -4 | head -1 | cut -d " " -f 6)
FOUR_PRODUCT4=$(cat YourRECEIPT | tail -3 | head -1 | cut -d " " -f 6)
FIVE_PRODUCT5=$(cat YourRECEIPT | tail -2 | head -1 | cut -d " " -f 6)
ADD_FIVE_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4 + $FIVE_PRODUCT5")
TAX=.084
WITH_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
################################################################
elif [[ $TOTALNUMBEROFPRODUCTS = 6 ]]; then
ONE_PRODUCT=$(cat YourRECEIPT | head -1 | cut -d " " -f 6)
TWO_PRODUCT2=$(cat YourRECEIPT | head -2 | tail -1 | cut -d " " -f 6)
THREE_PRODUCT3=$(cat YourRECEIPT | head -3 | tail -2 | tail -1 | cut -d " " -f 6)
FOUR_PRODUCT4=$(cat YourRECEIPT | head -4 | tail -2 | head -2 | tail -1 | cut -d " " -f 6)
FIVE_PRODUCT5=$(cat YourRECEIPT | tail -3 | head -2 | head -1 | cut -d " " -f 6)
SIX_PRODUCT6=$(cat YourRECEIPT | tail -3 | head -2 | tail -1 | cut -d " " -f 6)
ADD_SIX_PRODUCTS=$(bc <<< "$ONE_PRODUCT + $TWO_PRODUCT2 + $THREE_PRODUCT3 + $FOUR_PRODUCT4 + $FIVE_PRODUCT5 + $SIX_PRODUCT6")
TAX=.084
WITH_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS * $TAX")
echo "Fucking TAX is $WITH_TAX"
ADD_TAX=$(bc <<< "$ADD_FIVE_PRODUCTS + $WITH_TAX")
echo "Fucking TOTAL is \$$ADD_TAX"
CUSTOMERSNAME
read -p "PRESS Enter For NEW TRANSACTION, Temporary RECEIPT will be DELETED"
DATE=$(date)
cp YourRECEIPT RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
echo $DATE tax\$$WITH_TAX TOTAL\$$ADD_TAX >> RECEIPTSforTHEday/RECEIPT_$NAMEOFCUSTOMER
rm YourRECEIPT
unset DATE
fi
}
##THANKS#https://unix.stackexchange.com/questions/80099/bc-automatic-full-precision-multiplication#######
#########################################################################################################
while true; do
echo -e "\t####The Fucking Register!####"
echo -e "\t1)product1   4)product4"
echo -e "\t2)product2   5)product5"
echo -e "\t3)product3   6)product6"
echo -e "7)\e[92mTotal\e[00m 8)Show Fucking RECEIPTs 9)\e[31mEXIT!\e[00m"
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
if [[ ! -e YourRECEIPT ]]; then
echo "No RECEIPT!"
else
TOTAL
fi

;;

SHOWRECEIPTS|8)
select RECEIPT in $(ls RECEIPTSforTHEday/); do
cat RECEIPTSforTHEday/$RECEIPT
break
done

;;

EXIT|9)
#Here you can modify what will the script do when
#you exit out of it. Like backup the RECEIPTSforTHEday folder
#You can use also my file-organizer script to back it up.
#
break

;;
esac
done
