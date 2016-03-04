# id, content, favorites, marked_as_deleted, created_at, updated_at, user_id

class Wit < ActiveRecord::Base
  belongs_to(:user)
end
