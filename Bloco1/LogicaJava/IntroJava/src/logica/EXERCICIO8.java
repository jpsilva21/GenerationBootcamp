package logica;
import java.util.Scanner;

public class EXERCICIO8 {
	public static void main(String[]args) {
		
		Scanner read = new Scanner(System.in);
	
		double cFab, dist, imp, cCon;
		
		System.out.println("Insira o pre�o de f�brica do carro: ");
		cFab = read.nextInt();
		
		imp= cFab*0.45;
		dist= cFab*0.28;
		cCon= cFab+dist+imp;
		
		System.out.print("\nO carro custa R$"+cCon+ " para o consumidor. ");
		
		read.close();
	}
}
