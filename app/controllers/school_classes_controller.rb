class SchoolClassesController < ApplicationController
  def new
  end

  def index
  end

  def show
    find_class
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end

  def update
  end

  def edit
    find_class
  end

  private

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end
end
