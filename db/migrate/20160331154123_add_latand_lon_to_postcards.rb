class AddLatandLonToPostcards < ActiveRecord::Migration
  def change
    add_column :postcards, :latitude, :string
    add_column :postcards, :longitude, :string
  end
end
