class AddAvtarColumnToAttendee < ActiveRecord::Migration
  def self.up
    change_table :attendees do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :attendees, :avatar
  end
end
