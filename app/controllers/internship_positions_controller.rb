class InternshipPositionsController < InheritedResources::Base

  private

    def internship_position_params
      params.require(:internship_position).permit(:position, :company, :link)
    end
end

