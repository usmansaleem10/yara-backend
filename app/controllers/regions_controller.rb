# frozen_string_literal: true

class RegionsController < ApplicationController
  def index
    render json: Region.all
  end
end
