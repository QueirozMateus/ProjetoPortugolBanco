programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real saldo = 0
    real saque, deposito, rendimento, investimento
    cadeia controle, login
    inteiro menu, cpf
    cadeia extrato = ""
    cadeia nome
    inteiro meses
    


      escreva("-----------------------------------------------------------\n")

      escreva("vamos criar sua conta em nosso banco\n")
      escreva("digite seu primeiro nome: ")
      leia(nome)
      escreva("digite seu cpf sem os traços: ")
      leia(cpf)

      escreva("agora crie uma senha: ")
      leia(login)


      escreva("conta criada com sucesso, digite sua senha para entrar: ")
      leia(login)
      enquanto(login != login)
      {
        escreva("senha incorreta! tente novamente: ")
        leia(login)
      }
    enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| Seja bem vindo " + nome + "  | \n")
      escreva("| 1-SALDO  R$", mat.arredondar(saldo,2), "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 5- INVESTIMENTO        |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
        escreva("digite sua senha: ")
        leia(login)
        enquanto(login != 0000)
        {
          escreva("senha incorreta! Tente novamente: ")
          leia(login)
        }
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        pare
        caso 3:
        escreva("digite sua senha: ")
        leia(login)
        enquanto(login != 0000)
        {
          escreva("senha incorreta! Tente novamente: ")
          leia(login)
        }
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 4:
        escreva("digite sua senha: ")
        leia(login)
        enquanto(login != 0000)
        {
          escreva("senha incorreta! Tente novamente: ")
          leia(login)
        }
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 5:
        escreva("digite sua senha: ")
        leia(login)
        enquanto(login != 0000)
        {
          escreva("senha incorreta! Tente novamente: ")
          leia(login)
        }
        escreva("digite o valor que deseja investir: ")
        leia(investimento)
        se(investimento > saldo){
          escreva("Saldo insuficiente\n")
        }
        senao{
          escreva("digite a quantidade de meses que deseja investir: ")
          leia(meses)
          para(inteiro contador = 0; contador < meses ; contador++){
            rendimento = investimento * 1.69
            investimento = rendimento
          }
            saldo = saldo + investimento
          escreva(meses, "se passaram...\n")
          escreva("o rendimento final foi de: R$"+investimento+ "\n")  




        }


      }
    }
  }
}