# CaseMap（事例マップ）

このウェブアプリは不審者情報などの事例をなるべくリアルタイムにシェアすることを目的に作られました。要望などありましたらこのリポジトリのissueまでお願いします。

動作にはGoogle Maps APIキーが必要です。

「誰でも事例が登録できる」というのは正確性が求められるこの仕組において難しかったのでいったんFacebookへのログインが必要としてあります。

また、メールはAWSのSESを使って送付しているため、これも必要となっています。

# 開発

一般的なRuby on Railsアプリと同じです。

環境によって切り替えたい、または、秘密にしたいパラメーターは `dotenv-rails` を使って値を渡しています。

`git clone` したら `cp .env.sample .env` してこのドキュメントの別項を参照、 `.env` を書き換えるなどしてから `rails s` などしてください。

# 必要なもの

## Google Maps APIキー

[Google Maps の APIキー を簡単に取得する – ねんでぶろぐ](https://nendeb.com/276) などを参考にして取得してください。 `.env` ファイル経由で渡す場合には以下の値を指定してください。

``` shell
GOOGLE_MAPS_APIKEY=
```

## FacebookアプリIDなど

FacebookアプリIDなど用意してください。 `.env` ファイル経由で渡す場合には以下の値を書き込んでください

``` shell
FACEBOOK_APP_ID=APP_ID
FACEBOOK_APP_SECRET=APP_SECRET
```

## AWS SES

`Amazon SES` でメールを送出できるように設定し、 `IAM` にて権限を与えたユーザを作成してください。`.env` ファイル経由で渡す場合には以下の値を指定してください。

``` shell
AWS_ACCESS_KEY_ID=AWS_SES_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY=AWS_SES_SECRET_ACCESS_KEY
```

# 注意

DBはSQLite3を用いているので注意してください。

