# README

### usersテーブル

| Column             | Type    | Options                    |
| ------------------ | ------- | -------------------------- |
| email              | string  | null: false, unique: true  | 
| encrypted_password | string  | null: false                | 
| name               | string  | null: false                |
| profile            | text    | null: false                |
| occupation         | text    | null: false                |
| position           | text    | null: false                |

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
