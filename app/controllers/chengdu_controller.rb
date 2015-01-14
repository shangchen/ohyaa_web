class ChengduController < ApplicationController
  def show
	@chengdu=get_news
  end
   def get_news()
	    url='http://cd.bendibao.com/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div class="list_v2">.*/
	    re1= $'.to_s 
	    re1=~ /<!-- end main  -->/
	    re2 = '<div>'+ $`.to_s
	    re3=re2.gsub('<a','<li><a')
	    re3.gsub('a>','a></li>')
	end
end
