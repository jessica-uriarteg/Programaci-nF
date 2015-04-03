#include <iostream>
#include <time.h>
using namespace std;

int main()
{
   cout << "Hola! Trataré de adivinar un número" << endl; 
   cout << "Piensa un número entre 1 y 10" << endl; 
   sleep(5);
   cout << "Ahora multiplícalo por 9." << endl; 
   sleep(5);
   cout << "Si el número tiene 2 dígitos, súmalos entre si. Si tu número tiene un solo dígito, súmale 0." << endl; 
   sleep(5);
   cout << "Al número resultante súmale 4" << endl; 
   sleep(10);
   cout << "Muy bien. El resultado es 13:D" << endl; 
   
   return 0;
}

