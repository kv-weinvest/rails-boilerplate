module Seeds
  class InitUsers
    def self.seed
      user = User.create(email: 'warex03@gmail.com', password: 'password')
    end
  end
end