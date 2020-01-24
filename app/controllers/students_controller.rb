class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def edit 
    set_student
    @student.change_active
    @student.save
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end