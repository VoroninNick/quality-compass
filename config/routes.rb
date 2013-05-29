Qualitycompass::Application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  scope '(:locale)', :locale => /en|ru|uk/ do
    match 'about-us'                    => 'page#about',                    :as => 'about',     :via => :get
    match 'contact-us'                  => 'page#contact',                  :as => 'contact',   :via => :get
    match 'order'                       => 'order#new',                     :as => 'orders',    :via => :get
    match 'order'                       => 'order#create',                  :as => 'orders',    :via => :post
    match 'news'                        => 'article#index',                 :as => 'news',      :via => :get
    match 'news/:id'                    => 'article#show',                  :as => 'news_item', :via => :get
    match '~facebook/quality-compass'   => redirect('http://facebook.com'), :as => 'facebook'
    match '~linkedin/quality-compass'   => redirect('http://linkedin.com'), :as => 'linkedin'
    match '~twitter/quality-compass'    => redirect('http://twitter.com'),  :as => 'twitter'
    match 'subscribe'                   => 'page#index',                    :as => 'subscribe'
    # Develop function
    match 'git/:branch'                 => 'page#git',                      :as => 'git'
    root :to                            => 'page#index'
  end

  unless Rails.application.config.consider_all_requests_local
    match '*not_found', to: 'errors#error_404'
  end

end
