package logica;
import java.util.Scanner;

public class EXERCICIO5 {
	public static void main(String[]args) {
		
		Scanner read = new Scanner(System.in);
		
		double n1, n2, n3, res, MF;
		System.out.print("Insira sua primeira nota: ");
		n1= read.nextInt();
		System.out.print("\nInsira sua segunda nota: ");
		n2= read.nextInt();
		System.out.print("\nInsira sua terceira nota: ");
		n3= read.nextInt();


		res= (n1*2)+(n2*3)+(n3*5);
		MF= res/(2+3+5);

		System.out.print("\nSua media ponderada é: "+ MF);
		
		read.close();
	}

}
