class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.belongs_to :user, index: true
      t.belongs_to :production, index: true
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
