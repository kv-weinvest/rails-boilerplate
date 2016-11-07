module Api
  class UsersController < ApiController
    def index
      render json: {
        success: true,
        data: current_user.as_json
      }
    end
  end
end