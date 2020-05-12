class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @new_student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    if @new_student.valid?
      @new_student.save
      redirect_to student_path(@new_student)
    else
      redirect_to new_student_path
    end
  end

end
