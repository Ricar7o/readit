class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def edit
    @link = Link.find_by_id(params[:id])
  end

  def create
    @link = Link.new(params[:link])
    
    if @link.save
      redirect_to @link
    else
      render action: 'new'
    end
  end

  def show
    @link = Link.find_by_id(params[:id])
  end
end
