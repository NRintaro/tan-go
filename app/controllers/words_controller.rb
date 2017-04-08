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
      redirect_to @word, notice: "単語が登録されました。"
    else
      # ValidationエラーなどでDBに保存できない場合 new.html.erbを再表示
      render 'new'
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できない
  def word_params
    params.require( :word ).permit( :word, :reading, :meaning, :example )
  end

end
