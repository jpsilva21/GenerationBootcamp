programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real A, B, C, R, S, D
		escreva("Insira um número inteiro positivo A: ")
		leia(A)
		escreva("\nInsira um número inteiro positivo B: ")
		leia(B)
		escreva("\nInsira um número inteiro positivo C: ")
		leia(C)

		R= mat.potencia(A+B, 2.0)
		S= mat.potencia(B+C, 2.0)
		D= (R+S)/2

		escreva("\nD é: ", D)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */