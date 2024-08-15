programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util-->u
	
	caracter opcaoLogin, opcaoSair
	cadeia usuario[5][2] = {{"Lucas","senhaLucas"},{"Ana","senhaAna"},{"Gabriel","senhaGabriel"},{"Renata","senhaRenata"},{"Diogo","senhaDiogo"}}
	//cadeia usuario[5] = {"Ana","Gabriel","Lucas","Renata","Diogo"}, senha[5]={"12345","12345","12345","12345","12345"}, 
	cadeia digitarUsuario, digitarSenha
	logico valida1 = falso
	
	funcao inicio()
	{
		menuLogin()
	}
	funcao menuLogin(){
		escreva("\t¦─ ⚄ Olá, seja bem vindo(a) a nossa loja de jogos! ♞ ─¦\n")
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
			escreva("Opção inválida, tente novamente.\n")
			u.aguarde(2000)
			limpa()
			menuLogin()
		}
	}	
	funcao login(){ // check
			escreva("\t Opa, maravilha! Então vamos lá!\n\t ⇩ Preencha seus dados abaixo ⇩ \n\nInforme o nome de usuário: ")
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
		
	}
	funcao menuProdutos(){
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1764; 
 * @DOBRAMENTO-CODIGO = [12, 16, 99, 102];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuario, 8, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */