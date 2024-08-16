programa
{
	inclua biblioteca Tipos--> tp
	inclua biblioteca Texto--> t
	inclua biblioteca Util--> u
	inclua biblioteca Sons --> s
	
	caracter opcaoLogin, opcaoSair, alterarUsuario, opcaoSistema, opcaoRespostaAdmin, respostaAdmin 
	cadeia usuario[7][2] = {{"lucas@email.com","12345"},{"ana@email.com","12345"},{"gabriel@email.com","12345"},{"renata@email.com","12345"},{"diogo@email.com","12345"},{"admin","admin123"},{" "," "}}
	
	cadeia digitarUsuario, digitarSenha, nomeUsuario, usuarioAdicionado, usuarioSenha, cadeiaAdmin, usuarioCadeia
	inteiro soma = 0, soma2 = 0, usuarioAlterado
	logico valida1 = falso

	cadeia matrizCatalogo[8][5] = 
      {{"1","Mario", "20", "Coins", "2"}, 
      {"2","Zelda", "18", "Coins", "5"}, 
      {"3","Donkey Kong", "10", "Coins", "7"}, 
      {"4","Pac-man", "12", "Coins", "9"},
      {"5","Resident Evil 2", "20", "Coins", "3"}, 
      {"6","Disney's Aladdin in Nasira's Revenge", "15", "Coins", "6"}, 
      {"7","Crash Bandicoot", "14", "Coins", "8"}, 
      {"8","Castlevania: Symphony of the Night", "19", "Coins", "2"}}

      caracter escolhaCatalogo
	
	funcao inicio()
	{
		logoPressStart()
		logoLp()
		menuLogin()
	}
	funcao menuLogin(){
		escreva("\t     ¦─ ⚄ Olá, seja bem vindo(a) à Press Start! ♞ ─¦\n")
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
			escreva("ERROR.\n")
			escreva("Try again!.\n")
			u.aguarde(2000)
			limpa()
			menuLogin()
		}
	}	
	funcao login(){ 
			escreva("\t Opa, maravilha! Então vamos lá!\n\t ⇩ Preencha seus dados abaixo ⇩ \n\nComo podemos te chamar, caro gamer? ")
			leia(nomeUsuario)
			limpa()
			escreva(nomeUsuario,", informe o nome de usuário: ")
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
					escreva("Usuário desconectado!\n")
					u.aguarde(3000)
					limpa()
					menuLogin()
				pare
				caso 'N':
					escreva("Usuário desconectado!\n")
					u.aguarde(3000)
					limpa()
					menuLogin()
				pare
				caso contrario:
					escreva("ERROR\n")
					escreva("Try again!\n")
					u.aguarde(3000) 
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
					}se(digitarUsuario == "admin" e digitarSenha == "admin123"){
						valida1 = verdadeiro
						escreva("Você deseja alterar algo no sistema?\n[S] - Sim\n[N] - Não\nDigite aqui: ")
						leia(alterarUsuario)
						limpa()
						escolha(alterarUsuario){
						
						caso 's':
							mexerSistema()
						pare
						caso 'S':
							mexerSistema()
						pare
						caso 'n':
							escreva("Ok, tenha um ótimo dia!")
						pare
						caso 'N':
							escreva("Ok, tenha um ótimo dia!")
						pare
					
					}
					pare
				}
			}
				
			se(valida1 == verdadeiro){
				escreva("\nLogin bem sucedido.\n")
				escreva("Olá ", nomeUsuario, ", vamos conhecer universos e embarcar em novas aventuras!")
				u.aguarde(3000)
				limpa()
				menuCategorias()
			}senao{
				enquanto(valida1 == falso){
				escreva("Usuário ou senha incorretos.\nFique conosco para tentar novamente!\n")
				u.aguarde(3000)
				limpa()
				login()
				}
			}
	}
	funcao mexerSistema(){
		escreva("[1] - Deletar usuário \n[2] - Alterar usuário existente\n[3] - Adicionar usuário novo\nDigite a opção: ")
		leia(opcaoSistema)
		limpa()
		escolha(opcaoSistema) {
			caso '1':
				delet()
			pare
			caso '2':
				alterarNovo()
			pare
			caso '3':
				adicionarNovo()
			pare
			caso contrario:
				escreva("Opção inválida, tenha um otimo dia!")
			pare
		}
	}
	funcao adicionarNovo() {
		escreva("Você deseja alterar algum usuário?\n[S] - Sim\n[N] - Não\nDigite aqui: ")
			leia(opcaoRespostaAdmin)
			limpa()
			escolha(opcaoRespostaAdmin) {
				caso 's':
				escreva("Atualmente esses são os usuarios cadastrados no sistema.\n\n")
				escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
				u.aguarde(3000)
				limpa()
				escreva("Digite o usuário que você deseja adicionar: ")
				leia(usuarioAdicionado)
				
				usuario[6][0] = usuarioAdicionado
				escreva("Digite sua senha que você deseja adicionar: ")
				leia(usuarioSenha)
				limpa()
				//usuario[6][1] = usuarioAdicionado
				escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n","[6] - ",usuarioAdicionado,"\n\n")
				u.aguarde(3000)
				limpa()
				pare

				caso 'S':
				escreva("Atualmente esses são os usuarios cadastrados no sistema.\n\n")
				escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
				u.aguarde(3000)
				limpa()
				escreva("\nDigite o usuário que você deseja adicionar\n: ")
				leia(usuarioAdicionado)
				
				usuario[6][0] = usuarioAdicionado
				escreva("\nDigite sua senha que você deseja adicionar\n: ")
				leia(usuarioSenha)
				limpa()
				//usuario[6][1] = usuarioAdicionado
				escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n","[6] - ",usuarioAdicionado,"\n\n")
				u.aguarde(3000)
				limpa()
				pare

				caso 'n':
					escreva("Obrigado pelos seus serviços!")
				pare
				caso 'N':
					escreva("Obrigado pelos seus serviços!")
				pare
				caso contrario:
					escreva("Opção errada, tente novamente")
				pare
		}
				alterarMais()
	}
	funcao delet(){
		inteiro lista=0, respDelet, delet1=0
		escreva("\nQuem você deseja deletar? \n\n")
		para(inteiro i=0;i<5;i++){
		soma += i
			para(inteiro j=0;i<5;i++){
			lista += j + 1
		 	escreva("[",lista,"]",usuario[i][0],"\n")
			}
			pare
		}
		escreva("\nUsuário: ")
		leia(respDelet)
		limpa()
		escolha(respDelet){
			caso 1: //deletar Lucas
			para(inteiro i=1;i<5;i++){
			soma += i
			para(inteiro j=0;i<5;i++){
			delet1 += j + 1
		 	escreva("[",delet1,"]",usuario[i][0],"\n")
		 	pare
			}
			}
			pare
			
			caso 2: //deletar Ana
			para(inteiro i=0;i<5;i++){
				se(i != 1){	
				soma += i
				para(inteiro j=0;i<5;i++){
				delet1 += j + 1
			 	escreva("[",delet1,"]",usuario[i][0],"\n")
			 	pare
				}
				}
			}
			pare
			caso 3: // deletar Gabriel
			para(inteiro i=0;i<5;i++){
				se(i!=2){
				soma += i
				para(inteiro j=0;i<5;i++){
				delet1 += j + 1
			 	escreva("[",delet1,"]",usuario[i][0],"\n")
			 	pare
				}
				}
			}
			pare
			caso 4: // deletar Renata
			para(inteiro i=0;i<5;i++){
				se(i!=3){
				soma += i
				para(inteiro j=0;j<5;j++){
				delet1 += j + 1
				escreva("[",delet1,"]",usuario[i][0],"\n")
				pare
				}
				}
			}
			pare
			caso 5: //deletar diogo
			para(inteiro i=0;i<5;i++){
				se(i!=4){
				soma += i
				para(inteiro j=0;j<5;j++){
				delet1 += j + 1
				escreva("[",delet1,"]",usuario[i][0],"\n")
				pare
				}
				}
			}
		}
			escreva("\nUsuário deletado com sucesso.\n")
			u.aguarde(2500)
			escreva("Aguarde")
			para(inteiro i=0; i<3; i++) {
			escreva(".")
			u.aguarde(700)
			}
			limpa()
			alterarMais()
	}
	funcao alterarNovo() {
			//caracter opcaoRespostaAdmin

	   	  escreva("Você deseja alterar algum usuário?\n[S] - Sim\n[N] - Não\nDigite aqui: ")
	       leia(opcaoRespostaAdmin)
	       limpa()
	       escolha(opcaoRespostaAdmin) {
	           caso 's':
	           escreva("Atualmente esses são os usuarios cadastrados no sistema.\n\n")
	           escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
	           u.aguarde(3000)
	           escreva("Digite o usuário que você deseja alterar: ")
	           leia(usuarioAlterado)
	           escreva("Digite sua alteração: ")
	           leia(usuarioCadeia)

			 escreva("Digite sua senha que você deseja adicionar: ")
	           leia(usuarioSenha)
	           limpa()
				
	           escolha(usuarioAlterado){
	           	caso 1: // Lucas
	           		usuario[0][0] = usuarioCadeia
	           		escreva("[1] - ",usuarioCadeia,"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
	           	pare
	           	caso 2: // Ana
	           		usuario[1][0] = usuarioCadeia
	           		escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuarioCadeia,"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
	           	pare
	           	caso 3: // Gabriel
	           		usuario[2][0] = usuarioCadeia
	           		escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuarioCadeia,"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuario[4][0],"\n")
	           	pare
	           	caso 4: // Renata
	           		usuario[3][0] = usuarioCadeia
	           		escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuarioCadeia,"\n","[5] - ",usuario[4][0],"\n")
	           	pare
	           	caso 5: // Renata
	           		usuario[4][0] = usuarioCadeia
	           		escreva("[1] - ",usuario[0][0],"\n","[2] - ",usuario[1][0],"\n","[3] - ",usuario[2][0],"\n","[4] - ",usuario[3][0],"\n","[5] - ",usuarioCadeia,"\n")
	           	pare
	           }
	 }
	 			alterarMais()
}
	funcao menuCategorias(){
	escreva(nomeUsuario,", aqui estão os universos disponíveis no nosso catálogo!")
	u.aguarde(1020)
	limpa()
	aguardeMenos()

	escreva("Temos dois catálogos de Games:\n\n")
	escreva("[1] - Jogos para Nintendo\n[2] - Jogos de Playstation 1\n[3] - Sair\n\n")
	escreva("Utilize a 3º opção, caso queira sair deste menu!\n\n")
	escreva("Escreva: ")
	leia(escolhaCatalogo)
	u.aguarde(720)
	limpa()
	aguardeMenos()

		escolha(escolhaCatalogo)
		{
			caso '1':
			
			escreva("Ótima pedida! Segue nosso catálogo de universos Nintendo:\n\n")
			
				para(inteiro i = 0; i < 4; i++)
					{
	            		escreva(matrizCatalogo[i][0]," - ","ID",": ", matrizCatalogo[i][1]," ",matrizCatalogo[i][2]," ",matrizCatalogo[i][3],"\n")
					}
					escreva("\n")
					cadeia resposta
					escreva("Voce realmente gostou desses universos?\n\n[S] Sim\n[N] Não\n\nEscreva: ")
					leia(resposta)
					cadeia resposta_alta = t.caixa_alta(resposta)
						se(resposta_alta !="S")
						{	u.aguarde(720)
							limpa()
							aguardeMenos()
							menuCategorias()
						}
						senao
						{	u.aguarde(720)
							limpa()
							aguardeMenos()
						para(inteiro i = 0; i < 4; i++)
							{
			            		escreva(matrizCatalogo[i][0]," - ","ID",": ", matrizCatalogo[i][1]," ",matrizCatalogo[i][2]," ",matrizCatalogo[i][3],"\n")
							}
							escreva("\n")
							produtos1()
						}
				pare
	
			caso '2':
			
			escreva("Ótima pedida! Segue nosso catálogo de universos Playstation:\n\n")
			
				para(inteiro i = 4; i <8; i++)
				{
            		escreva(matrizCatalogo[i][0]," - ","ID",": ", matrizCatalogo[i][1]," ",matrizCatalogo[i][2]," ",matrizCatalogo[i][3],"\n")
				}
				escreva("\n")
				cadeia resposta2
					escreva("Voce realmente gostou desses universos?\n\n[S] Sim\n[N] Não\n\nEscreva: ")
					leia(resposta2)
					cadeia resposta_alta2 = t.caixa_alta(resposta2)
						se(resposta_alta2 !="S")
						{
							u.aguarde(720)
							limpa()
							aguardeMenos()
							menuCategorias()
						}
						senao
						{
							u.aguarde(720)
							limpa()
							aguardeMenos()
							para(inteiro i = 4; i < 8; i++)
							{
			            		escreva(matrizCatalogo[i][0]," - ","ID",": ", matrizCatalogo[i][1]," ",matrizCatalogo[i][2]," ",matrizCatalogo[i][3],"\n")
							}
							escreva("\n")
							produtos2()
						}
				
			pare

			caso '3':
			
			escreva("Obrigado por ter visitado nossa loja! Até mais!")
			u.aguarde(720)
			limpa()
			aguardeMenos()
			menuLogin()
			
			pare
			caso contrario:
			
			escreva("\tOpção incorreta! Tente novamente!\n\n\t\tOpções possíveis:\n\n[1] Games Nintendo\t[2] Games Playstation\t[3] Sair")
			u.aguarde(3000)
			limpa()
			aguardeMenos()
			menuCategorias()
				
			pare
		}
	}
	funcao produtos1(){
	inteiro opcao = 0
	logico validacao = falso
		

	enquanto(validacao == falso){
		escreva("Em qual universo deseja embarcar? ")
		leia(opcao)
		se(opcao >= 1 e opcao <= 4){
			escreva("Muito bem, você escolheu o seu destino!\n")
			escreva("Vamos mergulhar nessa aventura!")
			validacao = verdadeiro
		}senao{
			escreva("Você escolheu um universo ainda desconhecido!\n")
			escreva("Que tal mergulharmos em uma das aventuras disponíveis?")
			u.aguarde(5000)
			limpa()
		}	
	}

 	u.aguarde(3000)
 	limpa()
 	
	escreva("Entrando em um novo mundo ")
	aguarde()
	limpa()

	escolha(opcao){
		caso 1:
			
			//Imagem
			escreva("Bem vindo ao universo do Mario Bros!\n\n")
			logoMario()
			musica("Mario.mp3")
			escreva("\n\n")
			escreva("\n★ Descrição: Acompanhe o encanador Mario Bros em sua jornada para resgatar a princesa Peach.\n Mas cuidado! O Browser está à espreita e pode atrapalhar essa aventura!") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto com o Mario, você só precisará de 20 coins. Mas corra! Temos apenas ", matrizCatalogo[0][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()	
		pare
		caso 2:
	
			//Imagem
			escreva("Bem vindo ao universo de Zelda!\n\n")
			logoZelda()
			musica("Zelda.mp3")
			escreva("\n")
			escreva("\n☡ Descrição: Junte-se a Link, o destemido herói, para desbravar reinos encantados,\n enfrentar monstros e desvendar enigmas para salvar a princesa Zelda e restaurar a paz em Hyrule.") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto a Zelda, você só precisará de 18 coins. Mas corra! Temos apenas ", matrizCatalogo[1][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
			
		pare
		caso 3:
	
			//Imagem
			escreva("Bem vindo ao universo de Donkey Kong!\n\n")
			musica("DonkeyKong.mp3")
			logoDonkeyKong()
			escreva("\n")
			escreva("\nƊ Descrição: Junte-se a Donkey Kong, enfrente obstáculos e inimigos e o ajude a resgatar sua amada, enfrentando plataformas, rochas e barris pelo caminho.\n Prepare-se para um jogo repleto de ação, pulos e diversão!") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Donkey Kong, você só precisará de 10 coins. Mas corra! Temos apenas ", matrizCatalogo[2][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
	
		pare
		caso 4:
	
			//Imagem
	
			escreva("Bem vindo ao universo de Pac-man!\n\n")
			musica("Pacman.mp3")
			logoPacman()
			escreva("\n")
			escreva("\n⋯ Descrição: Junte-se a Pac-man em uma clássica corrida labiríntica para devorar pellets e frutas,\n enquanto foge de fantasmas famintos. Cuidado! Eles são rápidos!") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Pac-man, você só precisará de 12 coins. Mas corra! Temos apenas ", matrizCatalogo[3][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
	
		pare
	}
}
	funcao produtos2(){
	inteiro opcao = 0
	logico validacao = falso
		

	enquanto(validacao == falso){
		escreva("Em qual universo deseja embarcar? ")
		leia(opcao)
		se(opcao >= 5 e opcao <= 8){
			escreva("Muito bem, você escolheu o seu destino!\n\n")
			escreva("Vamos mergulhar nessa aventura!")
			validacao = verdadeiro
		}senao{
			escreva("Você escolheu um universo ainda desconhecido!\n\n")
			escreva("Que tal mergulharmos em uma das aventuras disponíveis?")
			u.aguarde(5000)
			limpa()
		}	
	}

 	u.aguarde(3000)
 	limpa()
 	
	escreva("Entrando em um novo mundo ")
	aguarde()
	limpa()
	
	escolha(opcao){
		caso 5:
	
			//Imagem
			escreva("Bem vindo ao universo de Resident Evil!\n\n")
			musica("ResidentEvil.mp3")
			logoResidente()
			escreva("\n")
			escreva("\n☢ Descrição: mergulhe em uma noite de terror em Raccoon City, onde os zumbis e criaturas grotescas dominam.\n Junte-se a Leon e Claire enquanto desvendam mistérios, enfrentam horrores e lutam pela sobrevivência em uma batalha de pura tensão e adrenalina!") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Leon e Claire, você só precisará de 20 coins. Mas corra! Temos apenas ", matrizCatalogo[4][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
	
		pare
		caso 6:
	
			//Imagem
	
			escreva("Bem vindo ao universo de Aladdin!\n\n")
			musica("Aladdin.mp3")
			logoAladdin()
			escreva("\n")
			escreva("\n♔ Descrição: voe em um tapete mágico e viva uma aventura encantada nas ruas de Agrabah.\n Com a ajuda de um gênio travesso e sua astúcia, enfrente vilões e descubra tesouros enquanto busca conquistar o coração da princesa e mudar seu destino.") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Aladdin, você só precisará de 15 coins. Mas corra! Temos apenas ", matrizCatalogo[5][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
		
		pare
		caso 7:
	
			//Imagem
	
			escreva("Bem vindo ao universo de Crash!\n\n")
			musica("Crash.mp3")
			logoCrash()
			escreva("\n")
			escreva("\n© Descrição: Junte-se a Crash em uma jornada alucinante, cheia de saltos, corridas e explosões.\n Navegue por selvas, vulcões e labirintos, enquanto enfrenta vilões e coleta gemas para salvar o dia com estilo e muita diversão!") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Crash, você só precisará de 14 coins. Mas corra! Temos apenas ", matrizCatalogo[6][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()
		pare
		caso 8:
	
			//Imagem
	
			escreva("Bem vindo ao universo de Castlevania!\n\n")
			musica("Castlevania.mp3")
			logoCastlevania()
			escreva("\n")
			escreva("\n♜ Descrição: enfrente as trevas em um castelo sinistro repleto de monstros e armadilhas.\n Armado com uma variedade de armas e coragem, derrote o Conde Drácula e seus seguidores, enquanto explora corredores góticos e desvenda segredos sombrios.") 
			escreva("\n")
			escreva("\n")
			escreva("Para embarcar junto de Castlevania, você só precisará de 19 coins. Mas corra! Temos apenas ", matrizCatalogo[7][4]," ingressos no nosso estoque!")
			escreva("\n")
			carrinho()	
		pare
	}
	}
	funcao aguarde(){
		para(inteiro i = 0; i < 20; i++){
			u.aguarde(250)
			escreva("█")
			u.aguarde(250)
		}
	}
	funcao aguardeMenos(){
		escreva("\nCarregando ficheiro [")
		para(inteiro i = 0; i < 12; i++){
			u.aguarde(250)
			escreva("∎")
			u.aguarde(250)
		}
		escreva("]")
		u.aguarde(450)
		limpa()
	}
	funcao desenhar(caracter textoVazio, cadeia textoDesenho, inteiro linha){
		para(inteiro i = 0; i < linha; i++){
			escreva(textoVazio)		
		}
		escreva(textoDesenho)		
	}
	funcao musica(cadeia mp3){
		
		inteiro som = s.carregar_som(mp3)
		s.reproduzir_som(som, verdadeiro)
		u.aguarde(10000)
		s.interromper_som(som)
	
	}
	funcao carrinho(){

	caracter opcaoCarrinho
	
	escreva("\nDeseja salvar alguns ingressos no seu carrinho? Digite 'S' para Sim e 'N' para Não: ")
	leia(opcaoCarrinho)
		
		se(opcaoCarrinho == 'S' ou opcaoCarrinho == 's'){
			escreva("Ótimo! Nos vemos em breve!")
		}senao se(opcaoCarrinho == 'N' ou opcaoCarrinho == 'n'){
			escreva("Que pena! Então vamos visitar outros universos!\n")
			u.aguarde(3000)
			limpa()
			menuCategorias()
		}senao{
			escreva("Entrada inválida!")
			carrinho()
		}
			
	
	}
	//Daqui em diante teremos nossas logos do trabalho.
	funcao logoMario()
	{

			escreva( 
		     "                     .=+*+=.                             \n", 
			"                 ##############*                         \n",
			"              +#####  #  .#  #####-                      \n",
			"            -######  ### ###  ######                     \n",
			"           #######+ ##  #  ## #######*                   \n",
			"          #########++-     .=+#########                  \n",
			"         ###############################                 \n",
			"        #################################                \n",
			"       +########%@@@.       .@@@@########:               \n",
			"       ######:+@#--#@.     :@%:.+@..#####+               \n",
			"       ####%  .. .....     :...  ..  %###-               \n",
			"        ###%    . .-+.     -+-  .    ####                \n",
			"       ..*#%   :  =@#@    .@+@=      ###:.               \n",
			"      -:.:#%   - :+@@@:...=@@@=  .   ##=.::              \n",
			"      #  *## .  . +-         *= :  . ##=  +              \n",
			"      :.:.#.@@@*..-           :.:#@@@.%....              \n",
			"       . .-.@@@@@@#           %@@@@@@ -. .               \n",
			"        . . -@@@@@@+         =@@@@@%: . .                \n",
			"          :    +@@@@@#=-::-+@@@@@=    .                  \n",
			"           .     ..-@@@@@@@@@:..    ..                   \n",
			"             .       .:::::.       .                     \n",
			"                .       .       ..                       \n",
			"                   ..       .                            \n")
			
               
		
	}
	funcao logoZelda()
	{	
		inteiro parada = 1
		
		para(inteiro i = 0; i < parada; i++)
		{
		 
		  desenhar(' ', "  ..-'`       ````---.", 5)
            escreva("\n")
            desenhar(' ', "       .'          ___ .'````.'SS'.", 4)
            escreva("\n")
            desenhar(' ', "      /        ..-SS####'.  /SSHH##'.", 3)
            escreva("\n")
            desenhar(' ', "     |       .'SSSHHHH##|/#/#HH#H####'.", 2)
            escreva("\n")
            desenhar(' ', "    /      .'SSHHHHH####/||#/: \\SHH#####\\", 1)
            escreva("\n")
            desenhar(' ', "   /      /SSHHHHH#####/!||;`___|SSHH###\\", 0)
            escreva("\n")
            desenhar(' ', " -..__    /SSSHHH######.         \\SSSHH###\\", 0)
            escreva("\n")
            desenhar(' ', " `.'-.''--._SHHH#####.'           '.SH####/", 0)
            escreva("\n")
            desenhar(' ', "   '. ``'-  '/SH####`/_             `|H##/", 0)
            escreva("\n")
            desenhar(' ', "   | '.     /SSHH###|`'==.       .=='/\\H|", 0)
            escreva("\n")
            desenhar(' ', "   |   `'-.|SHHHH##/\\__\\/        /\\//|~|/", 0)
            escreva("\n")
            desenhar(' ', "   |    |S#|/HHH##/             |``  |", 0)
            escreva("\n")
            desenhar(' ', "   |    \\H' |H#.'`              \\    |", 0)
            escreva("\n")
            desenhar(' ', "   |        ''`|               -     /", 0)
            escreva("\n")
            desenhar(' ', "   |          /H\\          .----    /", 0)
            escreva("\n")
            desenhar(' ', "   |         |H#/'.           `    /", 0)
            escreva("\n")
            desenhar(' ', "   |          \\| | '..            /", 0)
            escreva("\n")
            desenhar(' ', "   |    ^~DLF   /|    ''..______.'.", 0)
            escreva("\n")
            desenhar(' ', "    \\          //\\__    _..-. | ", 0)
            escreva("\n")
            desenhar(' ', "     \\         ||   ````     \\ |_", 0)
            escreva("\n")
            desenhar(' ', "      \\    _.-|               \\| |_", 0)
            escreva("\n")
            desenhar(' ', "      _\\_.-'   `'''''-.        |   `--.", 0)
            escreva("\n")
            desenhar(' ', "  ''``    \\            `''-;    \\ /", 0)
            escreva("\n")
            desenhar(' ', "           \\      .-'|     ````.' -", 0)
            escreva("\n")
            desenhar(' ', "           |    .'  `--'''''-.. |/", 0)
            escreva("\n")
            desenhar(' ', "           |  .'               \\|", 0)
            escreva("\n")
            desenhar(' ', "           |.'", 0)
            escreva("\n")
		    
		   
		    
		}
	}
	funcao logoDonkeyKong()
	{
		
			escreva(    
"::::+######*+-::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n",
":-#%%%%@@@@@@%%+::::::::::::::::::::::::::::::::::::::::::::::::::::::\n",				                                           
"%%%@#-:::-*%@@@%=::::::::::::::::::::::::::::::::::::::::::::::::::::: \n",
"=%%*:::::::::-%@@#-:::::::::::::::::::::::::::::::::::::::::::::::::::\n",
"::::::::::::::+@@%-:::::::::::::::::::::::::::::::::::::::::::::::::::\n",
":::::::::::::-%@%%-::::-=:::::::::::::::::::::::::::::::::::::::::::::\n",
":::::::::::::=@@@*:::::=+*:-+#%%#-::::::::::-=##########-:::::::::::::\n",
":::::::::::::@@@@-=++-:-**+%@@@@@@#=::::::##########*##%##:::=*#####=:\n",
"::::::::::::%@@@-::=*#=:+*#%@@@@@@@%*:::=#########*+=++*####%###%%%%%#\n",
":::::::::::*@@@+-:::=#**+*##@@@@@*+*@=:-#############%%%%%%%%%%%%%%%%#\n",
"::::::::::=@@@%=+**+--###++*++=+===#@*+++#@@@@@@@@%%@@@@@@@@@@@#*==-::\n",
"::::::::::+@@%*::-####*****+++=++*@@#+**+=#%%%%=-----=*@+=+-::::::::::\n",
"::::::::::#@@@+::::=###**#######@@@@#*###**%##*::--:::-----:::::::::::\n",
"::::::::::#@@%+::=+**#######=:::+@@%%##****#%%#:-@@-:::=@#-:::::::::::\n",
"::::::::::+@@%#--===::-*++-:::::=@@@%%#*+++#@%%+:+*:::--#+-:::::::::::\n",
":::::::::::*@@%%=:::*##%@@%=::::*@%###%@#**+#*++========++**-:::::::::\n",
"::::::::::::=@@%%%*@%%%@@@@@+*%%#######%%*+++++===========++*+-:::::::\n",
":::::::::::---++=*@@@@@@@@@@@##########*#*++++++========+++++*+:::::::\n",
":::::::::---=+*==+%@@#@@@@@@%#######**###%*+%@*++=====+++**++++=::::::\n",
":::::::-=+##*##**#%%=-=+@@@@########-::++##*+#@@@@@@@@@@%%#+::::::::::\n",
"::::::::=##+=+++***+=++#@@@@#######=#+:#####***%%%#%%%%%##%#-:::::::::\n",
":::::::::**++++====+*##@@@@#**########*+######***#%%%%%%@@@%=:::::::::\n",
"::::::::::####*******#@@@@##*++###############@@##**+*****+-::::::::::\n",
"::::::::::+###########+:@%##*+==#############%@@@@#----:::::::::::::::\n",
"::::::::::=***####%%%%%+:*##*++++*###########@@@@@+:::::::::::::::::::\n",
":::::::::::+****#####***=-@##**+++*#########@@@@@@-:::::::::::::::::::\n",
":::::::::::::=+++=-=****=:@@@###*****######@@@@@@%::::::::::::::::::::\n",
":::::::::::::::::::::--:*@@@@@@@@###*=-:::@@@@@@@#::::::::::::::::::::\n",
":::::::::::::::----+*###@@@@@@@@@@#:::::::@@@@@@%-::::::::::::::::::::\n",
"::::::::::::::-**++++@@@@@@@@@@@@#-::::::%@@@@@%#:::::::::::::::::::::\n",
":::::::::::::::+****+%@@@@@@@@@%-:::::::*@@@@%%@::::::::::::::::::::::\n",
"::::::::::::::::::-#**#@@@@@+-::::::::::-@@@#%@@-:::::::::::::::::::::\n",
"::::::::::::::::::*###*##*-::::::::::::::=***+*+::::::::::::::::::::::\n",
"::::::::::::::::::+####*-:::::::::::::::+*+++++++-::::::::::::::::::::\n",
":::::::::::::::::-***+:::::::::::::::::=*++===+++=-:::::::::::::::::::\n",
"::::::::::::::::::-=-:::::::::::::::::=*+*++*+++++++=-::::::::::::::::\n",
"::::::::::::::::::::::::::::::::::::+***+:**#*++*****+++=:::::::::::::\n",
":::::::::::::::::::::::::::::::::::-**=:::++=:=**+****++=:::::::::::::\n",
"::::::::::::::::::::::::::::::::::::::::::--::::--::::::::::::::::::::\n")
       
		
	
	}
	funcao logoPacman()
	{
		
		
			escreva(                                               
"	      ##################                               \n",
"          #########################                       \n",
"        #############################                     \n",
"      #################################                   \n",
"    #####################################                 \n",
"   #######################################                \n",
"  #########################################               \n",
" ###########################################              \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"##########+------=#########=------+##########             \n",
"#########+--+@@%=--#######--=%@@+--=#########             \n",
"#########---@@@@#--*#####*--#@@@@---#########             \n",
"#########*--=%@*---#######---*@%=--+#########             \n",
"###########------=#########+------###########             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"#############################################             \n",
"######   ############   ###########     #####             \n",
"###         ######         ######         ###              \n")
		     
               
      
		
	}
	funcao logoResidente()
	{
		
			escreva(                                               
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@ @#############@ @@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@  -@###########@-  @@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@=    +@#########@=    =@@@@@@@@@@@@         \n",
"@@@@@@@@@@#       @#########@       *@@@@@@@@@@         \n",
"@@@@@@@@           @#######@           @@@@@@@@         \n",
"@@@@@@%            .@#####@             %@@@@@@         \n",
"@@@@@%##%@@=        =@###@-        =@@%##%@@@@@         \n",
"@@@@@@#######@@@     %%#%%    .%@@#######@@@@@@         \n",
"@@@@@@###########%@@+ @@@ +@@%###########@@@@@@         \n",
"@@@@@@###############%@@@%###############@@@@@@         \n",
"@@@@@@###########%@@+ @@@ +@@%###########@@@@@@         \n",
"@@@@@@#######@@@     #%#%%     @@@#######@@@@@@         \n",
"@@@@@%##%@@=        =@###@-        -@@%##%@@@@@         \n",
"@@@@@@%             @#####@:            %@@@@@@         \n",
"@@@@@@@@           @#######@           @@@@@@@@         \n",
"@@@@@@@@@@#       @#########@       #@@@@@@@@@@         \n",
"@@@@@@@@@@@@=    =@#########@+    =@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@  -@###########@-  @@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@ @#############@ @@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         \n",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         \n")
		     
               
       
		
	}
	funcao logoAladdin()
	{
		
			escreva(                                               
"				          ======                       \n",
"                                          =========+      \n",
"                                          ==========      \n",
"                                        =============     \n",
"                                      ================    \n",
"                                      =================   \n",
"                                      ==================  \n",
"                                     ==================+  \n",
"                                    ===================== \n",
"                       ++           ===================== \n",
"                       ++            ==================== \n",
"   =====              ++++                  ============= \n",
" ========            +++***                    ========   \n",
"====  ====         +++++****              ++   =====      \n",
"===    =====      ======++++++     +++++++**** ==         \n",
"===    +=+==============++++++++++++*******               \n",
"=====+====+++++++=======++++************                  \n",
"  ======   ++=++++++++++**************                    \n",
"            ++++++++++++************                      \n",
"             +++++++++++**********                        \n",
"                ++++++++*******                           \n",
"                     +++***                               \n",
"                    ++++****                              \n")
		     
               
       
		
	}
	funcao logoCrash()
	{
		
			escreva(                                               
"				       #-     *+                                   \n",       
"                                       =%#  +@#.                      \n",
"                     -#*:           =: *@@@@@%*  ::                   \n",
"                     .#####+.        %%*+*##@#*++.                    \n",
"                      =#######-.  :  ::=--+**##*   ::                 \n",
"                       *#######=:-##+-.     +*#=:#@*-.                \n",
"                       .####***+*##*+.   =-  *##%***###:              \n",
"                         *###**++***:  =*@+  +=      +:               \n",
"                          :+++**++++:  :*+. .*=+#%.  :                \n",
"     ####+**=*###+=.       =++=. ...=++++++*###*#-                    \n",
"    -#%@%###########*+=:   +++.....  ...-===+*####*+=  @%@%           \n",
"   .=*#*##%#########*+***+-*#=........    .....:---==*@@#+:           \n",
"  .+*#+=*#**#@###@%##+=+***##*..:=   .................                \n",
"   *##+*#*=+#**#@###%:  -***##=..=      ..------:::           ..      \n",
"     *###*+##=*#####:     *****:            -=+=:         =*####+     \n",
"        =####*####-        ##**=.               .=*+-.  =*####+.      \n",
"            -=-.            #+++..              .=++==++==##**+=-.    \n",
"                            +  ...............            :=**+=+=    \n",
"                                .....--===-:                          \n",
"                                     .-=-:                            \n")
		     
               
        
		
	}
	funcao logoCastlevania()
	{
		
			escreva("                          \n",
"                            #                    \n",
"    *@@+             #    @@:                    \n",
"     :@@%             @+  *@@%                   \n",
"       :@@@=#@@:     %@@  @@@@+                  \n",
"            *        @@@ :@@@@*                  \n",
"                      @@.%@@@@+                  \n",
"                =+    @   @@@@.                  \n",
"                @@    :   .@@#                   \n",
"               .@@-       @@@@.    :+            \n",
"           :   @@@@      @@@@@@:   @@            \n",
"           @   @@@@#    =@@@@@@:  =@@%           \n",
"          =@   @@@@%:.  +@@@@@@+  @@@@           \n",
"          @@%  @@@@      @@@@@@* *@@@@#          \n",
"         *@@@  @@@@.    @@@@@@@= :@@@@=          \n",
"         #@@@. @@@@@#+  @@@@@@@#  @@@@           \n",
"          @@@ @@@@@@@@@@@@@@@@@@@@@@@@-  @=      \n",
"          @@@%@@@@@@@@@@@@@@@@@@@@@@@@@#@@@=     \n",
"      .-#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+   \n",
"    *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*  \n",
"   #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \n",
"  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+#@=+@#   \n",
"  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ..    \n",
"  =.*@@@. @@@@@@@@@@@@@@@@@@@@@@@#@#.            \n",
"      *%   @@@@@@@@@@@@@@@@@@                    \n",
"             :--%@@@@@@@@+                       \n",
"                  -:                             \n")

       
       
		
	}
	funcao logoLp()
{
    inteiro espaco = 1
    para(inteiro i = 1; i <= espaco; i++)
    {
        escreva(
            "\t                                  \t \t.:+-.                                       \n", 
            "\t                                                .-%+#+.                                           \n", 
            "\t                                               .-#+@:                                             \n", 
            "\t                                          .+###=::%=+@.                                           \n",
            "\t                                       ..@=++++++++*@.                                            \n",
            "\t             ...:-*%%%##%%%*-..        .@+#%..:+#*=..  ..-*%%%##%%%*=:...                         \n", 
            "\t           ..*%=-+*=---=+*=::-##:..   ..#+@:        .:##-.:=*+=---=++-=%*:.                       \n", 
            "\t         .+@-*+------------.*=-::@+=====@##@+======+@::-=*.------------=*-@*..                    \n",
            "\t      ..*#=+------******-----:==-::::::::::::::::::::-=+:-----##*++#%=----++*#.                   \n",
            "\t     .=%-+-------+*=++*@@-------=--------------------=-------#*++++++#=-----+=%=.                 \n",
            "\t    .#+*---------%-+++%%#-------=--------------------=:------+@%++++#@#-------*+#.                \n",
            "\t   .%=*---------+*=+++@@=-------:*=++++++++++++++++=+:--------%%#####@=--------*=%.               \n", 
            "\t ..%=*---#%%%%%*=%*+%@%@%%%%%=---#-*-=#+---+###=--+-#--*%#*#@#--=+*+=--#%*+*@#--*=%.              \n", 
            "\t .++*---*=+++++*@-#%%@:+++++@@+--#-*-=@*---+@--@*-+-*-#######+%-------#======-%=-*+*.             \n",
            "\t..@-+---@-+++++#@@++%++++++#%%--:+=+-=@*---+@%@@=-+==-*@######@*------*@+====+@+-+-@.             \n",
            "\t.:#*+--+@@@@@@%%%-*%-@@@@@@@@+--#+#=-=@@@@-+@-----=#=#-@%%%%%%@+-------@++##*+%+-=*#-.            \n",
            "\t.++%=----====+@:+++%@========--++-+---====--=------+==+--*@@%+--=%@@@%=--*%@%+---=%+*.            \n", 
            "\t.#*#+--------=#+++*@@---------++=#-%####%+--+%####%-#=++-------######**@---------+%+%.            \n",
            "\t.%@*#--------%.+++%%#--------*+=#-=@@@@@@+--=@@@@@@+-#=+*------*@######@+--------##%@.            \n", 
            "\t.#@=**------=@@@@@@@-------++=+*---+****=-----****+---++=+*----=@%@@@@%%+-------**=@%.            \n", 
            "\t.++%+**=------======-----*++=*--======================--*==+*----+%@@@#=------=**+%=*.            \n",
            "\t.:@:%=#+*+------------#*++=#--=#%::::::::::::::::::::%%=--#==+*#------------+*+*=%:@:.            \n",
            "\t .%+:#*+*+++#####%#+++=+**--=##:+====================*:#%=--+*+==++#%#####+++*+*#:+@.             \n", 
            "\t..@+-:*#=+**++==++**+=--=#%=:-=*=++++++++++++++++===*=-:-%#=--=+**++===+**+=##--+@..              \n", 
            "\t   :%==--:*@#+------=*%@*::-==+=######################=+==--:+@%*=------=#@#:--=+%-               \n", 
            "\t   .:%++==---:..::..::---==+==*%:                  ...%*+=+==---::..::..:---==++%:                \n", 
            "\t     .+%+=+============+++=+*%-.                      .-%*+=++++==========++++%*..                \n",
            "\t      ..-@#+=++==++++=++=*@#..                          ..*@*++==+++++++++=*@=.                   \n", 
            "\t          .:*%@%###%%@%*-.                                  .:*%@%%###%@%*:.                      \n", 
            "\t               ........                                          ........                         \n"
        )
        u.aguarde(3050)
        limpa()
    }
    u.aguarde(250)
}
	funcao logoPressStart()
	{
		inteiro espaco = 3
			para(inteiro i=1;i<=espaco;i++)
			{
	    escreva("   ######################   ######################     *#####################    #####################    ######################  \n", 
	           "  ####==================+######==================-###  ###+==================*# ###==================-#  ###+==================+#  \n", 
	           "  ####====================-####=====================*###-====================*###-===================-####+-===================+#  \n", 
	           "  ####=======-*###=========####=======-*###+========*###========+################-========################+=======+##############  \n", 
	           "  ####=======-*###========-####=======-*###+========*###-=======+################-========################+=======+############*   \n", 
	           "  ####-======--===--======-####=======--===--====-######-======--======#     ####--======----------=*#####+-=====------------##    \n", 
	           "  ####-================--+*####==================-######-=======-------#     ####++-========--------==####*+--======---------=+*#  \n", 
	           "  ####--------::::::::::=######=--------:::-------######---------:::::-#     ######+------------------######+------------------+#  \n", 
	           "  ####--------*########### ####=-------*###+-------=*###--------+######       ###############*--------#################--------+#  \n", 
	           "  ####--------*#########   ####--------*###+--------*###--------+############# ##############+--------# ###############--------+#  \n", 
	           "  ####--------*#           ####--------*###+--------*###---------------------*###---------------------####=--------------------+#  \n", 
	           "  ####--------*#           ####--------*###+--------*#####=------------------####-------------------*#####=------------------####  \n", 
	           "  ##############           ####################################################################################################    \n", 
	           "  ############             #########################  ##############################################  #######################      \n", 
	           "                                                                                                                                    \n", 
	           "       #####################  #######################    ###################    #####################    #######################   \n", 
	           "     ###-------------------####---------------------*# ###=----------------######-------------------*#####=--------------------+#  \n", 
	           "   ###=--------------------####---------------------*###=-------------------=####---------------------####=--------------------+#  \n", 
	           "  ####--------=+++++++++++*####*+++++---------+++++*####---------+++=--------####---------+++=--------#####+++++=--------+++++*##  \n", 
	           "  ####--------*######################=-------=##########--------+###+--------####--------=###*--------##########*--------*######   \n", 
	           "  ####--------*###########  #########=-------=####  ####---------+++---------####---------+++=-------=##########*--------*###*     \n", 
	           "  ####------------------=###     ####+-------+#     ####---------------------####------------------=*##      ###*-------=*#        \n", 
	           "  ######=------------------#     ####+-------+#     ####---------===---------####---------===------=*##      ###*-------=*#        \n", 
	           "  ################========-#     ####+=======+#     ####-=======+###+=======-####-========###*=======-#      ###*-=======*#        \n", 
	           "    ##############========-#     ####+=======+#     ####-=======+###+=======-####-========###*=======-#      ###*-=======*#        \n", 
	           "   ###-====================#     ####+=======+#     ####========+###+========####=========###*=======-#      ###*-=======*#        \n", 
	           "  ####===================*##     ####+=======+#     ####========+###+========####=========###*=======-#      ###*-=======*#        \n", 
	           "  ####******************###      #####*******##     #####*******#####********####********#####********#      ####*******###        \n", 
	           "  #######################        #############      ###################################################      #############         \n", 
	           "   ####################           ##########         ##########   #########   #########*   #########          #########    \n")
	   u.aguarde(3050)
        limpa()  
		}
	u.aguarde(850)
	}
	funcao alterarMais(){
		caracter resposta
		escreva("\nVocê deseja alterar algo mais no sistema?\n[S] - Sim\n[N] - Não\nDigite aqui: ")
		leia(resposta)
		u.aguarde(1000)
		limpa()
		escolha(resposta){
			caso 'S':
			mexerSistema()
			pare
			caso 's':
			mexerSistema()
			pare
			caso 'N':
			escreva("Saindo")
			para(inteiro i=0; i<3; i++) {
			escreva(".")
			u.aguarde(700)
			limpa()
			}
			pare
			caso 'n':
			escreva("Saindo")
			para(inteiro i=0; i<3; i++) {
			escreva(".")
			u.aguarde(700)
			limpa()
			}
			pare
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 44409; 
 * @DOBRAMENTO-CODIGO = [26, 32, 152, 171, 224, 308, 353, 457, 574, 547, 638, 645, 656, 662, 670, 692, 723, 789, 836, 872, 905, 937, 966, 1001, 1043];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */