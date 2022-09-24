class Admin::ItemsController < ApplicationController
  def index
    #ページネーション
    @admin_items = Items.page(params[:page])
  end

  def new #エラー
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @new_admin_item = Item.new
  end

  def create
    #データを受け取り新規登録するためのインスタンス作成
    admin_items = Item.new(admin_items_params)
    #データをデータベースに保存するためのsaveメソッド実行
    admin_items.save
    #トップ画面へリダイレクト
    redirect_to '/admin'
  end

  def show
  end

  def edit
    @admin_item = Item.find(params[:id])
  end

  def update
  end

private
  def admin_item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)
  end
end
