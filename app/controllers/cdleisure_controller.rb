class CdleisureController < ApplicationController
  def show
      @cdleisure=get_cdleisure
  end	  
      
   def get_cdleisure()
   	require 'net/http'
	    url='http://www.52ch.net/52chnews/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
    
	    re=~/<div class="bm_c  vk_xld ">.*/
	    re1= $'.to_s 
	    re1=~ /<div class="sd pph">/
	    re2 = '<!--'+$`.to_s
	    re3=re2.gsub('<img','<br> <img style="display:none"')
	    re4=re3.gsub('<a href="','<a target="_blank" href="')	 
		end	

  
end
