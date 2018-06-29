class StudentsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))

    redirect_to students_path(@student)
  end

  def update
  end

  def edit
  end
end
