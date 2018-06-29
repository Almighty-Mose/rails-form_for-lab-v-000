class StudentsController < ApplicationController
  def new
  end

  def index
  end

  def show

  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))

    redirect_to student_path(@student)
  end

  def update
  end

  def edit
  end

  private

  def find_class
    @student = Student.find(params[:id])
  end

  def pass_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
