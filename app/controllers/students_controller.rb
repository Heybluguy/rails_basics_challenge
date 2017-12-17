class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def create
    student = Student.new(student_params)
    if student.save
      redirect_to student_path(student)
    else
      render :new
    end
  end

  def destroy
    student = Student.find(params[:id])
    if student.destroy
      flash[:success] = 'Student was successfully deleted.'
      redirect_to students_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to student_path(student)
    end
  end

  private

    def student_params
      params.require(:student).permit(:name)
    end

end