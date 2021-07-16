# README

## Users

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| email         | string | null: false,unique: true |
| encrypted_password | string | null: false |
| profile       | text  |              |

### Association
has_many :reviews


## Songs

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| song_name       | string | null: false |
| song_image       | string | null: false |
| song_url       | string | null: false |
| composer       | string | null: false |

### Association
has_many :reviews
has_one :composer

## Reviews

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| review_text          | text | null: false |
| review_title          | integer | null: false |
| user          | references | null: false,foreign_key: true |
| song          | references | null: false,foreign_key: true |

### Association
belongs_to :song
belongs_to :user

## Composers

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| composer_name | string | null: false |

### Association
belongs_to :song

## Star

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| star_num      | string | null: false |

### Association
belongs_to :song