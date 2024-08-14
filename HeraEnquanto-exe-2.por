programa{
	
	inteiro idadeColega1, idadeColega2, idadeColega3, idadeColega4, idadeColega5, minhaIdade, somaDasIdades
	caracter ondeIr, dose
	
	funcao inicio(){

	escreva("Qual a sua idade? ")
	leia(minhaIdade)
	limpa()
	
	escreva("Qual a idade do colega 1? ")
	leia(idadeColega1)
	limpa()

	escreva("Qual a idade do colega 2? ")
	leia(idadeColega2)
	limpa()

	escreva("Qual a idade do colega 3? ")
	leia(idadeColega3)
	limpa()

	escreva("Qual a idade do colega 4? ")
	leia(idadeColega4)
	limpa()

	escreva("Qual a idade do colega 5? ")
	leia(idadeColega5)
	limpa()

	somaDasIdades = minhaIdade + idadeColega1 + idadeColega2 + idadeColega3 + idadeColega4 + idadeColega5
 
	se(somaDasIdades >= 108){
		se(idadeColega1 >= 18 e idadeColega2 >= 18 e idadeColega3 >= 18 e idadeColega4 >= 18 e idadeColega5 >= 18 e minhaIdade >= 18){
			escreva("Onde você quer ir?\n b = Bar\n s = Show\n Digite aqui: ")
			leia(ondeIr)
			limpa()
			
			escolha(ondeIr) {
		
			caso 'b':
				escreva("Vamos ao bar!\n")
				dose = 's'
	
				enquanto(dose != 'n'){
					escreva("Deseja tomar mais uma?(s/n) ")
					leia(dose)
				}
			pare
				
			caso 's':
				escreva("Vamos ao show!\n")
			pare
			
			caso contrario:
				escreva("Vamos ficar em casa!")
			pare
			}

			
		}senao{
			escreva("Não podemos sair.")
		}
	}senao{
		escreva("Não podemos sair.")
	}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1080; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */