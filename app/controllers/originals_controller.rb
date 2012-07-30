
class OriginalsController < ApplicationController
  # GET /originals
  # GET /originals.json
  def index
    @originals = Original.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @originals }
    end
  end

  # GET /originals/1
  # GET /originals/1.json
  def show
    @original = Original.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @original }
    end
  end

  # GET /originals/new
  # GET /originals/new.json
  def new
    @original = Original.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @original }
    end
  end

  # GET /originals/1/edit
  def edit
    @original = Original.find(params[:id])
  end

  # POST /originals
  # POST /originals.json
  def create
    @original = Original.new(params[:original])

    respond_to do |format|
      if @original.save
        format.html { redirect_to @original, notice: 'Original was successfully created.' }
        format.json { render json: @original, status: :created, location: @original }
      else
        format.html { render action: "new" }
        format.json { render json: @original.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /originals/1
  # PUT /originals/1.json
  def update
    @original = Original.find(params[:id])

    respond_to do |format|
      if @original.update_attributes(params[:original])
        format.html { redirect_to @original, notice: 'Original was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @original.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /originals/1
  # DELETE /originals/1.json
  def destroy
    @original = Original.find(params[:id])
    @original.destroy

    respond_to do |format|
      format.html { redirect_to originals_url }
      format.json { head :no_content }
    end
  end
end
