class AddUniversityToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :university_id, :integer
  end
end
