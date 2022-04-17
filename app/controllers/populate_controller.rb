class PopulateController < ApplicationController

  def import_file
    if params[:file].present?
      Populate::ImportDataFileService.run(params[:file])
    end
  end
end