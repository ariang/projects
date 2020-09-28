Rails.application.routes.draw do

  devise_for :users
get "about", to: "pages#about"
get "contact", to: "pages#contact"
get "error", to: "pages#error"

get "blog", to: redirect("https://ariang.github.io")

resources :projects do
  #all of the route items gonna be the same except an index action
  resources :tasks, except: [:index], controller: 'projects/tasks'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'pages#home'

get "*path", to: redirect("/error")

end
