class CreateProductionsVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :productions_venues do |t|
      t.belongs_to :production, index: true
      t.belongs_to :venue, index: true
   
      t.timestamps
    end
  end
end
