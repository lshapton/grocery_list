class SupplyVariantsController < ApplicationController
  before_action :set_supply_variant, only: [:show, :edit, :update, :destroy]

  # GET /supply_variants
  # GET /supply_variants.json
  def index
    @supply_variants = SupplyVariant.all
  end

  # GET /supply_variants/1
  # GET /supply_variants/1.json
  def show
  end

  # GET /supply_variants/new
  def new
    @supply_variant = SupplyVariant.new
  end

  # GET /supply_variants/1/edit
  def edit
  end

  # POST /supply_variants
  # POST /supply_variants.json
  def create
    @supply_variant = SupplyVariant.new(supply_variant_params)

    respond_to do |format|
      if @supply_variant.save
        format.html { redirect_to @supply_variant, notice: 'Supply variant was successfully created.' }
        format.json { render :show, status: :created, location: @supply_variant }
      else
        format.html { render :new }
        format.json { render json: @supply_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_variants/1
  # PATCH/PUT /supply_variants/1.json
  def update
    respond_to do |format|
      if @supply_variant.update(supply_variant_params)
        format.html { redirect_to @supply_variant, notice: 'Supply variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_variant }
      else
        format.html { render :edit }
        format.json { render json: @supply_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_variants/1
  # DELETE /supply_variants/1.json
  def destroy
    @supply_variant.destroy
    respond_to do |format|
      format.html { redirect_to supply_variants_url, notice: 'Supply variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_variant
      @supply_variant = SupplyVariant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_variant_params
      params.require(:supply_variant).permit(:title)
    end
end
