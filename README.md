# README

##usersテーブル
|     Column      | Type |      Option                             |
| --------------- | ------ | ------------------------------------- |
|     name        | string | null: false,index: true,unique: true  |
|     email       | string | null:false                            |
|password_dogest  | string |                                       |

###association
has_many :questions
has_many :answers
has_many :user_relationships




##questionsテーブル
|     Column    | Type  |      Option                         |
|---------------|-------|-------------------------------------|
|     body      | text  |null: false                          |
|    user_id    |integer|null: false,foreign_key: true        |

###associacion
belongs_to :user
has_many :answers



##answersテーブル
|     Column    | Type  |      Option                         |
|---------------|-------|-------------------------------------|
|     body      | text  |null: false                          |
|    user_id    |integer|null: false,foreign_key: true        |
|   question_id |integer|null: false,foreign_key: true        |

###association
belongs_to :question



##user_relationshipsテーブル
|     Column    | Type   |      Option                         |
|---------------|--------|-------------------------------------|
|   follower_id | integer|null: false ,foreign_key: true       |
|   followed_id |integer |null: false,foreign_key: true        |

###association
belongs_to :user

