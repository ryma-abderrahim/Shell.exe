############################Initialisations##############################

#l'utilisateur à debian 
user_name="debian"

#format de la date 
current_date=$(date +%d-%m-%Y)

#format de temps 
current_time=$(date  +%H:%M)

#chemin vers mon script 
chemin_script="/home/debian/Shell.exe/Job08"

#nom de nouveau fichier à créer
new_file="number_connection_${current_date}-${current_time}.txt"

#nom de nouveau archive à créer 
new_file_tar="number_connection_${current_date}-${current_time}.tar"


###############################Instructions###########################

#afficher le nombre de connection de debian dans le nouveau fichier 
`last | grep "^$user_name" | wc -l > $new_file`

#archiver le nouveau fichier 
`tar -cvf "$chemin_script/$new_file_tar"  "$new_file"`

# creer un doccier nommé  Backup
`mkdir  Backup`

#déplacer l'archive dans le dossier Backup
`mv "$chemin_script/$new_file_tar"  "$chemin_script/Backup"`

#supprimer le nouveau fichier qui à été archiver 
`rm "$chemin_script/$new_file"`
