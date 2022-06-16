# frozen_string_literal: true

Rails.application.routes.draw do
  post '/calculate', to: 'calculator#calculate'
  resources :crops, only: %i[index update]
  resources :procotes, only: %i[index update]
  resources :regions, only: %i[index]
end
