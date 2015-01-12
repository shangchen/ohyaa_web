class DesignInfoController < ApplicationController
  def show
	@design_info=get_news()
  end
   def get_news()
	    url='http://www.sj33.cn/article/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<ul class="artlist">.*/
	    re1= $'.to_s 
	    re1=~ /<\/div>/
	    re2 =  $`.to_s	    
	    re2.gsub('href="','target="_blank" href="http://www.sj33.cn/')  		
	end

end
