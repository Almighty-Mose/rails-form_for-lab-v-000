require 'pry'
class StudentsController < ApplicationController
  def new
  end

  def index
  end

  def show
    find_student
  end

  def create
    @student = Student.create(pass_params)

    redirect_to student_path(@student)
  end

  def update
    find_student
    binding.pry
    @student = Student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
    find_student
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def pass_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
