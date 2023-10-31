#！ /bin/bash

# todas las palabras contengan sólamente letras minusculas

grep -oE '\b[a-z]+\b' Banner.html | sort | uniq > ./banner/allminus.txt



# amplificar el diccionario de passwords con la opcion rule de john

john --stdout --wordlist=./banner/allminus.txt --rule > ./banner/rule.txt



# se eliminarán las palabras que no contengan todo minúsculas

grep -oE '\b[A-Za-z]*[A-Z]+[A-Za-z]*\b' ./banner/rule.txt > ./banner/mayuscula.txt


# se eliminarán las palabras que no sean menores a 8 caracteres

grep -oE '\b\w{1,7}\b' ./banner/mayuscula.txt > ./banner/menor8.txt



# reordenar las palabras restantes y eliminar duplicados

sort -u ./banner/menor8.txt > ./banner/pass.txt