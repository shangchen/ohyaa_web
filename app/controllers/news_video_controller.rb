class NewsVideoController < ApplicationController
  def show
	@news_video=get_news()
  end

   def get_news()
	    url='http://v.ifeng.com/news/'
	    begin
		re1=Net::HTTP.get_response(URI(url))
		re=re1.read_body
	    rescue
	      error_info='sorry,server not response,please try again later.'
	      return error_info
	    end
	    re=~/<!--\/s_itv_index_ad_rectangle_01-->.*/
	    re1= $'.to_s 
	    re1=~ /<\/div> <div class/
	    re2 =  $`.to_s	    		
   end
end
