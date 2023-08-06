Algoritmo "menuAgenciaViagens"

//Cadastrar Cliente
procedimento cadastrarCliente
var
inicio
   //Verificando se é o primeiro cliente a ser cadastrado
   se numClientes = 0 entao
      numClientes <- 1
   fimse
   //Iniciando processo de captação dos dados dos clientes
   escreval(" ")
   escreval("Iniciando Cadastro de Novo Cliente")
   escreval(" ")
   se numClientes <= 5 entao
      escreval("Digite o nome do cliente: ")
      leia(clienteNome[numClientes])

      escreval(" ")
      escreval("Digite o CPF do cliente:")
      leia(clienteCPF[numClientes])

      escreval(" ")
      escreval("Digite a idade do cliente:")
      leia(clienteIdade[numClientes])

      escreval(" ")
      escreval("Digite o e-mail do cliente:")
      leia(clienteEmail[numClientes])

      numClientes <- numClientes + 1
      escreval(" ")
      escreval("Cliente cadastrado com sucesso!")
      escreval(" ")
   fimse
   menu()
   senao //Alternativa para o caso de atingir o limite de cadastros possíveis
   escreval(" ")
   escrever("Limite máximo de clientes atingido!")
   escreval(" ")
   fimse
   menu() //Voltando para o menu
fimprocedimento
//Fim Cadastrar Cliente

//Cadastrar Destino
procedimento cadastrarDestino
var
inicio
   //Verificando se é o primeiro destino a ser cadastrado
   se numDestinos = 0 entao
      numDestinos <- 1
   fimse
   //Iniciando processo de captação dos dados dos clientes
   escreval(" ")
   escreval("Iniciando Cadastro de Novo Destino")
   escreval(" ")
   se numDestinos <= 5 entao
      escreval("Digite o nome do destino: ")
      leia(destinoNome[numDestinos])

      escreval(" ")
      escreval("Digite o código do destino")
      leia(destinoCodigo[numDestinos])

      escreval(" ")
      escreval("Digite a descrição do destino:")
      leia(destinoDescricao[numDestinos])

      escreval(" ")
      escreval("Digite o preço do destino:")
      leia(destinoPreco[numDestinos])

      numDestinos <- numDestinos + 1
      escreval(" ")
      escreval("Destino cadastrado com sucesso!")
      escreval(" ")
   fimse
   menu() //Voltando para o menu
   senao //Alternativa para o caso de atingir o limite de cadastros possíveis
   escreval(" ")
   escrever("Limite máximo de destinos atingido!")
   escreval(" ")
   fimse
   menu() //Voltando para o menu
fimprocedimento
//Fim Cadastrar Destino

//Consultar Clientes
procedimento consultarCliente
var
   i: inteiro
inicio
   //Iniciando processo de percorrer os dados cadastrados e exibir na tela
   escreval(" ")
   escreval("Consultando Clientes Cadastrados")
   escreval(" ")
   se numClientes > 0 entao
      i <- 1
      enquanto i < numClientes faca
         escreval("Cliente ", i, ":")
         escreval("Nome: ", clienteNome[i])
         escreval("CPF: ", clienteCPF[i])
         escreval("Idade: ", clienteIdade[i])
         escreval("E-mail: ", clienteEmail[i])
         escreval(" ")
         i <- i + 1
      fimenquanto
      escreval(" ")
      menu() //Voltando para o menu
   senao  //Alternativa pro caso de não haver nenhum cadastro
      escreval(" ")
      escreval("Nenhum cliente cadastrado.")
   fimse
   menu() //Voltando para o menu
fimprocedimento
//Fim Consultar Clientes

//Consultar Destinos
procedimento consultarDestino
var
   i: inteiro
inicio
   //Iniciando processo de percorrer os dados cadastrados e exibir na tela
   escreval(" ")
   escreval("Consultando Destinos Cadastrados")
   escreval(" ")
   se numDestinos > 0 entao
      i <- 1
      enquanto i < numDestinos faca
         escreval("Destino ", i, ":")
         escreval("Nome: ", destinoNome[i])
         escreval("Código: ", destinoCodigo[i])
         escreval("Descrição: ", destinoDescricao[i])
         escreval("Preço: ", destinoPreco[i])
         escreval(" ")
         i <- i + 1
      fimenquanto
      escreval(" ")
      menu()  //Voltando para o menu
   senao //Alternativa pro caso de não haver nenhum cadastro
      escreval(" ")
      escreval("Nenhum destino cadastrado.")
   fimse
   menu() //Voltando para o menu
fimprocedimento
//Fim Consultar Destinos

//Menu
procedimento menu
var
   opcao : inteiro
inicio
   escreval(" ")
   escreval("Selecione uma opção: ")
   escreval("1 - Cadastrar novo cliente")
   escreval("2 - Cadastrar novo destino")
   escreval("3 - Consultar lista de clientes cadastrados")
   escreval("4 - Consultar lista de destinos cadastrados")
   escreval("0 - Sair")
   leia(opcao)

   escolha(opcao)
      caso 1
         cadastrarCliente()
      caso 2
         cadastrarDestino()
      caso 3
         consultarCliente()
      caso 4
         consultarDestino()
      caso 0
         Fimalgoritmo
      outrocaso
         escreval("Opção inválida, selecione uma opção válida!")
         menu() //Chama novamente o menu até que uma opção válida seja digitada
   fimescolha
fimprocedimento
//Fim Menu
Var
   numClientes, numDestinos: inteiro // Variável de controle dos cadastros

   //Vetores para captação de dados
   clienteNome: vetor[1..5] de caractere
   clienteCPF: vetor[1..5] de caractere
   clienteIdade: vetor[1..5] de caractere
   clienteEmail: vetor[1..5] de caractere

   destinoNome: vetor[1..5] de caractere
   destinoCodigo: vetor[1..5] de caractere
   destinoDescricao: vetor[1..5] de caractere
   destinoPreco: vetor[1..5] de real
Inicio
   //Iniciando o programa chamando o menu que dá acesso a todas
   //as funcionalidades(procedimentos) do sistema.
   menu()
Fimalgoritmo