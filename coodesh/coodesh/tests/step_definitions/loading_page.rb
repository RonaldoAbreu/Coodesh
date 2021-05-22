
Dado ('que eu acesso a pagina home') do
 
    visit('/')
    page.current_window.resize_to(1440, 900)
  end
    
  Entao('verifico se estou na url correta') do
   
    expect(page).to  have_current_path('https://beta.coodesh.com', url: true) 
    
     
  end
  
  Então('clico no botão de vagas no menu superior') do 
   
   visit('/vagas')
   find('input[placeholder="Cargo, habilidades ou startup"]').set("Front End")
   find('input[placeholder="Cidade, Estado ou Home-Office"]').set("São Paulo") 
   click_button('Encontrar')
   click_link('Frond End Developer II')
   click_button('Candidatar-se', match: :first)
    
    
  end