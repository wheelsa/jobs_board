class JobBoardMetrosController < ApplicationController
  before_action :set_candidate
  def index
    @slc = @candidate.job_board_metros.where(role: 'Salt Lake City')
    @seattle = @candidate.job_board_metros.where(role: 'Seattle')
    @sf = @candidate.job_board_metros.where(role: 'San Francisco')
    @austin = @candidate.job_board_metros.where(role: 'Austin')
  end

  def show
  end

  def edit
  end

  def new
    @job_board_metro = @candidate.job_board_metros.new(job_board_metro_params)
  end

  def create
    @job_board_metro = @candidate.job_board_metros.new(job_board_metro_params)
    if @job_board_metro.save
      redirect_to candidate_job_board_metro_path(@candidate)
    else 
      render :new
    end 

    def destroy
      @candidate = @candidate.job_board_metros.find(params[:id])
      @candidate.destroy
      redirect_to patient_job_board_metros_path(@candidate)
    end 

  end 

  private 

  def set_candidate
    @candidate = Candidate.find(params[:candidate_id])
  end 

  def job_board_metro_params
    params.require(:job_board_metro).permit(:metro_area,:job_posting_id)
  end 

end
