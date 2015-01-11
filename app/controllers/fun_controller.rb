class FunController < ApplicationController
  def show
	@funs=get_fun()
  end
   def get_fun()
	    url='http://www.waduanzi.com/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<ul class="clearfix best-text">.*/
	    re1= $'.to_s 
	    re1=~ /<div class="clear"><\/div>/
	    re2 =  $`.to_s	    		
	end

end
