# frozen_string_literal: true

class ServicesController < ApplicationController
  def ping
    render json: {}
  end
end
