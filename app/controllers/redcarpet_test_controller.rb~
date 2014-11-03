
class RedcarpetTestController < ApplicationController
  include TruncateHtmlHelper
  def index
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	@html = markdown.render("This is [an example](http://example.com/ 'Title') <br> # inline link.  # ")
  end
  
  def updatetext
    puts '====================='
    text= params[:q]
    htm=MarkHelper::Markdown.render(text)
    @html = MarkHelper::Markdown.render(text) #获取文章

    #truncate_html获取摘要
    #@html =truncate_html(MarkHelper::Markdown.render(text), :length => 250, :omission => '', :break_token => '<!-- truncate -->')
    respond_to do |format|
      format.js 
    end
  end
  #http://chaoskeh.com/blog/markdown-and-redcarpet.html
  #https://ruby-china.org/topics/474
end



