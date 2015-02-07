class CystoryController < ApplicationController
  def show
  		@story=get_story
  end

   def get_story()
	    url='http://www.cyzone.cn/category/22/'
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
