# frozen_string_literal: true

class ApplicationController < ActionController::API

  private

  def render_response(object)
    serializer_klass = Object.const_get "#{object.class.name}Serializer"
    render json: serializer_klass.new(object).serialized_json
  end
end
