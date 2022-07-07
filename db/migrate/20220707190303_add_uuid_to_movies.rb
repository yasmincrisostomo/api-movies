class AddUuidToMovies < ActiveRecord::Migration[6.1]
  def up
    add_column :movies, :uuid, :uuid, default: 'gen_random_uuid()', null: false
    rename_column :movies, :id, :integer_id
    rename_column :movies, :uuid, :id
    execute 'ALTER TABLE movies drop constraint movies_pkey;'
    execute 'ALTER TABLE movies ADD PRIMARY KEY (id);'

    execute 'ALTER TABLE ONLY movies ALTER COLUMN integer_id DROP DEFAULT;'
    change_column_null :movies, :integer_id, true
    execute 'DROP SEQUENCE IF EXISTS movies_id_seq'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
