class FreshstoresController < ApplicationController
	def index
		require 'csv'
		csv_text = File.read('60653.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
			row = row.to_hash
			Freshstore.create!(row)
		end
		@freshstores = Freshstore.all
	end
end
