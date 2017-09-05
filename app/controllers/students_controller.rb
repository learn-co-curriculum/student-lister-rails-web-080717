class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    # if that student is valid

    if @student.valid?
      @student.save
      redirect_to students_path
    # otherwise, re-render the form
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :dob)
  end
end
