# comparer l'argument aux deux expression Hello et bye
if [ " $1 "  =  " Hello " ]
then
 echo  " Bonjour, je suis un script ! "
elif [ " $1 "  =  " bye " ]
then
 echo  " Au revoir et bonne journée ! "  
else  echo  " Essayer avec : Hello ou bye "
fi 
