package lacosDecisao;

import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[]args) {
		
		Scanner read = new Scanner(System.in);
		int n1, n2, n3;
		
		
		System.out.print("Insira um numero: ");
		n1 = read.nextInt();
		n2 = read.nextInt();
		n3 = read.nextInt();
		
		if (n1>=n2 && n1>=n3) 
		System.out.println("O maior número é: "+n1);
		
		
		else if (n2>=n1 && n2>=n3) 
		System.out.println("O maior número é: "+n2);
		
		
		else if (n3>n1 && n3>n2)
		System.out.println("O maior número é: "+n3); 
		
		read.close();
	}
	
}
