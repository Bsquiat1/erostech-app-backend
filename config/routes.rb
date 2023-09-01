Rails.application.routes.draw do

  # resources :customer_enquiry

 
  resources :proforma_invoices

 
  resources :order_confirmations

  resources :payments_received

  
  resources :load_authorities


  resources :gate_passes

  resources :customers

  resources :invoice_items

  resources :invoices

  resources :loading_depots

 
end

