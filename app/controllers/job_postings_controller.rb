class JobPostingsController < ApplicationController
  before_class :set_job_posting, only: [:show, :edit, :update, :destroy]

  def index
    @job_postings = Job_posting.all
  end

  def new
    @job_posting = Job_posting.new
  end

  def create
    @job_posting = Job_posting.new(job_posting_params)

    if @job_posting.save
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

    if @job_posting.update(job_posting_params)
      redirect_to job_postings_path
    else
      render :edit
    end 
  end

  def destroy
    @job_posting.destroy
    redirect_to job_postings_path
  end

  private
    def set_job_posting
      @job_posting = Job_posting.find(params(:id))
    end 
    
    def job_posting_params
      params.require(:job_posting).permit(:title, :company,:requirements, :job_description)
    end 

end
