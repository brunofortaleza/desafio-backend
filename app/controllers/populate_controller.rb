class PopulateController < ApplicationController

  def import_file
    if params[:file].present?
      Populate::ImportDataFileService.run(params[:file])
      redirect_to deputies_path
    end
  end
end
