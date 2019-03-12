class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    flash.notice = "Tag Deleted!"
    Tag.find(params[:id]).destroy

    redirect_to articles_path
  end
end
