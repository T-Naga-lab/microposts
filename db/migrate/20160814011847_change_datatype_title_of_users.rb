class ChangeDatatypeTitleOfUsers < ActiveRecord::Migration
  def change
    change_column :users, :comment, :text
    change_column :users, :birth, :date
  end
end
