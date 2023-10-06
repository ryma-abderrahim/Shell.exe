#récupérer les deux arguments
# le nouveau fichier 
new_file=$1

# le fichier déja existant  
copy_file=$2

#affichier le contenu de l'argument 2  et redériger la soryie de l'affichage vers le nouveau fichier créer 
` sudo cat   $copy_file   >  $new_file  `
