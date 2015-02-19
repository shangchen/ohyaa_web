class InfoqVideoController < ApplicationController
  def show
  		@infoq_video=get_infoq_video
  end
  
   def get_infoq_video()
	    url='http://www.infoq.com/cn/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div class="grid presentations_type">.*/
	    re1= $'.to_s 
	    re1=~ /<div class="widget_div align_right">/
	    re2 =  '<div>'+$`.to_s	
			re3=re2.gsub('href="/','target="_blank" href="http://www.infoq.com/')
			re4=re3.gsub('<span>','<span style="display:none;">')
	end   
end
