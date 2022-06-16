# frozen_string_literal: true

class CropsController < ApplicationController
  before_action :find_crop, only: %i[update]
  def index
    render json: Crop.all.select(:id, :name, :unit)
  end

  def update
    @crop.assign_attributes(crop_permit_params)
    @crop.removal.assign_attributes(removal_permit_params)
    @crop.save
    render json: @crop.to_json(include: :removal)
  end

  private

  def find_crop
    @crop = Crop.includes(:removal).find(params[:id])
  end

  def crop_permit_params
    params.require(:crop).permit(%i[name unit])
  end

  def removal_permit_params
    params.require(:removal).permit(%i[b_ratio cu_ratio mn_ratio zn_ratio])
  end
end
