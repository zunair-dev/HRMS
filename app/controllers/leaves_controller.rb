class LeavesController < ApplicationController
  before_action :set_leave, only: %i[ show edit update destroy ]

  # GET /leaves or /leaves.json
  def index
    @leaves = Leave.all
  end

  # GET /leaves/1 or /leaves/1.json
  def show
  end

  # GET /leaves/new
  def new
    @leave = Leave.new
  end

  # GET /leaves/1/edit
  def edit
  end

  # POST /leaves or /leaves.json
  def create
    @leave = Leave.new(leave_params)

    respond_to do |format|
      if @leave.save
        format.html { redirect_to leave_url(@leave), notice: "Leave was successfully created." }
        format.json { render :show, status: :created, location: @leave }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaves/1 or /leaves/1.json
  def update
    respond_to do |format|
      if @leave.update(leave_params)
        format.html { redirect_to leave_url(@leave), notice: "Leave was successfully updated." }
        format.json { render :show, status: :ok, location: @leave }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaves/1 or /leaves/1.json
  def destroy
    @leave.destroy

    respond_to do |format|
      format.html { redirect_to leaves_url, notice: "Leave was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave
      @leave = Leave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_params
      params.require(:leave).permit(:start_date, :end_date, :leave_type, :status, :employee_id)
    end
end
