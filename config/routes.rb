Rails.application.routes.draw do
  resources :shippingorders
  devise_for :users
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
   match '/clearingandfowarding', to: 'static_pages#clearingandfowarding', via: 'get'
   match '/generalgoods', to: 'static_pages#generalgoods', via: 'get'
   match '/transportation', to: 'static_pages#transportation', via: 'get'
   match '/vehicletracking', to: 'static_pages#vehicletracking', via: 'get'
   match '/travelpolicy', to: 'static_pages#travelpolicy', via: 'get'
   match '/visaacquisition', to: 'static_pages#visaacquisition', via: 'get'
   match '/passportacquisition', to: 'static_pages#passportacquisition', via: 'get'
   match '/workpermits', to: 'static_pages#workpermits', via: 'get'
   match '/admindashboard', to: 'static_pages#admindashboard', via: 'get'
   post 'findshippingorder' =>'shippingorders#findshippingorder', :as => 'findshippingorder'
end
