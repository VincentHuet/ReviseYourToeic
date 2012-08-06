# == Schema Information
#
# Table name: words
#
#  id          :integer          not null, primary key
#  english     :string(255)
#  french      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  path        :string(255)
#  original_id :integer
#

class Word < ActiveRecord::Base
  attr_accessible :english
  attr_accessible :french

  belongs_to :original

  delegate :path, :to => :original
end
