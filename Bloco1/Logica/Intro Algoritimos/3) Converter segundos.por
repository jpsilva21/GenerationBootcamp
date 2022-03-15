programa
{
	
	funcao inicio()
	{
		inteiro tempoSeg, tempoMin, tempoH
		escreva("Qual o tempo em segundos? ")
		leia(tempoSeg)

		tempoH= (tempoSeg/3600)
		tempoMin= (tempoSeg%3600)/60
		tempoSeg= (tempoSeg%3600)%60

		escreva("\nO tempo é de ", tempoH , " horas ", tempoMin , " minutos e ", tempoSeg , " segundos ")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */