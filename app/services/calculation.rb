# frozen_string_literal: true

class Calculation
  LBS_PER_METRIC_TON = 2204.62
  ROUND_PRECISION = 2
  def initialize(crop:, yield_value:, df_rate:, procote:)
    @params = {
      crop: crop,
      yield_value: yield_value.to_f,
      df_rate: df_rate.to_f,
      procote: procote.to_sym
    }
    @crop = Crop.find_by(name: @params[:crop])
    @procote = Procote.find_by(name: @params[:procote])
  end

  def call
    procote_multiplier = @crop.crop_procotes.find_by(procote_id: @procote&.id)&.ratio
    l_tonne = litters_per_tonne(procote_multiplier)
    kg_tonne = @procote.density * l_tonne
    price = product_price(l_tonne)
    removal = crop_removal(procote_multiplier)
    {
      quantity_per_tonne: { liter: l_tonne, kg: kg_tonne },
      price: price,
      removal: removal
    }
  end

  def litters_per_tonne(procote_multiplier)
    ml_procote_per_acre = @params[:yield_value] * procote_multiplier
    (LBS_PER_METRIC_TON / @params[:df_rate] * ml_procote_per_acre / 1000).round(ROUND_PRECISION)
  end

  def product_price(l_tonne)
    (l_tonne * @procote.canadian_price / LBS_PER_METRIC_TON * @params[:df_rate]).round(ROUND_PRECISION)
  end

  def crop_removal(procote_multiplier)
    procote_ratios, removal_ratios = ratios
    valid_ratios = procote_ratios.select { |_k, v| v.present? }
    ratio_hash = {}
    valid_ratios.each_key do |key|
      ratio_hash[key] =
        (@params[:yield_value] * procote_multiplier / procote_ratios[key] / @params[:yield_value] * removal_ratios[key]).round(ROUND_PRECISION)
    end
    ratio_hash
  end

  def ratios
    procote_ratios = {
      b_ratio: @procote.b_ratio, cu_ratio: @procote.cu_ratio, mn_ratio: @procote.mn_ratio, zn_ratio: @procote.zn_ratio
    }
    removal = @crop.removals.first
    removal_ratios = {
      b_ratio: removal.b_ratio, cu_ratio: removal.cu_ratio, mn_ratio: removal.mn_ratio, zn_ratio: removal.zn_ratio
    }
    [procote_ratios, removal_ratios]
  end
end
