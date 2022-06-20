# frozen_string_literal: true

class CropsController < ApplicationController
  before_action :find_crop, only: %i[update]
  def index
    render_response(Crop.all, CropSerializer)
  end

  def update
    @crop.assign_attributes(name: permit_params[:name], unit: permit_params[:unit])
    @crop.removal.assign_attributes(permit_params[:removal])
    update_crop_procotes
    @crop.save
    render_response @crop
  end

  private

  def find_crop
    @crop = Crop.includes(:removal).find(params[:id])
  end

  def update_crop_procotes
    crop_procotes = @crop.crop_procotes
    crop_procotes.each do |crop_procote|
      param_procote = permit_params[:crop_procotes].select { |procote| procote[:procote_id] == crop_procote.procote_id }
      next if param_procote.blank?

      crop_procote.update(ratio: param_procote.first[:ratio])
    end
  end

  def permit_params
    params.require(:crop).permit(:name, :unit, removal: %i[b_ratio cu_ratio mn_ratio zn_ratio],
                                               crop_procotes: %i[procote_id ratio])
  end
end
