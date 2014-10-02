class CreateJoinTablePagesUsers < ActiveRecord::Migration
  def change
    create_join_table :pages, :users do |t|
      # t.index [:page_id, :user_id]
      # t.index [:user_id, :page_id]
    end
  end
end
