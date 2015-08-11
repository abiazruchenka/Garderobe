class ManufactureItemsController < ApplicationController

  def index
    @manufactureitem = ManufactureItem.all

  end

  def show
    @manufactureitem = ManufactureItem.find(params[:id])
  end

  def new
    @manufactureitem = ManufactureItem.new()
  end

  def create

    @manufactureitem = ManufactureItem.new(params[:manufactureitem])
    if @manufactureitem.save
      flash[:notice] = "Successfully created manufacture."
      redirect_to :controller => "manufactures", :action => 'show', :id => @manufactureitem.name
    else
      render :action => 'new'
    end

  end

  def edit
    @manufactureitem = ManufactureItem.find(params[:id])
  end

  def update

    @manufactureitem = ManufactureItem.find(params[:id])
    if @manufactureitem.update_attributes(params[:manufactureitem])
      flash[:notice] = "Successfully updated manufacture."
      redirect_to @manufactureitem
    else
      render :action => 'edit'
    end

  end

end