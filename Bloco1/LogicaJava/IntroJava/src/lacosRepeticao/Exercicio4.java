package lacosRepeticao;

import java.util.Scanner;

public class Exercicio4 {

	public static void main(String[] args) {
		Scanner read = new Scanner(System.in);
		
		char sexo, opcao, seguir=' ';
		int idade, pCalmas=0, mNervosas=0, hAgressivos=0, oCalmos=0, maiorNervosas=0, menorCalmas=0, cont=1;
	
		while (cont<=150) {
			System.out.println("Informe sua Idade: ");
			idade= read.nextInt();
			System.out.println("Qual seu sexo? \n1-Feminino \n2-Masculino \n3-Outros: ");
			sexo= read.next().charAt(0);
			System.out.println("Voc� � uma pessoa... \n1-Calma\n2-Nervosa\n3-Agressiva: ");
			opcao= read.next().charAt(0);
			
			
					
		
			
			if (opcao=='1') {
				pCalmas++;
			}
			
			if (sexo=='1' && opcao=='2') {
				mNervosas++;
			}
			
			if (sexo=='2' && opcao=='3') {
				hAgressivos++;
			}
			
			if (sexo=='3' && opcao=='1') {
				oCalmos++;
			}
			
			if (idade>=40 && opcao=='2' ) {
				maiorNervosas++;
			}
			
			if (idade<=18 && opcao=='1') {
				menorCalmas++;
			}
			if (cont!=150) {
				System.out.println("Deseja continuar? 1-Sim\n2-N�o:");
				seguir= read.next().charAt(0);
				
				if (seguir=='2') {
					System.out.println("FIM DO PROGRAMA!");
					break;
				}
						}
			cont++;
		
		}
		System.out.println("Total pessoas calmas: "+pCalmas);
        System.out.println("Total mulheres Nervosas: "+mNervosas);
        System.out.println("Total homens Agressivos: "+hAgressivos);
        System.out.println("Outros Calmos: "+oCalmos);
        System.out.println("Pessoas Nervosas com mais de 40 anos: "+maiorNervosas);
        System.out.println("Pessoas Calmas menores de 18 anos: "+menorCalmas);
        
        read.close();
	}
}
