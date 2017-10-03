# README

## usersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique: true|
|email|string|null: false, unique: true|
|image|string|

### Assosiation
- has_many :orders
- has_many :projects, through: :project_users
- has_many :project_users


## suppliersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|content|text|null: false|
|image|string|

### Assosiation
- has_many :projects
- has_many :articles


## projectsテーブル

|column|Type|Options|
|------|----|-------|
|name|text|index: true, null: false, unique: true|
|content|text|null: false|
|image|string|
|supplier_id|integer|null: false|

### Assosiation
- belongs_to :supplier
- has_many :users, through: :project_users
- has_many :project_users
- has_many :orders
- has_many :articles


## ordersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|
|address|text|null: false|
|telephone|string|null: false|
|postal-code|string|null: false|
|user_id|integer|null: false|
|project_id|integer|null: false|

### Assosiation
- belongs_to :user
- belongs_to :project

## articlesテーブル
|column|Type|Options|
|------|----|-------|
|content|text|null: false|
|image|string|
|supplier_id|integer|null: false|

### Assosiation
- belongs_to :project
- belongs_to :supplier


## project_usersテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|project_id|integer|null: false|

### Assosiation
- belongs_to :user
- belongs_to :project