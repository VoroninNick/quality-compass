Qualitycompass::Application.routes.draw do

  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  scope '(:locale)', :locale => /en|ru|uk/ do
    match 'about-us'    => 'page#about',      :as => 'about', :via => :get
    match 'contact-us'  => 'page#contact',    :as => 'contact', :via => :get
    match 'order'       => 'order#new',     :as => 'orders', :via => :get
    match 'order'       => 'order#create',  :as => 'orders', :via => :post
    match 'news'        => 'article#index', :as => 'news', :via => :get
    match 'news/:id'        => 'article#show', :as => 'news_item', :via => :get
    root :to            => 'page#index'
  end
end
