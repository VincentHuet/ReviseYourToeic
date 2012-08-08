
class HomeController < ApplicationController
  # GET /words
  # GET /words.json
  def index
    @words = Word.all

    @vocabulary = YmlLoader.load_yaml("fr.yml")

    hash_path = ""
    indent = ""
    @count = YmlLoader.parse_yaml_toeic_to_db(@vocabulary, hash_path, indent)

    side_bar


    # @printed_hash = TranslationsManager.hash_to_export(@vocabulary, "", "&nbsp;", "<br />")
  end

end
