AE::Application.routes.draw do
  
  devise_for :users
  
  devise_for :admins do
	resources :clients do
		resources :logs
	end
  end

  resources :clients do
	resources :logs
  end

  ## HOME ROUTES
  match "intro" 	=> "home#intro"
  match "admin" 	=> "home#admin"
  match "user" 		=> "home#user"
  match "home"		=> "home#home"
  match "program"	=> "home#program"
  match "camps"		=> "home#camps"
  match "pricing"	=> "home#pricing"
  match "signup"	=> "home#signup"
  
  namespace :user do
	root :to => "home#user",  :controller => "home"
  end
  
  namespace :admin do
	root :to => "home#admin", :controller => "home"
  end
  
  root :to => "home#home", :controller => "home"

end
