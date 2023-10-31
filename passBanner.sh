#！ /bin/bash

# todas las palabras contengan sólamente letras minusculas

grep -oE '\b[a-z]+\b' Banner.html | sort | uniq > allminus.txt



# amplificar el diccionario de passwords con la opcion rule de john

john --stdout --wordlist=allminus.txt --rule > rule.txt



# se eliminarán las palabras que no contengan todo minúsculas

grep -oE '\b[A-Za-z]*[A-Z]+[A-Za-z]*\b' rule.txt > mayuscula.txt


# se eliminarán las palabras que no sean menores a 8 caracteres

grep -oE '\b\w{1,7}\b' mayuscula.txt > menor8.txt



# reordenar las palabras restantes y eliminar duplicados

sort -u menor8.txt > pass.txt