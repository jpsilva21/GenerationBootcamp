import java.util.Scanner;

public class EXERCICIO3 {
	
	public static void main(String[]args) {
		
		Scanner read = new Scanner (System.in);

		int tempoSeg, tempoMin, tempoH;
		System.out.println("Qual o tempo em segundos?");
		tempoSeg = read.nextInt();
		
		
		tempoH = tempoSeg/3600;
		tempoMin = tempoSeg%3600/60;
		tempoSeg = tempoSeg%3600%60;
		
		System.out.println("\nO tempo é de "+ tempoH + " horas "+ tempoMin + " minutos e "+ tempoSeg + "segundos.");
		
		read.close();
	}

}