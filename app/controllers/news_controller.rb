class NewsController < ApplicationController
  def show
 	@news=get_news()
  end

  def get_news()
	url='http://news.baidu.com/'
	begin
	  re=open(url).read
	rescue
	  error_info='sorry, server not resonse'
	  return error_info
	end
	re=~/ulist focuslistnews.*/
	re1=$'.to_s
	re1=~/<\/div/
	re2=$`.to_s
  end
end
