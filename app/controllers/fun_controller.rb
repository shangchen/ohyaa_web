class FunController < ApplicationController
  def show
	@funs=get_fun()
  end
   def get_fun()
	    url='http://wx.paigu.com/u11743/'   
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div class="bd" id="bd">.*/
	    re1= $'.to_s 
	    re1=~ /      <ul class="user" id="alist2">/
	    re2 =  $`.to_s
	    re3=re2.gsub(/<a href="/,'<a  target="_blank" href="http://wx.paigu.com') 
	    re3.gsub(/<img/,'<img style="display:none;" ') 	    		
	end

end
