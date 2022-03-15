programa
{
	
	funcao inicio()
	{
		inteiro vet[4], vdado=0, oco=0, vezes=1
		real media=0.0
		
		para (vdado=0;vdado<4;vdado++)
		{
			escreva("Insira o valor do dado: ")
			leia(vet[vdado])

			media= (media+vet[vdado])
			

			se (vet[vdado]>oco)
			{
				oco= vet[vdado]
			}

			senao se (oco==vet[vdado])
			{
				vezes++
			}
		}

		media= media/4
		escreva("\nA media é: ",media)
		escreva("\nO maior valor é: ",oco, " \ne repetiu: ",vezes, " vezes")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {oco, 6, 27, 3}-{vezes, 6, 34, 5}-{media, 7, 7, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */