programa
{
	
	funcao inicio()
	{
		inteiro soma=0
		
		para (inteiro nI = 1; nI <= 500; nI++)
		
		{

			//se é impar
			se (nI%2 != 0)
			{
				//se é multiplo de 3
				se (nI%3 == 0)
				{
					soma = soma + nI
				}
			}
		}
		
		escreva("A soma resulta em ", soma)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */