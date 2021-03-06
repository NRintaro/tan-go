class WordsController < ApplicationController

  def show
    @word = Word.find(params[:id])
  end

  def new
    # @word に空のModelオブジェクトを作成し、インスタンス変数@wordに設定
    # @wordはViewでも使える
    @word = Word.new
  end

  def create
    @word =  Word.new( word_params )
    if @word.save
      # @wordはword_path(@word)に自動変換される
      redirect_to @word, notice: "登録されました。"
    else
      # ValidationエラーなどでDBに保存できない場合 new.html.erbを再表示
      render :new
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy!
    redirect_to root_path, notice: "削除されました"
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    if @word.update( word_params )
      redirect_to @word, notice: "更新されました"
    else
      render :edit
    end
  end

  private

  # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できない
  def word_params
    params.require( :word ).permit( :word, :reading, :meaning, :example )
  end

end
