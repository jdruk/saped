class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
