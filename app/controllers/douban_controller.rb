class DoubanController < ApplicationController
  def show
  	@douban=get_douban
  end
  
     def get_douban()
	    url='http://www.douban.com/location/chengdu/events/week-all'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
    
	    re=~/<ul class="events-list events-list-pic100 events-list-psmall">*/
	    re1= $'.to_s 
	    re1=~ /<div class="paginator">/
	    re2 = $`.to_s	
	    re3=re2.gsub('<a href="','<a target="_blank" href="')
	    re4=re3.gsub('<div class="pic">','<div class="pic" style="display:none">')
		end	
end
