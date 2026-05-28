# AulaTerraForm🛠️ 
Passo 1: Preparação do Ambiente (Instalação)


1. Instalar o VirtualBox
Baixar e instalar a versão mais recente para o sistema operacional correspondente no site oficial: [virtualbox.org.](https://www.virtualbox.org/wiki/Downloads)


2. Instalar o Terraform via CMD:

   
winget install HashiCorp.Terraform


Para validar se instalou: terraform -v

💻 Passo 2: O Código do Terraform (A Prática).
Crie uma pasta vazia para a aula (ex: aula-terraform). Dentro dela, crie um arquivo chamado main.tf.

Dentro do main cole o código.

Passo 3: Adicionar as variaveis de ambiente.
No seu Windows, clique no menu Iniciar e digite "Editar as variáveis de ambiente do sistema" e abra essa opção.

Na janela que se abrir, clique no botão "Variáveis de Ambiente..." 

Na seção Variáveis do sistema (a tabela de baixo), procure pela variável chamada Path (ou PATH), selecione-a e clique em Editar.

Clique no botão Novo e cole o caminho padrão onde o VirtualBox costuma ser instalado:
C:\Program Files\Oracle\VirtualBox

Clique em OK em todas as janelas para salvar.

🚀 Passo 4: Executando o Fluxo do Terraform

Entrar no CMD entrar na pasta que o main.tf foi criado.

1. Inicialização

De o comando:    terraform init
Este comando lê o arquivo main.tf, descobre que você precisa do provedor do VirtualBox e faz o download dele.


terraform init

2. Planejamento

De o comando:   terraform plan
O Terraform analisa o que você tem na máquina (nada) e o que está no código (1 VM) e mostra o planejamento do que será feito. É a rede de segurança do DevOps.


terraform plan

3. Aplicação 

De o comando:  terraform apply

Quando pedir digite YES


