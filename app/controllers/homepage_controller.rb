class HomepageController < ApplicationController
  before_action :authenticate_employee!
  def index
    @employees = Employee.where(role: 'Employee')
    @questions = Question.where(view_to_list: 1)
    @answers = Answer.all
  end

  def show
    @employee = Employee.find(params[:id])
    @questions = Question.all
    @answers = Answer.where(employee_id: params[:id])
    @answer = Answer.new
  end
end
