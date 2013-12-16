class QrController < ApplicationController
	def qr
		url=params[:url]
		respond_to do |format|
  			format.html
  			format.svg  { render :qrcode => url, :level => :l, :unit => 10 }
  			format.png  { render :qrcode => url }
  			format.gif  { render :qrcode => url }
  			format.jpeg { render :qrcode => url }
		end
	end
end
