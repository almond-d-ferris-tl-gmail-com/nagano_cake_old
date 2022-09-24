class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      #追加 id→自動作成される,created_at,updated_at→既に記述あり→不要
      t.integer :customer_id, null: false	#会員ID
      t.string :postal_code, null: false	#配送先郵便番号
      t.string :address, null: false	#配送先住所
      t.string :name, null: false	#配送先氏名
      t.integer :shipping_cost, null: false	#送料
      t.integer :total_payment, null: false	#請求額
      t.integer :payment_method, null: false, default:0	#支払方法,enumで管理
      t.integer :status, null: false, default:0	#受注ステータス,enumで管理

      t.timestamps
    end
  end
end
