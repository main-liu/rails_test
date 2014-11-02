class RedcarpetTestController < ApplicationController
  def index
	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	@html = markdown.render("This is [an example](http://example.com/ 'Title') <br> # inline link.  # ")
  end

  def updatetext
    puts '====================='
    text= params[:q]
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @html = markdown.render(text)
    respond_to do |format|
      format.js 
    end
  end
end
