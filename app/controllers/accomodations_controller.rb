class AccomodationsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create,:edit, :update,:destroy]
  before_action :correct_user,   only: :destroy
  # GET /accomodations
  # GET /accomodations.json
  def index
    @accomodations = Accomodation.all.paginate(page: params[:page] , :per_page => 20)
  end

  # GET /accomodations/1
  # GET /accomodations/1.json
  def show
    @accomodation = Accomodation.find(params[:id])
  end

  # GET /accomodations/new
  def new
    @accomodation = Accomodation.new
  end

  # GET /accomodations/1/edit
  def edit
    @accomodation = Accomodation.find(params[:id])
  end

  # POST /accomodations
  # POST /accomodations.json
  def create
    @accomodation = current_user.accomodations.build(accomodation_params)
    if @accomodation.save
      flash[:success] = "Accomodation posted!"
      redirect_to root_url
    else
      render 'accomodations/new'
    end
  end

  # PATCH/PUT /accomodations/1
  # PATCH/PUT /accomodations/1.json
  def update
    @accomodation = Accomodation.find(params[:id])
    if @accomodation.update_attributes(accomodation_params)
      flash[:success] = "Accomodation updated"
      redirect_to @accomodation
    else
      render 'edit'
    end
  end

  # DELETE /accomodations/1
  # DELETE /accomodations/1.json
  def destroy
   @accomodation.destroy
    redirect_to root_url
  end

  private
    def accomodation_params
    params.require(:accomodation).permit!
  end

  def correct_user
    @accomodation = current_user.accomodations.find_by(id: params[:id])
    redirect_to root_url if @accomodation.nil?
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
