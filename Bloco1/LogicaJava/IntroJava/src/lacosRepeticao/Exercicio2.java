package lacosRepeticao;

import java.util.Scanner;

public class Exercicio2 {

	public static void main(String[] args) {
		Scanner read = new Scanner(System.in);
		
		int n, par=0, impar=0, rep;
		System.out.println("Insira 10 n?meros: ");

		for (rep=1; rep<=10; rep++) {
			
			n= read.nextInt();
		
			if (n%2==0) {
				par++;
				
			}
			
			else {
				impar++;
			}
			read.close();
		}
		System.out.println("Os numeros pares repetem "+par+" vezes");
		System.out.println("Os numeros impares repetem "+impar+" vezes");	
	}
}
