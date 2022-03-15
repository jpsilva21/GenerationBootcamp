programa
{
	
	funcao inicio()
	{
		inteiro S= 0, F= 0, mediaS= 0, mediaF= 0, maiorS= 0

		real perS= 0.0

		para (inteiro x=1; x<=4; x++)
		{
		escreva("Insira o salario: ")
		leia(S)
		escreva("Insira numero de filhos: ")
		leia(F)

		mediaF= (F+mediaF)/2

		mediaS= (S+mediaS)/2
		
		
			se (S>maiorS)
			{
				maiorS= S
			}

			se (S<=100)
			{
				perS++

			}
			limpa()
			
			se (x==4)
			{
			escreva("Encerrado!")
			}
		
		}


		escreva("\nA media salarial é: ", mediaS)
		escreva("\nA media do numero de filhos é: ", mediaF)
		escreva("\nO maior salário é: ", maiorS)
		escreva("\nO percentual de pessoas com salário menor que 100 é: ", ((perS/20)*100))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */