#!/bin/sh

# for loop
for i in {1..10};
do
	echo $i
done

# for loop like c
for ((i=0;i<=10;i++))
{
	echo $i
}

# while loop
i=0;
while [ $i -le 10 ];
do
	echo $i
	let i++
done

# until loop
i=0;
until [[ $i -gt 10 ]]; 
do
	echo $i
	let i++
done