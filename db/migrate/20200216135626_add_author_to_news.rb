class AddAuthorToNews < ActiveRecord::Migration[6.0]
  def change
    change_table :news do |t|
      t.belongs_to :author
    end
  end
end
