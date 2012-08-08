
class HomeController < ApplicationController
  # GET /words
  # GET /words.json
  def index
    @words = Word.all

    @vocabulary = YmlLoader.load_yaml("fr.yml")

    hash_path = ""
    indent = ""
    @count = YmlLoader.parse_yaml_toeic_to_db(@vocabulary, hash_path, indent)


    @liste = TranslationsManager.hash_to_export(@vocabulary, "", "-", "<br>")
    @liste_without_key = @liste.gsub(/[-]{8}.+?<br>/, "")

    @liste_v2 = TranslationsManager.export_liste(@vocabulary, "", "li", "")
    @liste_without_key_2 = @liste_v2



    # @printed_hash = TranslationsManager.hash_to_export(@vocabulary, "", "&nbsp;", "<br />")
  end

end
