class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :name,           default: ''      
      t.text :description,      default: ''    
      t.decimal :price,         default: 0.0     
      t.boolean :dairy_free,    default: false      
      t.boolean :gluten_free,   default: false      
      t.boolean :vegan,         default: false      
      t.boolean :vegetarian,    default: false      
      t.boolean :available,     default: true     
      t.boolean :catering,      default: false      
      t.boolean :featured,      default: false      

      t.timestamps
    end
  end
end
