programa
{
	
	funcao inicio()
	{
		inteiro n1[4][6], lin, col
		inteiro n2[4][6], m1[4][6], m2[4][6]

		para (lin=0;lin<4;lin++)
		{
			para (col=0;col<6;col++)
			{
			escreva("Insira um numero para: ")
			leia(n1[lin][col])
			}
		}
		
		para (lin=0;lin<4;lin++)
		{
			para (col=0;col<6;col++)
			{
			escreva("Insira um numero para: ")
			leia(n2[lin][col])
			}
		}
		limpa()
		
		escreva("\nTabela M1: \n")
		
		para (lin=0;lin<4;lin++)
		{
			
			para (col=0;col<6;col++)
			{
				
				m1[lin][col]= n1[lin][col]+n2[lin][col]
				escreva(m1[lin][col]," ")
				
			}
			escreva("\n")
		}
		
		escreva("\nTabela M2: \n")
		
		para (lin=0;lin<4;lin++)
		{
			para (col=0;col<6;col++)
			{
				m2[lin][col]= n1[lin][col]-n2[lin][col]
				
				escreva(m2[lin][col]," ")
				
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 94; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n1, 6, 10, 2}-{n2, 7, 10, 2}-{m1, 7, 20, 2}-{m2, 7, 30, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */