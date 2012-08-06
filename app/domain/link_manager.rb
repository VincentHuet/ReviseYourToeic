class LinkManager
  def self.hash_to_link(locale_translation_hash, indent, space_type, return_type)
    # return_phrase = ""
    # locale_translation_hash.each_key do |locale_sub_level_key|
    #   if locale_translation_hash[locale_sub_level_key].class == Hash
    #     return_phrase << indent + locale_sub_level_key + ": " << return_type
    #     return_phrase << self.hash_to_export(locale_translation_hash[locale_sub_level_key], indent + space_type*2, space_type, return_type)
    #   else
    #     return_phrase << self.add_key_and_value(locale_translation_hash, indent, return_type, locale_sub_level_key)
    #   end
    # end
    # return_phrase
  end
end