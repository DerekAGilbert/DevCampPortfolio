class PagesController < ApplicationController
  def home
  	@posts = blog,all
  end

  def about
  end

  def contact
  end
end
