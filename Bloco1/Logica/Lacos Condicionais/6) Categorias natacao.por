programa
{
	
	funcao inicio()
	{
		inteiro idade
		escreva("Descubra sua categoria na natação!")
		escreva("\nInsira sua idade: ")
		leia(idade)

		se (idade>4 e idade<8)
		{
			escreva("\nSua categoria é: Infantil A")
		}

		senao se (idade>7 e idade<12)
		{
			escreva("\nSua categoria é: Infantil B")
		}

		senao se (idade>11 e idade<14)
		{
			escreva("\nSua categoria é: Juvenil A")
		}

		senao se (idade>13 e idade<18)
		{
			escreva("\nSua categoria é: Juvenil B")
		}

		senao se (idade>=18)
		{
			escreva("\nSua categoria é: Adulto")
		}

		senao 
		{
			escreva("Você tem menos de 4 anos, infelizmente não participa de nenhuma categoria!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 655; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */