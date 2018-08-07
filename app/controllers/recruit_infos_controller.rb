class RecruitInfosController < ApplicationController
  before_action :set_recruit_info, only: [:show, :update, :destroy]

  # GET /recruit_infos
  def index
    @recruit_infos = RecruitInfo.all

    render json: @recruit_infos
  end

  # GET /recruit_infos/1
  def show
    render json: @recruit_info
  end

  # POST /recruit_infos
  def create
    @recruit_info = RecruitInfo.new(recruit_info_params)

    if @recruit_info.save
      render json: @recruit_info, status: :created, location: @recruit_info
    else
      render json: @recruit_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recruit_infos/1
  def update
    if @recruit_info.update(recruit_info_params)
      render json: @recruit_info
    else
      render json: @recruit_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recruit_infos/1
  def destroy
    @recruit_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruit_info
      @recruit_info = RecruitInfo.where(:User_id => params[:id])
      if @recruit_info
        @recruit_info = @recruit_info.first
      end
    end

    # Only allow a trusted parameter "white list" through.
    def recruit_info_params
      params.require(:recruit_info).permit(:User_id, :college, :loc_pref, :board_loc, :doj, :dob, :uan, :aadhar, :pan, :bank_name, :bank_ac, :ifsc)
    end
end
