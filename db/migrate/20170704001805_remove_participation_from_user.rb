class RemoveParticipationFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :participation
  end
end
