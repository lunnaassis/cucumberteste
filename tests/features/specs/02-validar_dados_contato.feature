#language: pt


Funcionalidade: Validar dados de Contato
Como um usuário visitante
Quero preencher dados
Para enviar mensagem no Fale Conosco

Contexto: Dado que acesso o Contato do Fale Conosco

Cenario: Enviar Mensagem Fale Conosco
Quando cadastro as informações no formulário
Então o sistema deverá apresentar mensagem de envio de mensagem com sucesso


Cenario: Validar Campos Obrigatórios
Quando Não preencho as informações no formulário
Então o sistema deverá apresentar mensagem de alerta de obrigatoriedade de campos

Cenario: E-mail Inválido
Quando Informo e-mail inválido
Então o sistema deverá apresentar mensagem de alerta de e-mail inválido