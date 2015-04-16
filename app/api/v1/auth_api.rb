module V1
	class AuthAPI < Grape::API
		desc "Login"
		params do
			requires :email, type: String, desc: "user email"
			requires :password, type: String, desc: "password"
		end

		post "/login" do
			user = User.find_by_email(params[:email])
			if user and user.valid_password?(params[:password])
				sign_in(:user, user)
				{status: true, title: "Login ok"}
			elsif
				{status: false, title: "Login false"}
			end
		end
	end
end