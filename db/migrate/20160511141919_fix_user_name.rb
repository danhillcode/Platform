class FixUserName < ActiveRecord::Migration
  def change
    rename_column :lectures, :user_id, :teacher_id
  end
end
