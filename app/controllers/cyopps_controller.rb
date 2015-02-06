class CyoppsController < ApplicationController
  def show
     @opps=get_opps
  end
  
   def get_opps()
   	require 'net/http'
	    url='http://www.cyzone.cn/category/20/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<!--inter-->.*/
	    re1= $'.to_s 
	    re1=~ /<!--20-->/
	    re2 =  $`.to_s	

	end  
end
