class RootV2 < Grape::API
	version 'v2'
	format :json
	prefix :api
	###
	mount V2::UserAPI
end