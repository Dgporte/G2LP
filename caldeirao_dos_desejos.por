programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util-->u
	
	caracter opcaoLogin
	cadeia usuario[5] = {"Ana","Gabriel","Lucas","Renata","Diogo"}, senha[5]={"12345","12345","12345","12345","12345"}, digitarUsuario, digitarSenha
	logico valida1 = falso
	
	funcao inicio()
	{
		menuLogin()
		login()
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
			//caso o usuário informe a opcao NÃO
			caso 'n':
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
	funcao login(){
			escreva("Preencha seus dados:\n\nDigite o nome de usuário: ")
			leia(digitarUsuario)
			escreva("Digite a senha: ")
			leia(digitarSenha)
			limpa()
			escreva("Carregando")
			para(inteiro i=0; i<3; i++) {
			escreva(".")
			u.aguarde(700)
			}
			limpa()
				para(inteiro i=0;i<4;i++){
					se(digitarUsuario == usuario[i] e digitarSenha == senha[i]){
						valida1 = verdadeiro
					}
				}
			se(valida1){
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
 * @POSICAO-CURSOR = 330; 
 * @DOBRAMENTO-CODIGO = [16, 39, 67, 70];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */