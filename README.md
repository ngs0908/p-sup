# README

# アプリケーション名
P-sup

## アプリケーション概要
このアプリケーションは、ユーザーが一日に摂取した栄養素カロリーを管理することができるWebアプリケーションです。

## URL
デプロイ済みのURL：https://p-sup.onrender.com/

## テスト用アカウント
- ユーザー名: root
- パスワード: 1111

## 利用方法
1. 上記URLにアクセスします。
2. ログイン画面で、テスト用アカウントでログインします。
3. 食べた画像を追加したり、編集したり、カロリーや栄養素を記録できます。
4. 新規登録は画面右上の新規登録ボタンをクリックします。
5. ログアウトは、画面右上のログアウトボタンをクリックします。

## アプリケーションを作成した背景
日々の摂取カロリーの計算やトレーニングをしている人が一日に摂取したカロリーやタンパク質を管理しやすくすることを目的に作成いたしました。

## 洗い出した要件
要件定義のスプレッドシート：[要件定義スプレッドシートへのリンク]https://docs.google.com/spreadsheets/d/1rp7WraNa2Pdv63NyPH4KJ9MKncdC4aGQLaGPfwkS38k/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明※
- アカウント: ユーザーはアカウントを新規登録、ログイン、ログアウトできます。
[![Image from Gyazo](https://i.gyazo.com/14873210f7c38330becd98f12d3ff090.png)](https://gyazo.com/14873210f7c38330becd98f12d3ff090)
- 画像を追加: ユーザーは1回の食事を追加できます。
[![Image from Gyazo](https://i.gyazo.com/c49eee6a9b54e5db511587e3e92cd570.png)](https://gyazo.com/c49eee6a9b54e5db511587e3e92cd570)
- 投稿内容の編集: 食事のタイトルや栄養素、カロリーを編集できます。
[![Image from Gyazo](https://i.gyazo.com/3c842609138ce75b9d347639ca9e63fa.png)](https://gyazo.com/3c842609138ce75b9d347639ca9e63fa)
[![Image from Gyazo](https://i.gyazo.com/48041ffeb7992cde110e387012440fd1.png)](https://gyazo.com/48041ffeb7992cde110e387012440fd1)

![ToDoの追加と編集](https://example.com/images/add_edit_todo.gif)
![ToDoの完了](https://example.com/images/complete_todo.png)

## 実装予定の機能
- カテゴリー分類機能の追加: activehash、Javascriptを導入することで、さらに使いやすくなると考えています。
- カロリー集計機能: 1日のカロリー、タンパク質の摂取量を自動計算する機能を実装予定です。

## データベース設計
- app/er.dio
- 上記に記述


### usersテーブル

| Column             | Type    | Options                    |
| ------------------ | ------- | -------------------------- |
| email              | string  | null: false, unique: true  | 
| encrypted_password | string  | null: false                | 
| name               | string  | null: false                |
| profile            | text    | null: false                |
| age                | text    | null: false                |
| gender             | text    | null: false                |

### Association
- has_many :menus

### menusテーブル

| Column             | Type    | Options                         |
| ------------------ | ------- | ------------------------------- |
| title              | string  | null: false                     |
| catch_copy         | text    | null: false                     |
| concept            | text    | null: false                     |
| user               | references  | null: false, foreign_key: true  |

### Association
- has_one_attached :image
- belongs_to :user
- has_many :comments, dependent: :destroy

### commentsテーブル

| Column             | Type    | Options                         |
| ------------------ | ------- | ------------------------------- |
| content            | text    | null: false                     |
| menu               | references  | null: false, foreign_key: true  |
| user               | references  | null: false, foreign_key: true  |

### Association
- belongs_to :menu
- belongs_to :user

## 画面遷移図
- [![Image from Gyazo](https://i.gyazo.com/50fe04facf57d4d50a1fa3c868608ec2.png)](https://gyazo.com/50fe04facf57d4d50a1fa3c868608ec2)

## 開発環境
- フロントエンド: HTML, CSS, JavaScript, Ruby
- バックエンド: HTML, CSS, JavaScript, Ruby
- データベース: PostgreSQL

## 工夫したポイント
- シンプルなインターフェース: ユーザーが直感的に操作できるようにシンプルなデザインを採用しました。

## 改善点
- カテゴリー分類機能の追加: activehash、Javascriptを導入することで、さらに使いやすくなると考えています。

## 制作時間
アプリケーションの制作には約40時間かかりました。