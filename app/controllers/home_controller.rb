class HomeController < ApplicationController
  def index
     @posts = Post.all

     num = rand(@posts.length)
     @featured_post = @posts[num]

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @posts }
      end
  end

end
