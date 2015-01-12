class FunController < ApplicationController
  def show
	@funs=get_fun()
  end
   def get_fun()
	    url='http://chuansongme.com/account/lengtoo'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div class="pagedlist_item".*/
	    re1= $'.to_s 
	    re1=~ /<div id="hn12" style="display: none">1<\/div>/
	    re2 =  $`.to_s	    		
	    re3=re2.gsub(/<span style="/,'<span style="display: none;')
	    re4=re3.gsub(/<*h2/,'')
	    re4.gsub('href="','href="http://chuansongme.com')
	end

end
