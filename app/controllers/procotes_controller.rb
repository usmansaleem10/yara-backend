# frozen_string_literal: true

class ProcotesController < ApplicationController
  def index
    render json: Procote.all
  end
end
