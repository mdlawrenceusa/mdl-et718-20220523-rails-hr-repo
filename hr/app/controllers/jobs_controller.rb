class JobsController < ApplicationController
    
  def create
    @resume = Resume.find(params[:resume_id])
    @job = @resume.jobs.create(job_params)
    redirect_to resume_path(@resume)
  end
 
 
  def destroy
    @resume = Resume.find(params[:resume_id])
    @job = @reume.jobs.find(params[:id])
    @comment.destroy
    redirect_to resume_path(@resume)
  end
 
 
 
  private
    def job_params
      params.require(:job).permit(:title, :start_date, :end_date, :description)
    end
    
    
end
