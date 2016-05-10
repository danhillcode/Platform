class RenameColumn < ActiveRecord::Migration
  def change
  rename_column :lectures, :teacher_id, :user_id
  end
end
