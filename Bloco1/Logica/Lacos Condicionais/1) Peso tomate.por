programa
{
	inclua biblioteca Matematica --> mat
	
	
	funcao inicio()
	{
		real P, E, M, Ppadrao
		escreva("Insira os quilos de tomate: ")
		leia(P)

		Ppadrao= 50

		E= (P-Ppadrao)
		M= (E*4.00)
		
		se (E>0)
		{
			escreva("\nO peso excede ", mat.arredondar(E,3))
			escreva("Kg, logo, sua multa é de: ", "\nR$", mat.arredondar(M,2), " no total.")
		}

		senao
		{
			escreva("\nPeso excedente: 0.0 Kg, logo, não há multas a debitar.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */