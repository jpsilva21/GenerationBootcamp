package lacosRepeticao;

import java.util.Scanner;

public class Exercicio5 {

	public static void main(String[] args) {
		Scanner read = new Scanner(System.in);
		
		int n, soma=0;
		
		do {
		System.out.println("Insira um n�mero: ");
		n= read.nextInt();
		
		soma= soma+n;
		}
		while (n!=0);
			System.out.println("A soma resulta em "+soma+" no total.");
	read.close();
	}
	
}