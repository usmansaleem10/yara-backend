# frozen_string_literal: true

Rails.application.routes.draw do
  post '/calculate', to: 'calculator#calculate'
  resources :crops, only: %i[index]
  resources :procotes, only: %i[index]
end
