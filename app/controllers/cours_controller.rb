class CoursController < InheritedResources::Base
	before_filter :authenticate_user!, only: [:new, :destroy]
end
