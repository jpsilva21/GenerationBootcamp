import java.util.Scanner;

public class EXERCICIO1 {
	
	public static void main(String[]args) {
		
		int  anos, meses, dias, total;
		
		Scanner read = new Scanner(System.in);
		
		System.out.print("Descubra sua idade em dias!");

		System.out.print("\nInsira sua idade em anos: ");
		anos = read.nextInt();

		System.out.print("\nInsira os meses: ");
		meses = read.nextInt();

		System.out.print("\nInsira os dias: ");
		dias = read.nextInt();

		total= anos*365 + meses*30 + dias;
				
		System.out.print("\nTotal em dias: " + total);
		
		read.close();
	}

}
