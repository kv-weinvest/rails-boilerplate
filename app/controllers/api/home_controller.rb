module Api
  class HomeController < ApplicationController
    def index
      render json: { success: true }
    end
  end
end