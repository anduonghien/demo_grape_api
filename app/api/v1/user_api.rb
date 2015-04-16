module V1
	class UserAPI < Grape::API
		resource :users do
			desc "Index"
			get "/server_status" do
				{ status: "User v1"}
			end
			
			desc "user register"
			params do
				requires :email, type: String, desc: "Email register"
				requires :password, type: String, desc: "Password"
			end

			post do
				User.create!({
					email: params[:email], 
					password: params[:password]
					})
			end

			desc "Delete user via id"
			params do
				requires :id, type: Integer, desc: "User id"
			end
			delete ':id' do
				User.find(params[:id]).destroy ? {result: true} : {result: false}
			end

		end
	end
end