Rails.application.routes.draw do
    devise_for :patients, controllers: { :registrations => "patients/registrations",
        sessions: 'patients/sessions'
      }

	devise_for :doctors, controllers: { :registrations => "doctors/registrations",
        sessions: 'doctors/sessions'
      }
    root to: "clinic#index"

    resources :appointments
   
 end
