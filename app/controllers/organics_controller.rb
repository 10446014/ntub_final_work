class OrganicsController < ApplicationController

  before_action :find_by, only:[:show, :edit, :update, :destroy]


  def index
    @organics = Organic.all
  end

  def new
    @organic = Organic.new
  end

  def edit
  end

  def update
   if @organic.update(organic_params)
     redirect_to organics_path, notice: "Organic was updated successfully"
   else
   render "edit"
   end
  end

  def destroy
    @organic.destroy
    redirect_to organics_path, notice: "Organic was delete!!"
  end

  def show
  end

   def create
    @organic = current_user.organics.new(organic_params)

     if @organic.save
    #flash[:notice] = "Candidate was created successfully"
    redirect_to organics_path, notice: "Organic was created successfully"

    else
    render "new"
    end
  end

end

private
  def organic_params
    params.require(:organic).permit(:title, :description, :price, :image)
  end

  def find_by
     @organic = Organic.find_by(id: params[:id])
  end
