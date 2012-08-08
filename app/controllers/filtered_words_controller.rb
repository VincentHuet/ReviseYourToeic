class FilteredWordsController < ApplicationController
  def index_filtered
    @originals = Original.all
    @counter = 0
    @originals_filtered = []
    @expression = params[:expression]
    @expression = @expression.gsub("+", "\.")
    @originals.each do |original|
      if ( original.path =~ /#{@expression}/ )
        @counter += 1
        @originals_filtered << original
      end
    end
    side_bar
  end
end