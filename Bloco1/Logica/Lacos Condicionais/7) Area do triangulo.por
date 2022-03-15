programa
{
	
	funcao inicio()
	{
		real b, a, area
		escreva("Descubra se Area do triângulo é maior que zero!")
		escreva("\nInsira valor da base(b): ")
		leia(b)
		escreva("\nInsira a altura(a): ")
		leia(a)


		se (a>0 e b>0)
		{
			area= (b*a)/2
			escreva("\nA área é ", area, " , logo, positivo e maior que zero")
		}

		senao
		escreva("\nOpção invalida, (a) ou (b) não devem ser menores ou iguais a zero")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */