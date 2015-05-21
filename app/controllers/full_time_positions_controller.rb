class FullTimePositionsController < InheritedResources::Base

  private

    def full_time_position_params
      params.require(:full_time_position).permit(:position, :company, :link)
    end
end

