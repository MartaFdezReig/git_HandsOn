#Canviiii
#!/bin/bash
seq=$1 #Guarda los valores entrados en una variable
seq=$(echo $seq | tr a-z A-Z)  # Pasa a mayusculas los valores entrados
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si el valor entrado contiene ACGTU entrara dentro
  if [[ $seq =~ T ]]; then #Si contiene una T entrara dentro
    echo "The sequence is DNA" #Mostrara el mensaje
  elif [[ $seq =~ U ]]; then #Si contiene una U entrara dentro
    echo "The sequence is RNA" #Mostrara el mensaje
  else #Si no contiene U/T entrara dentro
    echo "The sequence can be DNA or RNA" #Mostrara el mensaje
  fi
else #Si no contiene ninguno de los valores anteriores entrara dentro
  echo "The sequence is not DNA nor RNA" #Mostrara el mensaje
fi #Acaba el programa
