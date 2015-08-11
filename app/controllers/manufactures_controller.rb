class ManufacturesController < ApplicationController

  def index
    @manufacture = Manufacture.all



  end

  def show
    @manufacture = Manufacture.find_by_name(params[:id])

  end

  def new
    @manufacture = Manufacture.new()
  end

  def create

    @manufacture = Manufacture.new(params[:manufacture])
    if @manufacture.save
      flash[:notice] = "Successfully created manufacture."
      redirect_to :controller => "manufactures", :action => 'show', :id => @manufacture.name
      else
      render :action => 'new'
    end

  end

  def edit
    @manufacture = Manufacture.find(params[:id])
  end

  def update

    @manufacture = Manufacture.find(params[:id])
    if @manufacture.update_attributes(params[:manufacture])
      flash[:notice] = "Successfully updated manufacture."
      redirect_to @manufacture
    else
      render :action => 'edit'
    end

  end

end