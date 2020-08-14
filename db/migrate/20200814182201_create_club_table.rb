class CreateClubTable < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :teacher_id
    end
  end
end
