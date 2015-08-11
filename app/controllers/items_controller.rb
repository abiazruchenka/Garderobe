class ItemsController < ApplicationController

  def index
    @item = Item.all

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new()
    5.times {@item.assets.build} # added this
  end

  def create

    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = "Successfully created item."
      redirect_to @item
    else
      render :action => 'new'
    end

  end

  def edit
    @item = Item.find(params[:id])
    5.times {@item.assets.build} # added this
  end

  def update

    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:notice] = "Successfully updated item."
      redirect_to @item
    else
      render :action => 'edit'
    end

  end
  
end
