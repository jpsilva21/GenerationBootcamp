programa
{
	
	funcao inicio()
	{
		inteiro N
		escreva("Descubra números ímpares e pares, negativos e positivos!")
		escreva("\nInsira um numero inteiro: ")
		leia(N)

		se (N%2 == 0)
		{
		escreva("\nEste é um número Par ")
		}

		senao
		{
			escreva("\nEste é um número Impar ")
		}

		se (N>=0)
		{
		escreva("e Positivo... ")
		}

		senao
		{
			escreva("e Negativo... ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */