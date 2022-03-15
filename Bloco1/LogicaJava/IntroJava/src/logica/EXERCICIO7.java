package logica;
import java.util.Scanner;

public class EXERCICIO7 {
	public static void main(String[]args) {
		
		Scanner read = new Scanner(System.in);

		double a,b,c,d,i,f,x,y;
		System.out.print("Insira os valores de A, B, C, D, E e F: ");
		a = read.nextInt();
		b = read.nextInt();
		c = read.nextInt();
		d = read.nextInt();
		i = read.nextInt();
		f = read.nextInt();
		
		x=(c*i-b*f)/(a*i-b*d);
		y=(a*f-c*d)/(a*i-b*d);
		
		System.out.print("\nLogo, X="+x+" e Y="+y);
		
		
		read.close();
	}
}
