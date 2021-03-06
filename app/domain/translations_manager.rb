class TranslationsManager


  def self.hash_to_export(locale_translation_hash, indent, space_type, return_type)
    return_phrase = ""
    locale_translation_hash.each_key do |locale_sub_level_key|
      if locale_translation_hash[locale_sub_level_key].class == Hash
        return_phrase << "#{indent}#{locale_sub_level_key}: #{return_type}"
        return_phrase << self.hash_to_export(locale_translation_hash[locale_sub_level_key], indent + space_type*2, space_type, return_type)
      else
        return_phrase << self.add_key_and_value(locale_translation_hash, indent, return_type, locale_sub_level_key)
      end
    end
    return_phrase.to_s
  end

  def self.add_key_and_value(locale_translation_hash, indent, return_type, locale_sub_level_key)
    return_phrase = ""
    if !locale_translation_hash[locale_sub_level_key].to_s.blank?
      return_phrase << indent << locale_sub_level_key + ": \" " + locale_translation_hash[locale_sub_level_key].to_s + "\"" + return_type
    else
      return_phrase << indent << locale_sub_level_key + ": " + "\" \"" + return_type
    end
  end

  def self.export_liste(locale_translation_hash, ancestor, space_type, return_type)
    return_phrase = ""
    locale_translation_hash.each_key do |locale_sub_level_key|
      if locale_translation_hash[locale_sub_level_key].class == Hash
        ancestor_custom = "#{ancestor}.#{locale_sub_level_key}"
        ancestor_custom = ancestor_custom.gsub("\.", "+")
        link = "/filtered_words/#{ancestor_custom}/index_filtered"
        return_phrase << "<#{space_type}><a href='#{link}'>#{locale_sub_level_key}</a></#{space_type}><ul>#{return_type}"
        return_phrase << self.export_liste(locale_translation_hash[locale_sub_level_key], ancestor_custom, space_type, return_type)
        return_phrase << "</ul>"
      end
    end
    return_phrase.to_s
  end




end