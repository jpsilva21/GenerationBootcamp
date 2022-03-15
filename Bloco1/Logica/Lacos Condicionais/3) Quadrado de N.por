programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real n1, n2, n3, n4, Qn1, Qn2, Qn3, Qn4
		escreva("Insira N1: ")
		leia(n1)
		escreva("\nInsira N2: ")
		leia(n2)
		escreva("\nInsira N3: ")
		leia(n3)
		escreva("\nInsira N4: ")
		leia(n4)
		limpa()

		Qn1 = (n1*n1)
		Qn2 = (n2*n2)
		Qn3 = (n3*n3)
		Qn4 = (n4*n4)

		se (Qn3>=1000)
		{
			escreva("O qaudrado de N3 é: ", Qn3)
		}

		senao
		escreva("Os quadrados de N1, N2, N3 e N4, são respectivamente: ", "\n", Qn1, "\n", Qn2,"\n", Qn3,"\n", Qn4)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 479; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */