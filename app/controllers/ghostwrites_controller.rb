class GhostwritesController < ApplicationController
  before_action :set_ghostwrite, only: [:show, :edit, :update, :destroy]

  # GET /ghostwrites
  # GET /ghostwrites.json
  def index
    @ghostwrites = Ghostwrite.all
  end

  # GET /ghostwrites/1
  # GET /ghostwrites/1.json
  def show
  end

  # GET /ghostwrites/new
  def new
    @ghostwrite = Ghostwrite.new
  end

  # GET /ghostwrites/1/edit
  def edit
  end

  # POST /ghostwrites
  # POST /ghostwrites.json
  def create
    @ghostwrite = Ghostwrite.new(ghostwrite_params)

    respond_to do |format|
      if @ghostwrite.save
        format.html { redirect_to @ghostwrite, notice: 'Ghostwrite was successfully created.' }
        format.json { render :show, status: :created, location: @ghostwrite }
      else
        format.html { render :new }
        format.json { render json: @ghostwrite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ghostwrites/1
  # PATCH/PUT /ghostwrites/1.json
  def update
    respond_to do |format|
      if @ghostwrite.update(ghostwrite_params)
        format.html { redirect_to @ghostwrite, notice: 'Ghostwrite was successfully updated.' }
        format.json { render :show, status: :ok, location: @ghostwrite }
      else
        format.html { render :edit }
        format.json { render json: @ghostwrite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ghostwrites/1
  # DELETE /ghostwrites/1.json
  def destroy
    @ghostwrite.destroy
    respond_to do |format|
      format.html { redirect_to ghostwrites_url, notice: 'Ghostwrite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ghostwrite
      @ghostwrite = Ghostwrite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ghostwrite_params
      params.require(:ghostwrite).permit(:title, :string, :content, :text)
    end
end
