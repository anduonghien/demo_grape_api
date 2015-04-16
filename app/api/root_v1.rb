class RootV1 < Grape::API
	version 'v1'
	format :json
	prefix :api
	###
	
	###
	mount V1::UserAPI
	mount V1::AuthAPI
end