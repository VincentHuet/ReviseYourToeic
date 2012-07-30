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

require 'test_helper'

class OriginalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
