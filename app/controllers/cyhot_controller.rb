class CyhotController < ApplicationController
  def show
     @hot=get_cyhot
  end
   def get_cyhot()
	    url='http://www.cyzone.cn/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div style="display:block">.*/
	    re1= $'.to_s 
	    re1=~ /<\/div>/
	    re2 =  $`.to_s	

	end	  
end
