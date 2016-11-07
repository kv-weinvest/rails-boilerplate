module Api
  class ApiController < ActionController::Base
    before_action :doorkeeper_authorize!, except: [ :render_404 ]

    # used by doorkeeper_authorize! method if it fails
    def doorkeeper_unauthorized_render_options(error=nil)
      content = { 
        success: false,
        message: "You need to login to continue."
      }

      return { json: content.to_json }
    end

    def render_404
      render status: :not_found,
             json: { success: false, message: "Endpoint not found" }
    end

    private

      def current_user
        @current_user ||= User.find(doorkeeper_token.resource_owner_id)
      end
  end  
end