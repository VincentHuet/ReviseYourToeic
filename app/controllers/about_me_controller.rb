class AboutMeController < ApplicationController
  # GET /words
  # GET /words.json
  def index
    @vocabulary = YmlLoader.load_yaml("fr.yml")
    side_bar
  end

end
