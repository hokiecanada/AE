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

  resources :htmls
  
  ## HOME ROUTES
  match "intro" 	=> "home#intro"
  match "admin" 	=> "home#admin"
  match "user" 		=> "home#user"
  match "home"		=> "home#home"
  match "program"	=> "home#program"
  match "camps"		=> "home#camps"
  match "pricing"	=> "home#pricing"
  match "signup"	=> "home#signup"
  match "facilities" => "home#facilities"
  match "massage"	=> "home#massage"
  match "html"		=> "home#html"
  match "html_edit" => "htmls#update"
  
  match "home_edit" => "home#home_edit"
  match "program_edit" => "home#program_edit"
  match "pricing_edit" => "home#pricing_edit"
  match "camps_edit" => "home#camps_edit"
  match "signup_edit" => "home#signup_edit"
  match "facilities_edit" => "home#facilities_edit"
  match "massage_edit" => "home#massage_edit"
  
  
  namespace :user do
	root :to => "home#user",  :controller => "home"
  end
  
  namespace :admin do
	root :to => "home#admin", :controller => "home"
  end
  
  root :to => "home#home", :controller => "home"

end
