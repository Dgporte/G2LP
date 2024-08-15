programa
{
	inclua biblioteca Util-->u
	
	
	funcao inicio()
	{	
		inteiro parada =10
		
		para(inteiro i=0; i<parada;i++)
		{
		desenhar(' ',"_________\n",5)
		desenhar(' ',"|_________|\n",4)
		desenhar(' ',"/             \\",2)
		desenhar(' ',"\n | ###       ### |",3)
		desenhar(' ',"\n | ###       ### |",3)
		desenhar(' ',"\n  \\_____________/",8)
		u.aguarde(850)
		limpa()
		
		}
		
	}

	funcao desenhar(caracter textoVazio, cadeia textoDesenho, inteiro linha)
		{
			para(inteiro i=0;i<linha;i++)
			{
				escreva(textoVazio)
				
			}
			escreva(textoDesenho)
			
		}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */