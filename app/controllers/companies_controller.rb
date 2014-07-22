class CompaniesController < ApplicationController
  unloadable


  def index
    @companies = Company.all
  end
  def new
    @company =  Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:notice] = "Successfully saved"
     else
     render 'new'
     end 
  end

  def show
  end

  def edit
  end

  def update
  end

  
end
