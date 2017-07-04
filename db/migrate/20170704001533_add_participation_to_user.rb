class AddParticipationToUser < ActiveRecord::Migration
  def change
    add_reference :users, :participation, index: true, foreign_key: true, default: 1
  end
end
