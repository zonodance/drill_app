class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(memo: params[:memo])
    # モデル名.create←これはcreateメソッド。(カラム名: 保存する値)
    # params[:name属性の値]、memo:はキー
    # postsテーブルのmemoカラムに、name属性にmemoの値を持っているフォームから送信されたデータを保存する
  end
end