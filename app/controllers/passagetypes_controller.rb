class PassagetypesController < ApplicationController
  before_action :set_passagetype, only: %i[ show edit update destroy ]

  # GET /passagetypes or /passagetypes.json
  def index
    @passagetypes = Passagetype.all
  end

  # GET /passagetypes/1 or /passagetypes/1.json
  def show
  end

  # GET /passagetypes/new
  def new
    @passagetype = Passagetype.new
  end

  # GET /passagetypes/1/edit
  def edit
  end

  # POST /passagetypes or /passagetypes.json
  def create
    @passagetype = Passagetype.new(passagetype_params)

    respond_to do |format|
      if @passagetype.save
        format.html { redirect_to @passagetype, notice: "Passagetype was successfully created." }
        format.json { render :show, status: :created, location: @passagetype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @passagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passagetypes/1 or /passagetypes/1.json
  def update
    respond_to do |format|
      if @passagetype.update(passagetype_params)
        format.html { redirect_to @passagetype, notice: "Passagetype was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @passagetype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @passagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passagetypes/1 or /passagetypes/1.json
  def destroy
    @passagetype.destroy!

    respond_to do |format|
      format.html { redirect_to passagetypes_path, notice: "Passagetype was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passagetype
      @passagetype = Passagetype.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def passagetype_params
      params.expect(passagetype: [ :title, :content ])
    end
end
