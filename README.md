# DB設計

## users table
| Column     | Type        | Options                                |
|------------|-------------|----------------------------------------|
| name       | string      | null: false, index: true, unique: true |
| mail       | string      | null: false, unique: true              |
| password   | string      | null: false                            |
| intro      | text        | limit: 250                             |
| avatar     | string      |                                        |
| url        | string      |                                        |

### User'model Association
 - has_many : reviews


## mentor table
| Column       | Type        | Options                        |
|--------------|-------------|--------------------------------|
| name         | string      | null: false                    |
| school_id    | int         | foreign_key: true              |

### Mentor's model Association
 - belongs_to : user
 - belongs_to : school
 - has_many : reviews
 - has_many : characters


## reviews table (mentor_review)

| Column     | Type        | Options                        |
|------------|-------------|--------------------------------|
| user_id    | int         | null: false, foreign_key: true |
| mentor_id  | int         | null: false, foreign_key: true |
| content    | text        | null: false                    |
| rate       | int         | null: false                    | delete?

### review's model Association
 - belongs_to : user
 - belongs_to : mentor
 - has_many :rates


## mentorRate table

| Column     | Type        | Options                        |
|------------|-------------|--------------------------------|
| review_id  | int         | null: false, foreign_key: true |
| score      | int         | null: false                    |
| easiness   | int         | null: false                    |
| kindness   | int         | null: false                    |
| strictness | int         | null: false                    |
| sexiness   | int         |                                |


### character's model Association
 - belongs_to : review


## school table

| Column     | Type        | Options                        |
|------------|-------------|--------------------------------|
| name       | string      | null: false, foreign_key: true |
| place      | string      | null: false                    |
|            | int         | null: false                    |
| kindness   | int         | null: false                    |
| strictness | int         | null: false                    |
| sexiness   | int         |                                |


### character's model Association
 - belongs_to : review


## schoolRate table

| Column     | Type        | Options                        |
|------------|-------------|--------------------------------|
| review_id  | int         | null: false, foreign_key: true |
| score      | int         | null: false                    |
| easiness   | int         | null: false                    |
| kindness   | int         | null: false                    |
| strictness | int         | null: false                    |
| sexiness   | int         |                                |


### character's model Association
 - belongs_to : review


