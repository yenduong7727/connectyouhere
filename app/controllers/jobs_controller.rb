class JobsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create,:edit, :update,:destroy]
  before_action :correct_user,   only: :destroy
  
  def index
    if params[:classification_ids]
      @jobs = Job.where(:classification_id => params[:classification_ids]).where("closed_date > ?", Time.zone.now.beginning_of_day).includes(:classification).order('created_at DESC').paginate(page: params[:page] , :per_page => 15)
    else
      @jobs = Job.where("closed_date > ?", Time.zone.now.beginning_of_day).includes(:classification).order('created_at DESC').paginate(page: params[:page] , :per_page => 15)
    end
    @selected_classification = (params[:classification_ids].present? ? params[:classification_ids] : [])
    @classifications = Classification.all
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.includes(:classification).find_by_slug(params[:id])
    @jobs = Job.where.not(id: @job.id).includes(:classification).order("RANDOM()").where(classification_id: @job.classification.id).where("closed_date > ?", Time.zone.now.beginning_of_day).take(3)
  end

  def edit
    @job = Job.find_by_slug(params[:id])
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Job posted!"
      redirect_to root_url
    else
      render 'jobs/new'
    end
  end

  def update
    @job = Job.find_by_slug(params[:id])
    if @job.update_attributes(job_params)
      flash[:success] = "Job updated"
      redirect_to @job
    else
      render 'edit'
    end
  end


  def destroy
    @job.destroy
    redirect_to root_url
  end

  private

  def job_params
    params.require(:job).permit!
  end

  def correct_user
    @job = current_user.jobs.find_by(id: params[:id])
    redirect_to root_url if @job.nil?
  end

  def permit!
    each_pair do |key, value|
      convert_hashes_to_parameters(key, value)
      self[key].permit! if self[key].respond_to? :permit!
    end

    @permitted = true
    self
  end
end
