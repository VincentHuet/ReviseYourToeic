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

require 'test_helper'

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
