class YmlLoader
  def self.load_pathes
    Dir.glob('config/locales/**/*en.yml')
  end

  def self.load_locales
    self.load_pathes.each do |file|
      new_yml_source = YmlSource.new
      file_path = file.sub!(/config\/locales\//,"").to_s
      file_name = file.to_s
      new_yml_source.path = file_path
      new_yml_source.name = file_name.sub(/\/en.yml/,"").sub(/\./,"").sub(/[\/]/,"_")
      new_yml_source.save if YmlSource.find_by_path(file).nil?
    end
  end

  def self.load_yml_content
    yml_to_hash = ''
    self.load_pathes.each do |file|
      indent = "--"
      yml_to_hash = self.load_yaml(file)
      self.parse_yaml_to_db(yml_to_hash, '.', indent)
    end
  end

  def self.load_yaml(path)
    yml_to_hash = ''
    yml_file_path = "#{Rails.root}/config/locales/" + path
    yml_to_hash = YAML::load(File.open(yml_file_path))
    yml_to_hash
  end









  def self.parse_yaml_toeic_to_db(hash_branch, hash_path, indent)
    counter = 0
    hash_branch.each_key do |sub_tree_key|
      if hash_branch[sub_tree_key].kind_of? Hash
        counter += parse_yaml_toeic_to_db(hash_branch[sub_tree_key], hash_path + "." + sub_tree_key.to_s, indent)
      else
        counter += new_toeic_phrase_entry(hash_path, sub_tree_key, hash_branch)
      end
    end
    counter
  end

  def self.new_toeic_phrase_entry(hash_path, sub_tree_key, hash_branch)
    new_original = Original.new
    new_original.path = hash_path + "." + sub_tree_key.to_s
    new_original.base = sub_tree_key.to_s
    counter = 0
    if Original.find_by_path(new_original.path).nil? && !new_original.blank?
      new_original.save
      counter = 1
      populate_word_table(hash_branch, sub_tree_key, new_original)
    end
    counter
  end

  def self.populate_word_table(hash_branch, sub_tree_key, relevant_original)
    new_word = Word.new
    new_word.french = hash_branch[sub_tree_key].to_s
    new_word.english = sub_tree_key
    new_word.path = relevant_original.path
    new_word.original_id = relevant_original.id

    new_word.save if Word.find_by_original_id(new_word.original_id).nil?
  end




  def self.export_hash_to_yaml_locale(yaml_exported_file, locale)
    File.open("#{Rails.root}/public/data/#{locale.name}.yml", 'w') do |file|
      file.write yaml_exported_file
    end
  end
end