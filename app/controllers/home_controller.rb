class HomeController < ApplicationController
  def index
       @sentence=get_sentence
  end
end

   def get_sentence()
	    url='http://www.dailyenglishquote.com/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='have a good day~ !'
	      return error_info
	    end
	    re=~/<div class="separator" .*/
	    re1= $'.to_s 
	    re1=~ /<!-- AddThis Button END -->/
	    re2 = '<div>'+ $`.to_s	
	 end
