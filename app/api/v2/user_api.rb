module V2
	class UserAPI < Grape::API
		resource :users do
			desc "Index"
			get "/server_status" do
				{ status: "User v2"}
			end
		end
	end
end