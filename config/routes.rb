VotaPrato::Application.routes.draw do
  
  devise_for :users

  resources :comentarios


  resources :qualificacoes
  
  resources :restaurantes
  
  resources :clientes


  #Aqui aponta para o index, para a página inicial
  root :to => "welcome#index"

end
