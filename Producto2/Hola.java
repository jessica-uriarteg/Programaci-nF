public class HelloWorld{

     public static void main(String []args){
       
        System.out.println("Hola! tratare de adivinar un numero.");
        try {Thread.sleep(5000); }
        catch (Exception e) { }
        System.out.println("Piensa un numero entre 1 y 10.");
        try {Thread.sleep(5000); }
        catch (Exception e) { }
        System.out.println("Ahora multiplicalo por 9.");
        try {Thread.sleep(5000); }
        catch (Exception e) { }
        System.out.println("Si el numero tiene 2 digitos, sumalos entre si. Si tu numero tiene un solo digito, sumale 0.");
        try {Thread.sleep(5000); }
        catch (Exception e) { }
        System.out.println("Al numero resultante sumale 4.");
        try {Thread.sleep(10000); }
        catch (Exception e) { }
        System.out.println("Muy bien. El resultado es 13:D");
         
     }
}