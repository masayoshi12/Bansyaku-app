# README
# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| encrypted_password | string              | null: false             |
| nickname           | string              | null: false             |
| gender_id          | integer             | null: false             |
| age_id             | integer             | null: false             |

### Association

* has_many :bansyakus
* has_many :reviews

## bansyakus table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| sake_name                           | string     | null: false       |
| sake_id                             | integer    | null: false       |
| warimono_id                         | integer    |                   |
| one_tumami_name                     | string     | null: false       |
| one_tumami_id                       | integer    | null: false       |
| one_tumami_recipe                   | text       |                   |
| two_tumami_name                     | string     |                   |
| two_tumami_id                       | integer    |                   |
| two_tumami_recipe                   | text       |                   |
| user_comment                        | text       |                   |
| user                                | references |                   |

### Association

- belongs_to :user
- has_many :reviews

## reviews table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| user        | references | foreign_key: true |
| bansyaku    | references | foreign_key: true |
| comment     | text       | null: false       |
| score       | integer    | null: false       |

### Association

- belongs_to :bansyaku
- belongs_to :user