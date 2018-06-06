class PagesController < ApplicationController

  before_action :find_page_by_id, only: [:edit, :update]

  def new
    @page = Page.new
  end

  def create
    @page = Page.new page_params
    if @page.save
      redirect_to "/latest_news"
    else
      render :new
    end

  end

  def latest_news
    @pages = Page.all
  end

  def index

  end

  def edit

  end

  def update
    if @page.update page_params
      redirect_to "/latest_news"
    else
      render :edit
    end
  end

  def destroy

  end


  private
  def page_params
    params[:page].permit :name, :content, :path_to_file
  end

  def find_page_by_id
    @page = Page.find params[:id]
  end

  def hello_world_ruby
    @title = 'hello world, ruby'
  end



end
