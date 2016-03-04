class AddUserIdToWits < ActiveRecord::Migration
  def change
    add_column(:wits, :user_id, :integer)
  end
end
