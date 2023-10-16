# Terraform AWS Simple EC2 to study

## Description

Repositório dedicado a criação de instancias AWS EC2 para fins de estudo..  

## Steps

- criar bucket - S3  

- configurar iam - se ja não estiver configurado

## Instalar AWS-CLI  

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Configurar ID e Key

```bash
aws configure
```

## Criar chave (será utilizada para conexão nas vms criadas)  

 ```bash
 ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
 ```

## Acessando as vms  

```bash
ssh -i ~/.ssh/id_rsa ubuntu@ip-pubico
```

## Criar inventário Ansible a partir do output

```ini
[web]
public-ip


[web:vars]
ansible_ssh_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/id_rsa
```

## Author Information  

Weslley Barboza
