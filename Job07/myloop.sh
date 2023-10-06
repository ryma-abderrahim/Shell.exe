echo " Avec la boucle  'for' "
for (( i= 1 ; i<=10 ; i++ ))
do
  echo " ''Je suis un script qui arrive à faire une boucle "$i "''"
done 

############ou 
echo  "Avec la boucle  'while' " 
#initialiser j à 1
j=1

# tanque  j est inferieure ou égal à 10 exécuter les instruction qui suit 
while  [ $j -le 10 ]
do 
  echo " '' Je suis un script qui arrive à faire une boucle " $j "''"
  j=$(($j + 1))
done  
