Quando('cadastro as informações no formulário') do
  visit '/contato'
  fill_in(id: 'Nome-2', with: 'Nome teste')
  find('#Email-6').send_keys('teste@teste.com')
  fill_in(id: 'Assunto-2', with: 'Assunto Teste')
  find('#Mensagem-2').send_keys('Mensagem Teste')
  end
  
Então('o sistema deverá apresentar mensagem de envio de mensagem com sucesso') do
  click_button(class: 'form01_button w-button')
  end


Quando('Não preencho as informações no formulário') do
   visit '/contato'
   end
    
Então('o sistema deverá apresentar mensagem de alerta de obrigatoriedade de campos') do
   click_button(class: 'form01_button w-button')
   end

   
Quando('Informo e-mail inválido') do
   visit '/contato'
   fill_in(id: 'Nome-2', with: 'Nome teste')
   find('#Email-6').send_keys('testando')
   fill_in(id: 'Assunto-2', with: 'Assunto Teste')
   find('#Mensagem-2').send_keys('Mensagem Teste')
   end
      
Então('o sistema deverá apresentar mensagem de alerta de e-mail inválido') do
   click_button(class: 'form01_button w-button')
   sleep(10)
   end
      