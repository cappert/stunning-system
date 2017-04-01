Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/info'

  resources :ideas

  root to: redirect("/ideas")

  if Rails.env.development?
		mount Localtower::Engine, at: "localtower"
	end

end
