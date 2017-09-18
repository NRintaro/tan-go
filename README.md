# バージョン
- rails 5.0.0
- ruby  2.3.0

# tan-go
単語帳。
読書中に調べた単語を記録しておく。

# セットアップ
Gemのインストール
```
bundle install --path vendor/bundle
```
マイグレーションファイルの実行
```
bundle exec rails db:migrate
```
サーバの起動
```
bundle exec rails s -b 0.0.0.0
```

# 未実装な機能
- 単語検索機能
