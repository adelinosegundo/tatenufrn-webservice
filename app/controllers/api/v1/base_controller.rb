class Api::V1::BaseController < ApplicationController
  before_filter :set_default_response_format
  skip_before_filter :verify_authenticity_token

  private 
    def set_default_response_format
      request.format = :json
    end
end
