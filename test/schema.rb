ActiveRecord::Schema.define do
  create_table :pages do |t|
    t.integer :version
    t.string :title
    t.text :body
    t.datetime :created_on
    t.datetime :updated_on
    t.integer :author_id
    t.integer :revisor_id
  end

  create_table :page_versions do |t|
    t.integer :page_id
    t.integer :version
    t.string :title
    t.text :body
    t.datetime :created_on
    t.datetime :updated_on
    t.integer :author_id
    t.integer :revisor_id
  end

  # add_index :page_versions, [:page_id, :version], :unique => true

  create_table :authors do |t|
    t.integer :page_id
    t.string :name
  end

  create_table :locked_pages do |t|
    t.integer :lock_version
    t.string :title
    t.text :body
    t.string :type
  end

  create_table :locked_pages_revisions do |t|
    t.integer :page_id
    t.integer :lock_version
    t.string :title
    t.text :body
    t.string :version_type
    t.column :updated_at, :datetime
  end

  # add_index :locked_pages_revisions, [:page_id, :lock_version], :unique => true

  create_table :widgets do |t|
    t.string :name
    t.string :foo
    t.integer :version
    t.datetime :updated_at
  end

  create_table :widget_versions do |t|
    t.integer :widget_id
    t.string :name
    t.integer :version
    t.datetime :updated_at
  end

  # add_index :widget_versions, [:widget_id, :version], :unique => true

  create_table :landmarks do |t|
    t.string :name
    t.string :latitude
    t.string :longitude
    t.string :doesnt_trigger_version
    t.integer :version
  end

  create_table :landmark_versions do |t|
    t.integer :landmark_id
    t.string :name
    t.float :latitude
    t.float :longitude
    t.string :doesnt_trigger_version
    t.integer :version
  end

  # add_index :landmark_versions, [:landmark_id, :version], :unique => true
end
