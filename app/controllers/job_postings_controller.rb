class JobPostingsController < ApplicationController
  before_action :set_jobPosting, only: [:show, :edit, :update, :destroy]

  def index
    @jobPostings = JobPosting.all
  end

  def new
    @jobPosting = JobPosting.new
  end

  def create
    @jobPosting = JobPosting.new(jobPosting_params)

    if @jobPosting.save
      redirect_to job_postings_path
    else
      render :new
    end 

  end 

  def show

  end

  def edit
  end

  def update

    if @jobPosting.update(jobPosting_params)
      redirect_to job_postings_path
    else
      render :edit
    end 
  end

  def destroy
    @jobPosting.destroy
    redirect_to job_postings_path
  end

  private
    def set_jobPosting
      @jobPosting = JobPosting.find(params[:id])
    end 
    
    def jobPosting_params
      params.require(:job_posting).permit(:title, :company,:requirements, :job_description)
    end 

end
