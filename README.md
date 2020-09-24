# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


 ## usersテーブル

 | Column     | Type     | Options          |
 | ---------- | -------- | ---------------- |
 | name       | string   | null: false      |
 | email      | string   | null: false      |
 | number     | string   | null: false      | 
 | password   | string   | null: false      |

 ## Association
  has_many :cars
  has_many :inspections
  has_many :graphs


 ## carsテーブル

 | Column            | Type      | Options                         |
 | ----------------- | --------- | ------------------------------- |
 | vehicle_type      | integer   | null: false                     |
 | number_of_units   | integer   | null: false                     |
 | insurance         | integer   | null: false                     |
 | card              | integer   | null: false                     |
 | user              | reference | null: false, foreign_key: true  |

## Association
 belongs_to :user
 has_one :graph
 

 ## inspectionsテーブル

 | Column             | Type       | Options                        |
 | ------------------ | ---------- | ------------------------------ |
 | vehicle_inspection | integer    | null: false                    | 
 | year_inspection    | integer    | null: false                    | 
 | relief_inspection  | integer    | null: false                    | 
 | free_inspection    | integer    | null: false                    |
 | user               | reference  | null: false, foreign_key: true |

## Association
 belongs_to :user
 has_one :graph
 
 ## graphsテーブル

 | Column       | Type       | Options                        |
 | ------------ | ---------- | ------------------------------ |
 | car          | reference  | null: false, foreign_key: true |
 | inspection   | reference  | null: false, foreign_key: true |

 belongs_to :user
 belongs_to :car
 belongs_to :inspection

## アプリケーション名 
  実績記入アプリ

## アプリケーション概要
  販売台数、点検入庫台数、保険獲得件数、カード獲得件数を記入し、前年比と比較していくアプリ

## URL
  

## テスト用アカウント

## 利用方法
  カテゴリー選択になっており、選択した値がグラフになる

## 目指した課題解決
  今まで手書きで申請しており、記入ミスなどがあったり時間が掛かっていたので時間短縮と記入の確実性を目指し、さらにグラフ化させることで過去との比較がすぐにわかるのでモチベーションアップのために作成した。

## 洗い出した要件
  ・ユーザー登録機能・入力画面のルーム選択・ユーザー編集機能・ログアウト機能・グラフ機能

## 実装した機能についてのGIFと説明

## 実装予定の機能
  入力画面のルーム選択、グラフ機能

## データベース設計
  https://gyazo.com/02f383a8c48743d0a69291302356cfd2

## ローカルでの操作方法