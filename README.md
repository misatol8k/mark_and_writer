# README

# "mark(an:D)writer" 『マークライター』

## 概要
書いたら作家！

短編小説、エッセイ、大喜利コメントなどを簡単に投稿できるアプリです。  
投稿作品への感想コメントやお気に入り機能で、作品づくりのモチベーションアップにも役立ちます。  
また、作品のここがすごい！とシェアできる「一文一句」の文章マーク機能も実装予定です。

## コンセプト
短い文章を手軽に投稿・シェアできるアプリ

## バージョン
Ruby 2.6.5  
Rails 5.2.4

## 機能一覧
- [ ] 文章作成
- [ ] 作品投稿
- [ ] 作品編集・削除
- [ ] 作品の一覧表示
- [ ] 作品の詳細表示
- [ ] 作品の絞り込み
- [ ] 作品の検索
- [ ] 作品のコメント投稿
- [ ] 作品のお気に入り登録
- [ ] ユーザーのログイン認証
- [ ] ユーザー登録
- [ ] ユーザー編集・削除
- [ ] ユーザーの詳細表示
- [ ] ユーザー管理
- [ ] フォロー・フォロワー追加

## カタログ設計
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=1845466140

## テーブル定義
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=1040159303

## ER図
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=860313838

## 画面遷移図
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=558805680

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=1078174568

## 使用予定Gem
* bcrypt
* kaminari
* carrierwave
* mini_magick
* devise
* ransack

#### テスト・開発環境
* faker
* pry-rails
* better_errors
* binding_of_caller

## 必須要件
* devise
* フォロー機能
* ransack

# English Ver

# README

# "mark(an:D)writer"

## Overview
If you write something, you'll be a writer!

It's an app that allows you to easily post short stories, essays, and funny comments.  
The comments and favorites feature will help motivate you to write more.  
You can also use the "mark" feature which will let users share "What's so awesome here!"

## Concept
An application that allows you to easily post and share short sentences.

## Version
Ruby 2.6.5  
Rails 5.2.4

## Functions list
- [ ] Writing
- [ ] Submission
- [ ] Editing and Deleting Works
- [ ] View a list of works
- [ ] View details of a work
- [ ] Narrow down the works
- [ ] Search a work
- [ ] Post comments on a work
- [ ] Bookmark a work
- [ ] User Login Authentication
- [ ] User Registration
- [ ] Editing and deleting users
- [ ] Viewing User Details
- [ ] User Management
- [ ] Adding Followers and Follower

## Catalog design,Table_Definition,Screen transition diagram,,Wire frame
https://docs.google.com/spreadsheets/d/1UQ8rfOuJdwhkmS8w8EuxujKZNbWYvNBzhYkXAy2c1Hs/edit#gid=1845466140

## To be used Gem
* bcrypt
* kaminari
* carrierwave
* mini_magick
* devise
* ransack

#### for development and test environment
* faker
* pry-rails
* better_errors
* binding_of_caller
