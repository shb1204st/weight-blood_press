# テーブル設計

## users テーブル

|Column             |Type     |Options                    |
|--------------------|--------|-------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
|                                                         |

### association

has_many :weights

has_many :blood-presses

<br>

## weights テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| weight          | integer    | null: false                    |
| fat             | integer    | null: false
| bone-mascle     | integer    | null: false                    |
| base-metabolism | integer    | null: false                    |
| bmi             | text       | null: false                    |
|                                                               |

### association

belongs_to :user

<br>

## blood-presses テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| hight      | integer    | null: false                    |
| row        | integer    | null: false                    |
| pluse      | integer    | null: false                    |
| sleep-time | integer    | null: false                    |
| bmi        | integer    | null: false                    |
|                                                          |

### association

belongs_to :user
