# frozen_string_literal: true

class ProcotesController < ApplicationController
  before_action :find_procote, only: %i[update]
  def index
    render_response(Procote.all, ProcoteSerializer)
  end

  def update
    @procote.assign_attributes(permit_params)
    @procote.save
    render_response @procote
  end

  private

  def find_procote
    @procote = Procote.find(params[:id])
  end

  def permit_params
    params.require(:procote).permit(%i[name density us_price b_ratio cu_ratio mn_ratio zn_ratio east_canadian_price
                                       west_canadian_price])
  end
end
