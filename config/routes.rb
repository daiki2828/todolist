Rails.application.routes.draw do
  devise_for :admin, controllers:{
    sessions:"admin/sessions"
  }
  devise_for :users, controllers:{
    registrations:"public/registrations",
    sessions:"public/sessions"
  }

  scope module: :public do
    root :to => "homes#top"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
