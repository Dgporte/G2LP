programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util-->u
	
	caracter opcaoLogin, opcaoSair
	cadeia usuario[5] = {"Ana","Gabriel","Lucas","Renata","Diogo"}, senha[5]={"12345","12345","12345","12345","12345"}, digitarUsuario, digitarSenha
	logico valida1 = falso
	
	funcao inicio()
	{
		menuLogin()
	}

	funcao menuLogin(){
		escreva("Deseja entrar na loja?\n[S] - Sim\n[N] - Não\nEscreva: ")
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
			escreva("Preencha seus dados:\n\nDigite o nome de usuário: ")
			leia(digitarUsuario)
			escreva("Digite a senha: ")
			leia(digitarSenha)
			limpa()
			escreva("Deseja efetuar o login? \n [S] \n [N] \n Escreva:")
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
					se(digitarUsuario == usuario[i] e digitarSenha == senha[i]){
						valida1 = verdadeiro
					}
				}
				
			se(valida1 == verdadeiro){
				escreva("Login bem sucedido.\n")
			}senao{
				enquanto(valida1 == falso){
				escreva("Usuário ou senha incorretos.\n")
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
 * @POSICAO-CURSOR = 1606; 
 * @DOBRAMENTO-CODIGO = [97, 100];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */