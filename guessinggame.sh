#!/usr/bin/env bash

function guessinggame() {
    no_of_files=$(ls -1 | wc -l)

    while true; do
        echo "Veuillez entrer votre estimation:"
        read number

        if ! [[ "$number" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        if [ $number -lt $no_of_files ]; then
            echo "Votre estimation est inférieure au nombre de fichiers."
        elif [ $number -gt $no_of_files ]; then
            echo "Votre estimation est supérieure au nombre de fichiers."
        else
            echo "Félicitations, votre estimation est correcte !"
            break  # Sortir de la boucle lorsque la réponse est correcte
        fi
    done
}
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel ?"
guessinggame 
