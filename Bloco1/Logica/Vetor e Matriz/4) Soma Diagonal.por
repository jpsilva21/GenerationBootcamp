programa
{
	
	funcao inicio()
	{
		inteiro mat[3][3], linha, coluna, somaT=0, somaD=0

		para (linha=0; linha<3;linha++)
		{
			para (coluna=0; coluna<3;coluna++)
			{
				escreva("Insira um valor: ")
				leia(mat[linha][coluna])

				somaT= mat[linha][coluna] + somaT

				se (linha==coluna)
				{
					somaD= mat[linha][coluna]+ somaD
				}
			}
		}
		limpa()
		escreva("\nA soma total dos valores é: ", somaT,
		"\nE a soma diagonal é: ", somaD)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 448; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 6, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */