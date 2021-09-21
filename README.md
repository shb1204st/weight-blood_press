# テーブル設計

## users テーブル

|Column             |Type     |Options                    |
|--------------------|--------|-------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
|                                                         |

### association

has_many :weight_blood_presses

<br>

## weight_blood_pressesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| weight          | integer    | null: false                    |
| fat             | integer    | null: false
| bone-mascle     | integer    | null: false                    |
| base-metabolism | integer    | null: false                    |
| bmi             | text       | null: false                    |
| hight    　　　  | integer    | null: false                    |
| row        　　　| integer    | null: false                    |
| pluse     　　　 | integer    | null: false                    |
| sleep-time 　　　| time       | null: false                    |
|                                                               |

### association

belongs_to :user
