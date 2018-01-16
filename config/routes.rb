Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
  resources :comments
 end
 resources :tags
  root 'welcome#index'
  post "articles/:id/tags/add" => "articles#add_tag", as: 'article_tag'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
