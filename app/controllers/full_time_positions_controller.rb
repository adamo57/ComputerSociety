class FullTimePositionsController < ApplicationController

  def index
  	@full_time_positions = FullTimePosition.all

  	respond_to do |format|
  	  format.html # index.html.erb
  	  format.json { render json: @full_time_positions }
  	end
  end

  # GET /full_time_position/1
  # GET /full_time_position/1.json
  def show
  	@full_time_position = FullTimePosition.find(params[:id])

  	respond_to do |format|
  		format.html # show.html.erb
  		format.json { render json: @full_time_position }
  	end
  end

  # GET /full_time_position/new
  # GET /full_time_position/new.json
  def new
  	@full_time_position = FullTimePosition.new

  	respond_to do |format|
  		format.html #new.html.erb
  		format.json { render json: @full_time_position }
  	end
  end

  # GET /full_time_position/1/edit
  def edit
  	@full_time_position = FullTimePosition.find(params[:id])

  	respond_to do |format|
  		format.html #show.html.erb
  		format.json { render json: @full_time_position }
  	end
  end

  # POST /full_time_position
  # POST /full_time_position.json
  def create
  	@full_time_position = FullTimePosition.new(full_time_position_params)

  	respond_to do |format|
  		if @full_time_position.save
  			format.html { redirect_to @full_time_position, notice: 'Position was successfully created'}
  			format.json { render json: @full_time_position, status: :created, location: @full_time_position }
  		else
  			format.html { render action: "new" }
  			format.json { render json: @full_time_position.errors, status: :unprocessable_entity }
  		end
  	end
  end

  # PUT /full_time_position/1
  # PUT /full_time_position/1.json
  def update
  	@full_time_position = FullTimePosition.find(params[:id])

  	respond_to do |format|
  		if @full_time_position.update_attributes(full_time_position_params)
  			format.html { redirect_to @full_time_position, notice: 'Posiiton was successfully updated.' }
  			format.json { head :no_content }
  		else
  			format.html { render action: "edit" }
  			format.json { render json: @full_time_position.errors, status: :unprocessable_entity }
  		end
  	end
  end

  # DELETE /full_time_position/1
  # DELETE /full_time_position/1.json
  def destroy
  	@full_time_position = FullTimePosition.find(params[:id])
  	@full_time_position.destroy

  	respond_to do |format|
  		format.html { redirect_to root_path, notice: 'Posiiton was successfully destroyed.' }
  		format.json { head :no_content }
  	end
  end

  private

    def full_time_position_params
      params.require(:full_time_position).permit(:position, :company, :link)
    end
end

