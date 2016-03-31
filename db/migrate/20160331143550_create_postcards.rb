class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.integer :user_id
      t.string :photo_id
      t.string :email_recipient
      t.text :message
      t.string :location

      t.timestamps null: false
    end
  end
end
