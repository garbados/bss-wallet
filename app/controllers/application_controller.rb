class ApplicationController < ActionController::Base
  protect_from_forgery

  after_filter :set_access_control_headers

  def set_access_control_headers
  	headers['Access-Control-Allow-Origin'] = 'http://localhost:9292'
  	headers['Access-Control-Request-Method'] = '*'
  end
end
