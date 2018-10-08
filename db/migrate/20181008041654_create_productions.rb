class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.belongs_to :show, index: true
      t.string :title
    end
  end
end
