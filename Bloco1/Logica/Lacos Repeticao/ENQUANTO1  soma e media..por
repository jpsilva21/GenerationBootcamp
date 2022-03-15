programa
{
	
	funcao inicio()
	{
		real n= 0.0, soma= 0.0, media= 0.0, tv=0.0


		enquanto (n>=0) 
		{
			escreva("Digite um numero: ")
			leia(n)

			se (n<0)
			{
				pare
			}
	
			tv++

			soma = n + soma
			media = soma/tv	
		}
		
		escreva("\nA soma resulta em: ", soma)
		escreva("\nA media resulta em: ", media)
		escreva("\nA Voce digitou: ",tv , " vezes")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */