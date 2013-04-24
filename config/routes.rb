UniAbroad::Application.routes.draw do
  match 'about-us' => 'page#about', :as => 'about', :via => 'get'
  match 'contact-us' => 'page#about', :as => 'contact', :via => 'get'
  root :to => 'page#index'
end
