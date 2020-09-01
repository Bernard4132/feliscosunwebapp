Rails.application.routes.draw do
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home" 
   match '/home' , to: 'static_pages#home', via: 'get'
   match '/whoweare' , to: 'static_pages#whoweare', via: 'get'
   match '/whatwedo' , to: 'static_pages#whatwedo', via: 'get'
   match '/aboutcompany' , to: 'static_pages#aboutcompany', via: 'get'
   match '/ourceo' , to: 'static_pages#ourceo', via: 'get'
   match '/contactus', to: 'static_pages#contactus', via: 'get'
   match '/timber', to: 'static_pages#timber', via: 'get'
   match '/cashew', to: 'static_pages#cashew', via: 'get'
   match '/yellowcorn', to: 'static_pages#yellowcorn', via: 'get'
   match '/othergoods', to: 'static_pages#othergoods', via: 'get'
   match '/shipmenttracking', to: 'static_pages#shipmenttracking', via: 'get'
end
