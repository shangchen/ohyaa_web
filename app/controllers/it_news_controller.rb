class ItNewsController < ApplicationController
  def show
  		@it_news=get_it_news
  end
  
   def get_it_news()
            url='http://tech.163.com/special/0009rt/internet_roll.html'
						begin
                        re1=Net::HTTP.get_response(URI(url))
                        re=re1.read_body

            rescue
              error_info='sorry,server not response'
              return error_info
            end
    
            re=~/ <div class="tList14px">.*/
            re1= $'.to_s
            re1=~ /<span class="blank20">/
	    
            re2 ='<div>'+ $`.to_s
            re3=re2.gsub('<a','<a target="_blank" ')	


 end  
end
