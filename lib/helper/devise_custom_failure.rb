module Helper
  class DeviseCustomFailure < Devise::FailureApp
    # def redirect_url
    #    new_user_session_url(:subdomain => 'secure')
    # end

    # You need to override respond to eliminate recall
    def respond
      if http_auth?
        http_auth
      elsif warden_options[:recall]
        recall
      elsif warden_options[:disable_redirect]
        self.status = 401
        self.content_type = 'application/json'
        self.response_body = { success: false, message: 'Login failed. Please check credentials' }.to_json
      else
        redirect
      end
    end
  end
end