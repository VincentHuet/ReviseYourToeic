class ApplicationController < ActionController::Base
  protect_from_forgery

  def side_bar
    @vocabulary = YmlLoader.load_yaml("fr.yml")

    @liste = TranslationsManager.hash_to_export(@vocabulary, "", "-", "<br>")
    @liste_without_key = @liste.gsub(/[-]{8}.+?<br>/, "")

    @liste_v2 = TranslationsManager.export_liste(@vocabulary, "", "li", "")
    @liste_without_key_2 = @liste_v2
  end

end
