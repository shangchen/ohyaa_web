class FunController < ApplicationController
  def show
	@funs=get_fun()
  end
   def get_fun()
	    url='http://chuansong.me/account/lengtoo'   
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response,please try again later.'
	      return error_info
	    end
	    re=~/<div class="feed_body">.*/
	    re1= $'.to_s 
	    re1=~ /<div id="hn12" style="display: none">/
	    re2 =  $`.to_s
	    re3=re2.gsub('href="/','href="http://chuansong.me/') 
	    re4=re3.gsub(/h2>/,'p>')  	   
	    re4.gsub(/<span style="float:/,'<span style="display:none;float:') 		
	end

end
