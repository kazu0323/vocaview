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
| composer        | references | null: false,foreign_key: true |
| review          | references | null: false,foreign_key: true |
| star            | references | null: false,foreign_key: true |

### Association
has_many :reviews
has_one :composer

## Reviews

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| text          | text | null: false |
| user          | references | null: false,foreign_key: true |
| song          | references | null: false,foreign_key: true |

### Association
belongs_to :song
belongs_to :review

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
