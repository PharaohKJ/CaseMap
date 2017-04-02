# coding: utf-8
class ProblemCasesController < ApplicationController
  before_action :set_problem_case, only: [:show, :edit, :update, :destroy]

  # GET /problem_cases
  # GET /problem_cases.json
  def index
    @problem_cases = ProblemCase.all
  end

  # GET /problem_cases/1
  # GET /problem_cases/1.json
  def show
  end

  # GET /problem_cases/new
  def new
    set_user_from_session
    @problem_case = ProblemCase.new
  end

  # GET /problem_cases/1/edit
  def edit
  end

  # POST /problem_cases
  # POST /problem_cases.json
  def create
    set_user_from_session
    @problem_case = ProblemCase.new(problem_case_params)
    # @problem_case.geocode if problem_case_params[:by_map] == '0'
    respond_to do |format|
      if @problem_case.save
        AddCaseMailer.add_case(@problem_case).deliver_now
        format.html { redirect_to root_path, notice: '事例は登録されました' }
        format.json { render :show, status: :created, location: @problem_case }
      else
        format.html { render :new }
        format.json { render json: @problem_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problem_cases/1
  # PATCH/PUT /problem_cases/1.json
  def update
    respond_to do |format|
      if @problem_case.update(problem_case_params)
        # if problem_case_params[:by_map]
        #  @problem_case.geocode
        #  @problem_case.save!
        # end
        format.html { redirect_to root_path, notice: 'Problem case was successfully updated.' }
        format.json { render :show, status: :ok, location: @problem_case }
      else
        format.html { render :edit }
        format.json { render json: @problem_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_cases/1
  # DELETE /problem_cases/1.json
  def destroy
    @problem_case.destroy
    respond_to do |format|
      format.html { redirect_to problem_cases_url, notice: 'Problem case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem_case
      @problem_case = ProblemCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_case_params
      params.require(:problem_case).permit(
        :case_type_id,
        :description,
        :address,
        :latitude,
        :longitude,
        :time,
        :by_map,
        :user_id
      )
    end
end
