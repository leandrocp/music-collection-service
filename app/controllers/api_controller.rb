class ApiController < ApplicationController
  respond_to :json
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :handle_cors
  
  private
  def record_not_found
    head :not_found
  end

  def handle_cors
    headers['Access-Control-Allow-Origin']   = '*'
    headers['Access-Control-Allow-Methods']  = 'GET, POST, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers']  = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
