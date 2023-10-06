#initialiser le chemin vers  mon répertoire courant
path="/home/debian/Shell.exe/Job09/"

#récupérer les colonnes de  chaque ligne du fichier  avec la boucle while
    while IFS="," read -r id prenom nom mdp role; do

        #combiner le nom et prénom et mettre les majuscules en minuscules
        username=$(echo "$prenom.$nom" | tr '[:upper:]' '[:lower:]')

        # Vérifiez la longueur du nom d'utilisateur
        if [ ${#username} -lt 3 ]; then
            exit 0
        fi

        #supprimer tous les retour-chariot
        nrole=$(echo $role | tr -d '\r' | cat -t)

       #creer l'utilisateur  username
        sudo useradd $username
        echo "$username:$mdp" | sudo chpasswd

        # donner les  permissions
         if [ $nrole = "Admin" ]; then
            sudo usermod -aG sudo $username
            echo "did $username"
        else
            sudo usermod -aG users $username
            echo "did $username"
        fi

           #récupérer les lignes de la boucle depuis ...
    done < <(tail -n +2 $path/Shell_Userlist.csv | tr -d " " && echo "")

