# frozen_string_literal: true

class CropsController < ApplicationController
  def index
    render json: Crop.all.select(:id, :name, :unit)
  end
end
