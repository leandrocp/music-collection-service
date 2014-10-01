class ApiController < ApplicationController
  respond_to :json
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
  private
  def record_not_found
    head :not_found
  end
end
