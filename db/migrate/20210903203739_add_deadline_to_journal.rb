class AddDeadlineToJournal < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :deadline, :datetime
  end
end
