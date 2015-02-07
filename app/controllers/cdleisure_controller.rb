class CdleisureController < ApplicationController
  def show
      @cdleisure=get_cdleisure
  end
   def get_cdleisure()
	    url='http://cd.bendibao.com/tour/chengduxiuxianwanle/'
	    begin
			re1=Net::HTTP.get_response(URI(url))
			re=re1.read_body
	    rescue
	      error_info='sorry,server not response'
	      return error_info
	    end
	    re=~/<div class="lh30 c_06c pad10lr ft14 clear">*/
	    re1= $'.to_s 
	    re1=~ /<ul class="paginator">/
	    re2 =  "<div>"+$`.to_s	
	    
	    if re2 !~ /cd.bendibao.com/
	       re3=re2.gsub('href="/tour','href="http://cd.bendibao.com/tour')
            else
	       re3=re2
      end	    

	end	
  
end
