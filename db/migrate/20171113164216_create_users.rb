class CreateUsers < ActiveRecord::Migration[5.0]

  def up
    #id doesn't added automatically
    #create_table :users, :id => false do |t| 
    create_table :users do |t|
      #:limit => size
      #:default => value
      #:null => true/false
      #:precision => number
      #:scale => number
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      t.timestamps
      #t.datetime "created_at"
      #t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end

  #Migration commands
  #rails db:migrate --run unloaded migrations
  #rails db:migrate VERSION=0 --go first version
  #rails db:migrate VERSION=12323213 --go version 12323213
  #rails db:migrate:status
  #rails db:migrate:up VERSION=34324324
  #rails db:migrate:down VERSION=2332432
  #rails db:migrate:redo VERSIOM=3434343

  #table migration methods
  #create_table
  #drop_table
  #rename_table

  #column migration methods
  #add_column
  #remove_column
  #rename_column
  #change_column

end
