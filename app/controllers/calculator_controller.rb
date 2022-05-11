# frozen_string_literal: true

class CalculatorController < ApplicationController
  def calculate
    calculation = Calculation.new(crop: permit_params[:crop], yield_value: permit_params[:yield_value],
                                  df_rate: permit_params[:df_rate], procote: permit_params[:procote],
                                  preferences: permit_params[:preferences])
    # TODO: validate response and check errors
    render json: calculation.call
  end

  private

  def permit_params
    params.permit(:crop, :yield_value, :df_rate, :procote, preferences: [:state])
  end
end
