class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.integer :year
      t.text :syllabus
      t.string :g
      t.string :model
      t.string :director
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
