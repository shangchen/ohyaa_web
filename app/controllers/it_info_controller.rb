class ItInfoController < ApplicationController
  def show
	@it_info=get_it_info
  end

   def get_it_info()
	    url='http://www.infoq.com/cn/news'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<!--	#######		HEADER END	#########	 -->/
	    re1= $'.to_s 
	    re1=~/<div class="clear"><\/div>/
	    re2= $'.to_s
	    re2=~ /<!--	#######		load more news	#########	 -->/
	    re3 =  $`.to_s	
	    re4=re3.gsub(/href="\/cn/,'target="_blank" href="http://www.infoq.com/cn') 
	end

end
