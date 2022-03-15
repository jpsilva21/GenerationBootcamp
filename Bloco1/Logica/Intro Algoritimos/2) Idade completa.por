programa
{
	
	funcao inicio()
	{
		inteiro dia, mes, totalA, totalM, totalD, modANO, modMES
		escreva("\nDescubra sua Idade! ")

		escreva("\nQual sua idade em dias: ")
		leia(dia)

		totalD= dia
		totalM= dia/30
		totalA= dia/365
		modANO= (dia%365)/30
		modMES= (dia%365)%30

		escreva("Voce tem ", totalA, " anos e ", modANO, "meses e ", modMES, " dias.")
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