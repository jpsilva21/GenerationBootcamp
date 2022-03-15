programa
{
	
	funcao inicio()
	{
		inteiro n=0
		escreva("Insira um numero: ")
		leia(n)
		
		se (n>100)
		{
			escreva("Erro, Numero maior que 100, tente novamente!")
		}
		
		enquanto (n<=100)
		{
			n = n*3
			escreva("\nO resultado é: ", n)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */