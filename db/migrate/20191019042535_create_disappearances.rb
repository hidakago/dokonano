class CreateDisappearances < ActiveRecord::Migration[5.2]
  def change
    create_table :disappearances do |t|
      t.string      :title,       null: false, default: ""
      t.text        :description, null: false, default: ""
      t.text        :image1
      t.text        :image2
      t.text        :image3
      t.text        :image4
      t.boolean     :terminate,   null: false, default: false
      t.text        :end_comment
      t.references  :user,        foreign_key: true
      t.timestamps
    end
  end
end
