class ToytypesController < ApplicationController
  before_action :set_toytype, only: [:show, :edit, :update, :destroy]

  # GET /toytypes
  # GET /toytypes.json
  def index
    @toytypes = Toytype.all
  end

  # GET /toytypes/1
  # GET /toytypes/1.json
  def show
  end

  # GET /toytypes/new
  def new
    @toytype = Toytype.new
  end

  # GET /toytypes/1/edit
  def edit
  end

  # POST /toytypes
  # POST /toytypes.json
  def create
    @toytype = Toytype.new(toytype_params)

    respond_to do |format|
      if @toytype.save
        format.html { redirect_to edit_toytype_path(@toytype), notice: 'Toytype was successfully created.' }
        format.json { render :show, status: :created, location: @toytype }
      else
        format.html { render :new }
        format.json { render json: @toytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toytypes/1
  # PATCH/PUT /toytypes/1.json
  def update
    respond_to do |format|
      if @toytype.update(toytype_params)
        format.html { redirect_to @toytype, notice: 'Toytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @toytype }
      else
        format.html { render :edit }
        format.json { render json: @toytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toytypes/1
  # DELETE /toytypes/1.json
  def destroy
    @toytype.destroy
    respond_to do |format|
      format.html { redirect_to toytypes_url, notice: 'Toytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toytype
      @toytype = Toytype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toytype_params
      params.require(:toytype).permit(:toytype, :description)
    end
end
