class TagsController < ApplicationController
  def show
    @tag = CGI.unescape(params[:tag])
    @projects = Project.tagged_with(@tag)
  end
end
