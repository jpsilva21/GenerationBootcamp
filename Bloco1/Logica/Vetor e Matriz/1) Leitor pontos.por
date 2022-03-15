programa
{
	
	funcao inicio()
	{
		inteiro vet[5], nota=0, maiorN=0

		para (nota=0;nota<5;nota++)
		{
			escreva("Digite sua nota: ")
			leia(vet[nota])

			se (vet[nota]>maiorN)
			{
				maiorN= vet[nota]
			}
		}
		limpa()
		para (nota=0;nota<5;nota++)
		{
			escreva("\nSua nota é: ", vet[nota])
			
		}
		escreva("\nSua maior nota é: ", maiorN)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */