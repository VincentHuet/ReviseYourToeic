# == Schema Information
#
# Table name: originals
#
#  id         :integer          not null, primary key
#  path       :string(255)
#  base       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Original < ActiveRecord::Base
  attr_accessible :base
  attr_accessible :path
end
