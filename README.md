# AulaTerraForm🛠️ 
Passo 1: Preparação do Ambiente (Instalação)
Os alunos precisarão de duas ferramentas instaladas na máquina:

1. Instalar o VirtualBox
Baixar e instalar a versão mais recente para o sistema operacional correspondente no site oficial: virtualbox.org.


2. Instalar o Terraform
winget install HashiCorp.Terraform
validar terraform -v

💻 Passo 2: O Código do Terraform (A Prática)
Crie uma pasta vazia para a aula (ex: aula-terraform). Dentro dela, crie um arquivo chamado main.tf.

Para criar uma VM no VirtualBox, vamos usar um provedor comunitário muito popular chamado terra-farm/virtualbox. Vamos configurar uma imagem super leve de Alpine Linux ou Ubuntu Minimal.

Diga aos alunos para colarem o seguinte conteúdo no main.tf


Passo 3: Adicionar as variaveis de ambiente
No seu Windows, clique no menu Iniciar e digite "Editar as variáveis de ambiente do sistema" e abra essa opção.

Na janela que se abrir, clique no botão "Variáveis de Ambiente..." 

Na seção Variáveis do sistema (a tabela de baixo), procure pela variável chamada Path (ou PATH), selecione-a e clique em Editar.

Clique no botão Novo e cole o caminho padrão onde o VirtualBox costuma ser instalado:
C:\Program Files\Oracle\VirtualBox

Clique em OK em todas as janelas para salvar.

🚀 Passo 4: Executando o Fluxo do Terraform (O "Show")
Aqui está o coração da aula prática. Explique o ciclo de vida do Terraform rodando os comandos abaixo no terminal, dentro da pasta do projeto:

1. Inicialização (terraform init)
Este comando lê o arquivo main.tf, descobre que você precisa do provedor do VirtualBox e faz o download dele.

Bash
terraform init
2. Planejamento (terraform plan)
O Terraform analisa o que você tem na máquina (nada) e o que está no código (1 VM) e mostra o planejamento do que será feito. É a rede de segurança do DevOps.

Bash
terraform plan
3. Aplicação (terraform apply)
Hora de criar a mágica. Digite o comando e, quando ele pedir confirmação, digite yes.

Bash
terraform apply
