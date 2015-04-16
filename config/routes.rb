Rails.application.routes.draw do
	mount RootV1 => '/'
	mount RootV2 => '/'
end
