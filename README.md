<p align="center" width="100%">
    <img width="50%" src="https://github.com/buildrun-tech/buildrun-terraform-ec2-ssh-exemplo/blob/main/images/logoterraform.png"> 
</p>


<h3 align="center">
  Deploy com Terraform!
</h3>

Para um maior entendimento do código deste repositório, [assista o vídeo do Bruno do canal Build & Run no Youtube, clique aqui.](https://www.youtube.com/watch?v=IBhao06sYek)


## :rocket: Tecnologias utilizadas

* Terraform
* AWS - EC2

## Pré Requisitos

- Conta AWS
- AWS CLI
- Terraform CLI
- Public and Private KeyPair for SSH

## Passo a passo

- Efetue a criação de uma conta na AWS
- Crie um usuário com acesso programático (aws_access_key_id & aws_secret_access_key)
- Instale a AWS CLI no seu computador e execute o 'aws configure'
- Instale o Terraform CLI no seu computador
- Gere um KeyPair para poder acessar a EC2 via SSH (ssh-keygen)
- Execute 'terraform init' dentro da pasta 'infra' no terminal
- Execute 'terraform plan' dentro da pasta 'infra' para verificar o plano de criação do terraform

- Execute 'terraform apply' dentro da pasta 'infra' para criar a infraestrutura
- Execute 'terraform destroy' dentro da pasta 'infra' destruir toda a infraestrutura criada

:mag: Baixe o projeto e teste você mesmo na prática.
