Rails.application.routes.draw do

  namespace :admin do
    patch 'order_details/update'
  end

  namespace :admin do
    resources :orders, only: [:show, :update]
    #get 'orders/show' => 'orders#show'
    #patch 'orders/update'
  end

  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    #get 'customers/index'
    #get 'customers/show'
    #get 'customers/edit'
    #patch 'customers/update'
  end

  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
    #get 'genres/index'
    #post 'genres/create'
    #get 'genres/edit'
    #patch 'genres/update'
  end

  namespace :admin do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    #get 'items/index'
    #get 'items/new'
    #post 'items/create'
    #get 'items/show'
    #get 'items/edit'
    #patch 'items/update'
  end

  namespace :admin do
    #get 'homes/top'
    root to: 'homes#top', as: "root"
  end

# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#resources :●●s, only: [:new, :index, :show, :edit, :create, :update, :destroy ]→７つだけ書ける
#その他は get(patchなどもOK) 'orders/show' => 'orders#show'と書く