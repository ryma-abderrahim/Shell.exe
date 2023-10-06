#comparer  le deusième argument avec les caractère +/-/X// et exécuter l'operation qui  convient à chaque caractère
if  [ "$2" = "+" ]
then 
    result=$(( $1 + $3))
elif [  "$2" = "-" ]
then 
    result=$(( $1 - $3 ))
elif [ "$2" = "x" ]
then 
    result=$(( $1 * $3 ))
elif [ "$2" = "/" ]
then
 result=$(  echo "scale=2; (( $1 / $3)) "|bc ) 
fi 

echo  "le résultat est : " $result
