# README

##usersテーブル

|Column|Type|Option|
|------|----|------|
|name|string |null: false,index: true,unique: true|
|email|string|null:false|
|password_dogest|string||

###association
- has_many :questions
- has_many :answers
- has_many :user_relationships

##categoriesテーブル
 |     Column    | Type  |      Option                         |
 |---------------|-------|-------------------------------------|
 |     name      | text  |null: false                          |

###association
  - has_many :categories_questions
  - has_many :quesitons, through: :categories_questions


##categories_questionsテーブル
 |     Column    | Type  |      Option                         |
 |---------------|-------|-------------------------------------|
 |     category_id      | integer  |null: false, foreign_key: true   |
 |    question_id  | integer | null: false, foreign_key: true |

###association
  - belongs_to :category
  - belongs_to :question

##questionsテーブル

|     Column    | Type  |      Option                         |
|---------------|-------|-------------------------------------|
|     body      | text  |null: false                          |
|    user_id    |integer|null: false,foreign_key: true        |

###associacion
- belongs_to :user
- has_many :answers
- has_many :categories_questions
- has_many :categories, through: :categories_questions



##answersテーブル

|     Column    | Type  |      Option                         |
|---------------|-------|-------------------------------------|
|     body      | text  |null: false                          |
|    user_id    |integer|null: false,foreign_key: true        |
|   question_id |integer|null: false,foreign_key: true        |

###association
- belongs_to :question





##user_relationshipsテーブル

|     Column    | Type   |      Option                         |
|---------------|--------|-------------------------------------|
|   follower_id | integer|null: false ,foreign_key: true       |
|   followed_id |integer |null: false,foreign_key: true        |

###association
- belongs_to :user

