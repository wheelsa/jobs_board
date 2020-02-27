class CandidatesController < ApplicationController
  before_action :set_candidates, only: [:show, :edit, :update, :destroy]
  def index
    @candidates = Candidate.all
  end
  
  def new
    @candidate = Candidate.new
  end 

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to candidates_path
    else 
      render :new
    end 

  end 
  def show

  end

  def edit
  end

  def update 

    if candidate.update(candidate_params)
      redirect_to candidates_path
    else 
      render:edit
    end

  end

  def destroy
    @candidate.destroy
    redirect_to candidates_path
  end 
  private

    def set_candidates
      @candidate = Candidate.find(params[:id])
    end 

    def candidate_params
      params.require(:candidate).permit(:name, :location, :current_occupation, :years_experience)
    end 

end
