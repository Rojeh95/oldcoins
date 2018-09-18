Rails.application.routes.draw do
 scope  "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    root 'dynasties#index'
    resources :newfounds
    resources :coins
    
    resources :cities do
        resources :years
      end
    resources :years do
        resources :coins
      end
    resources :rulers do
    	 resources :cities
    	 end
    get "/dynasties/:id(.:format)/probe" => "dynasties#probe" , as: 'dynasties_probe' 	

    resources :dynasties do
     	resources :rulers 
    end
  end    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
