#!/bin/sh

nu1=4;
nu2=5;

let result=nu1+nu2
echo $result

let nu1++
echo $nu1

let nu2--
echo $nu2

let nu1+=5
echo $nu1

let nu2-=2
echo $nu2

echo +++
nu1=4;
nu2=5;
result2=$[ nu1 + nu2 ]
echo $result2

result2=$[ $nu1 + 5 ]
echo $result2

echo +++
nu1=4;
nu2=5;
result3=$(( nu1 + nu2 ))
echo $result3

echo +++
nu1=4;
nu2=5;
expr $nu1 + $nu2
result4=$(expr $nu1 + $nu2)
echo $result

# :s/@shared_task/@app.task/g

# from wx_fine.celery import app