Rails.application.routes.draw do

  devise_for :franqueados
  devise_for :vistoriadores

  devise_for :managers

 

   root 'welcome#index'

   get 'sobre-a-ultravisao', to: 'welcome#sobre', as: :sobre
   # get 'welcome/index'   
   get 'welcome/franquias'
   get 'welcome/ultrabook'
   get 'welcome/contato'

    resources :estados do
        resources :cidades, except:[:index, :update] do
          resources :lojas 
          end
       end


    resources :vehicle_brands do
      resources :vehicle_names
    end





    end

# get 'qualquer coisa', to: 'controller#path', as: :verbo
