programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util-->u
	
	caracter opcaoLogin, opcaoSair
	cadeia usuario[5][2] = {{"lucas@email.com","12345"},{"ana@email.com","12345"},{"gabriel@email.com","12345"},{"renata@email.com","12345"},{"diogo@email.com","12345"}}
	
	cadeia digitarUsuario, digitarSenha, nomeUsuario
	logico valida1 = falso

	cadeia matrizCatalogoNintendo[4][5] = 
      {{"1","Mario", "20", "Coins", "2"}, 
      {"2","Zelda", "18", "Coins", "5"}, 
      {"3","Donkey Kong", "10", "Coins", "7"}, 
      {"4","Pac-man", "12", "Coins", "9"}}

      cadeia matrizCatalogoPlaystation[4][5] = 
      {{"5","Resident Evil 2", "20", "Coins", "3"}, 
      {"6","Disney's Aladdin in Nasira's Revenge", "15", "Coins", "6"}, 
      {"7","Crash Bandicoot", "14", "Coins", "8"}, 
      {"8","Castlevania: Symphony of the Night", "19", "Coins", "2"}}

      caracter escolhaCatalogo
	
	funcao inicio()
	{
		menuLogin()
	}
	funcao menuLogin(){
		escreva("\t     ¦─ ⚄ Olá, seja bem vindo(a) a Retro Games! ♞ ─¦\n")
		escreva("\n\t\t\t Deseja entrar na loja?\n\n[S] - Sim\n[N] - Não\n\nEscreva: ")
		leia(opcaoLogin)
		limpa()
		
		escolha(opcaoLogin){
			//caso o usuário informe a opcao SIM
			caso 's':
				login() //função login
			pare
			caso 'S':
				login() //função login
			pare
			//caso o usuário informe a opcao NÃO
			caso 'n':
			escreva("Volte sempre que desejar!\n")
			pare
			caso 'N':
			escreva("Volte sempre que desejar!\n")
			pare
			//caso o usuário não informe alguma opção válida
			caso contrario: 
			escreva("GAME OVER.\n")
			u.aguarde(2000)
			limpa()
			menuLogin()
		}
	}	
	funcao login(){ // check
			escreva("\t Opa, maravilha! Então vamos lá!\n\t ⇩ Preencha seus dados abaixo ⇩ \n\nComo podemos te chamar caro gamer? ")
			leia(nomeUsuario)
			limpa()
			escreva(nomeUsuario," informe o nome de usuário: ")
			leia(digitarUsuario)
			escreva("Informe a senha: ")
			leia(digitarSenha)
			limpa()
			escreva("Deseja efetuar o login? \n[S] - Sim\n[N] - Não\nEscreva: ")
			leia(opcaoSair)
			limpa()
			escolha(opcaoSair) { // check
				caso 's':
					escreva("Entrando na conta\n")
					u.aguarde(1000)
				pare
				caso 'S':
					escreva("Entrando na conta\n")
					u.aguarde(1000)
				pare
				caso 'n':
					escreva("Usuário desconectado ")
				pare
				caso 'N':
					escreva("Usuário desconectado ")
				pare
				caso contrario:
					escreva("ERROR 404\n") 
					limpa()
					menuLogin()
				pare
			}
			escreva("Carregando")
			para(inteiro i=0; i<3; i++) {
			escreva(".")
			u.aguarde(700)
			}
			limpa()
				para(inteiro i=0;i<5;i++){
					se(digitarUsuario == usuario[i][0] e digitarSenha == usuario[i][1]){
						valida1 = verdadeiro
					}
				}
				
			se(valida1 == verdadeiro){
				escreva("Login bem sucedido.\n")
				limpa()
				escreva(nomeUsuario, ", Bem vindo a Retro Gamer")
				u.aguarde(1500)
				limpa()
				menuCategorias()
			}senao{
				enquanto(valida1 == falso){
				escreva("Usuário ou senha incorretos.\nTente novamente.")
				u.aguarde(2000)
				limpa()
				login()
				}
			}
	}
	funcao menuCategorias(){

		
		escreva(nomeUsuario,", Aqui estão algumas opções de Catálogo de Games!")
		u.aguarde(1500)
		limpa()

		escreva("Temos dois catálogos de Games:\n\n")
		escreva("[1] - Jogos para Nintendo\n[2] - Jogos de Playstation 1\n[3] - Sair\n\n")
		escreva("Utilize a 3º opção, caso queira sair deste menu!\n\n")
		escreva("Escreva: ")
		leia(escolhaCatalogo)
		u.aguarde(1000)
		limpa()

		escolha(escolhaCatalogo)
		{
			caso '1':
			
			escreva("Ótima pedida! Segue nosso catalogo de jogos Nintendo:\n\n")
			
			para(inteiro i = 0; i < 4; i++)
			{
            	escreva(matrizCatalogoNintendo[i][0],"º - ","ID",": ", matrizCatalogoNintendo[i][1]," ",matrizCatalogoNintendo[i][2]," ",matrizCatalogoNintendo[i][3],"\n")
			}
			pare
	
			caso '2':
			
			escreva("Ótima pedida! Segue nosso catalogo de jogos Playstation:\n\n")
			
			para(inteiro i = 0; i < 4; i++)
			{
            	escreva(matrizCatalogoPlaystation[i][0],"º - ","ID",": ", matrizCatalogoPlaystation[i][1]," ",matrizCatalogoPlaystation[i][2]," ",matrizCatalogoNintendo[i][3],"\n")
			}
			pare

			caso '3':
			
			inteiro contadorLoading = 3
			escreva("Carregando ações")
			
			para(inteiro i = 0; i<contadorLoading;i++)
			{
				escreva(".")
				u.aguarde(500)
			}
			u.aguarde(200)
			limpa()
			escreva("Obrigado por ter visitado nossa loja! Ate mais.")
			u.aguarde(2000)
			limpa()	
			login()
			
			pare
			caso contrario:
			
				escreva("\tOpção incorreta! Tente novamente!\n\n\t\tOpções possíveis:\n\n[1] Games Nintendo\t[2] Games Playstation\t[3] Sair")
				u.aguarde(2500)
				limpa()
				menuCategorias()
				
			pare
		}
	}
	funcao menuProdutos(){
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2876; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuario, 8, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */