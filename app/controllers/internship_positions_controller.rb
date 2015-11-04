class InternshipPositionsController < ApplicationController

  def index
  	@internship_positions = InternshipPosition.all

  	respond_to do |format|
  	  format.html # index.html.erb
  	  format.json { render json: @internship_time_positions }
  	end
  end

  # GET /internship_position/1
  # GET /internship_position/1.json
  def show
  	@internship_position = InternshipPosition.find(params[:id])

  	respond_to do |format|
  		format.html # show.html.erb
  		format.json { render json: @internship_position }
  	end
  end

  # GET /internship_position/new
  # GET /internship_position/new.json
  def new
  	@internship_position = InternshipPosition.new

  	respond_to do |format|
  		format.html #new.html.erb
  		format.json { render json: @internship_position }
  	end
  end

  # GET /internship_position/1/edit
  def edit
  	@internship_position = InternshipPosition.find(params[:id])

  	respond_to do |format|
  		format.html #show.html.erb
  		format.json { render json: @internship_position }
  	end
  end

  # POST /internship_position
  # POST /internship_position.json
  def create
  	@internship_position = InternshipPosition.new(internship_position_params)

  	respond_to do |format|
  		if @internship_position.save
  			format.html { redirect_to @internship_position, notice: 'Position was successfully created'}
  			format.json { render json: @internship_position, status: :created, location: @internship_position }
  		else
  			format.html { render action: "new" }
  			format.json { render json: @internship_position.errors, status: :unprocessable_entity }
  		end
  	end
  end

  # PUT /internship_position/1
  # PUT /internship_position/1.json
  def update
  	@internship_position = InternshipPosition.find(params[:id])

  	respond_to do |format|
  		if @internship_position.update_attributes(internship_position_params)
  			format.html { redirect_to @internship_position, notice: 'Posiiton was successfully updated.' }
  			format.json { head :no_content }
  		else
  			format.html { render action: "edit" }
  			format.json { render json: @internship_position.errors, status: :unprocessable_entity }
  		end
  	end
  end

  # DELETE /internship_position/1
  # DELETE /internship_position/1.json
  def destroy
  	@internship_position = InternshipPosition.find(params[:id])
  	@internship_position.destroy

  	respond_to do |format|
  		format.html { redirect_to root_path, notice: 'Posiiton was successfully destroyed.' }
  		format.json { head :no_content }
  	end
  end

  private

    def internship_position_params
      params.require(:internship_position).permit(:position, :company, :link)
    end
end

