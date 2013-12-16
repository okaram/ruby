class RedirectorController < ApplicationController
	def redirect
		r=Reference.find(params[:id])
		r.visit_count=r.visit_count+1
		r.save
		redirect_to r.url
	end
end
