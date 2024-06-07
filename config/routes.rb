Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get '/my_articles', to: 'articles#my_article', as: 'my_article'
  get '/articles', to: 'articles#index', as: 'articles'
  get '/articles/new', to: 'articles#new', as: 'new'
  post '/articles', to: 'articles#create'
  get '/articles/:id', to: 'articles#show', as: 'article'
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destroy', as: 'destroy_article'

  get '/articles/:article_id/comments', to: 'comments#index', as: 'article_comments'
  get '/articles/:article_id/comments/new', to: 'comments#new', as: 'new_article_comment'
  post '/articles/:article_id/comments', to: 'comments#create'
  get '/articles/:article_id/comments/:id', to: 'comments#show', as: 'article_comment'
  delete '/articles/:article_id/comments/:id', to: 'comments#destroy', as: 'destroy_comment'
end
