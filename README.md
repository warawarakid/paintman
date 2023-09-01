
# テーブル設計

## Users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ |-------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |

### Association

- has_many :items
- has_many :orders


## Items テーブル

| Column             | Type      | Options                        |
| ------------------ | --------- |------------------------------- |
| color_id           | integer   | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to_active_hash :color
- has_one :histories


## Histories テーブル

| Column     | Type        | Options                        |
|------------|-------------|------------------------------- |
| user       | references  | null: false, foreign_key: true |
| item       | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item


