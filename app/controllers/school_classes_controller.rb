class SchoolClassesController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
  end

  def update
  end

  def edit
  end
end
