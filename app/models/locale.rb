# == Schema Information
#
# Table name: locales
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  primary_locale :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Locale < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :primary_locale
end
