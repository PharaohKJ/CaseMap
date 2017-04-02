class MapController < ApplicationController
  def index
    set_user_from_session
    @pcases = ProblemCase.where('latitude >= ?', 0)
    @markers = Gmaps4rails.build_markers(@pcases) do |pcase, marker|
      next if pcase.latitude.nil?
      marker.lat pcase.latitude
      marker.lng pcase.longitude
      marker.infowindow pcase.description.to_s
      marker.json(title: pcase.case_type.name)
    end
  end
end
