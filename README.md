# アプリ名
BOOK TWEET

# 概要
本専用の画像投稿アプリです。一覧画面にて、投稿された書籍の画像などを見ることができます。気になった投稿の詳細ボタンにて、詳細表示できます。気に入った投稿にはコメントをすることができます。ユーザー登録を行うことで、画像の投稿、編集、削除ができるようになります。またユーザー名をクリックすることで、そのユーザーの投稿一覧を見ることができます。 


# URL

# 本番環境
https://book-tweets.herokuapp.com/
ID：admin　PASS：1111

# テスト用アカウント
email：aaa@111　PASS：aaa111
email：bbb@222　PASS：bbb222

# 制作背景
友人と面白い本、おすすめしたい本を共有したい時に、中々思い出せないことが多く共有したくてもできないという課題を解決したいと思いました。このアプリを使用いただくことで、オンライン上でも気楽に多くの人と本の共有が可能となり、読書の幅が広がり、最高の一冊に出会ってほしいという願いを込めています。

# DEMO


# 工夫したポイント
Active　Storageを導入して、画像投稿を簡単にできるようにしました。また、投稿した画像を一覧画面に適切なサイズで表示できるようにしました。

# 使用技術
HTML・CSS・Ruby・Ruby on Rails・GitHub

# 課題や今後実装したい機能
今後、Gemを使って投稿日時が表示されるような実装をしたいと考えています。Java scriptを利用した、投稿画像プレビュー機能も実装したいです。
課題としては、より見やすく使いやすいアプリにしたいと思っています。そのためにCSSをもっと勉強してレイアウトを改善してブラッシュアップをかけていきたいです。

# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| -------------------| ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many :tweet
- has_many :comments

## tweets テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| image           |            |                   |
| title           |  string    | null: false       |
| revue           |  text      | null: false       |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| text      | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :tweet