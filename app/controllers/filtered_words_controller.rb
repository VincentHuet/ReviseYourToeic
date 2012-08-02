class FilteredWordsController < ApplicationController
  def index_filtered
    @originals = Original.all

    @counter = 0
    @originals_filtered = []

    @expression = params[:expression]

			puts "============================".inspect
			puts "============================".inspect
			puts "============================".inspect
    	puts @originals.class
			puts "============================".inspect
			puts "============================".inspect
    	puts "============================".inspect

    @originals.each do |original|
    	puts "============================".inspect
    	puts original.class
    	puts "============================".inspect

    	if ( original.path =~ /#{@expression}/ )
    		@counter += 1
    		@originals_filtered << original
    	end
    end
  end
end