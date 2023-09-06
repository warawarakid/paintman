# アプリケーション名

paintman

## アプリケーション概要

塗料の持ち出し履歴を管理できる。
管理者の在庫管理業務の効率化・削減が期待できる。

## URL

https://paintman.onrender.com

## テスト用アカウント

Basic認証ID：admin

Basic認証パスワード：2222

メールアドレス：

パスワード

## 利用方法

### 塗料投稿機能

1.トップページのヘッダーからユーザー新規登録を行う
2.新規持ち出しボタンから、塗料の入力し投稿する

### 履歴詳細機能

1.トップページの履歴一覧ボタンから、履歴一覧を確認する
2.修正箇所があれば、編集ボタンから修正する。

## アプリケーションを作成した背景

現在働いている職場では、作業者が塗料を倉庫から持ち出す際、紙の記録表を10枚（10職場）あるうちの
1枚を探し、そこに30色以上の塗料リストにチェックを打っています。
管理者は月末にその記録表を回収し棚卸しをしています。
作業者の紙に記載する手間と管理者の記録表の準備や集計の手間を考えた結果、
このアプリケーションを作成することにより、その作業の効率化と改善が見込めると
期待し、作成しました。

## 洗い出した要件

https://docs.google.com/spreadsheets/d/1ibaYnGpvvM9GcuKYr_U0WJ0oydtA1SKrwBUtnNbsAuY/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明


## 実装予定の機能

## データベース設計

[![Image from Gyazo](https://i.gyazo.com/e39a497b9bdaae9dff14749a091f5cf0.png)](https://gyazo.com/e39a497b9bdaae9dff14749a091f5cf0)

## 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/9561d8c385a5977ef18e76f3eb230ff3.png)](https://gyazo.com/9561d8c385a5977ef18e76f3eb230ff3)

## 開発環境

Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/haml&Scss

## ローカルでの動作方法

以下のコマンドを順に実行。
% git clone https://github.com/warawarakid/paintman

% cd paintman

% bundle install

% yarn install

## 工夫したポイント

###### スマートホンやタブレットに対応したCSSの作成
このオリジナルアプリは将来的に実用化を目指して作成しています。
作業者はPCに触れることが基本ないため、スマートホン対応で製作することが必須でした。
今回学習したカリキュラムには、スマホ対応の内容は学んでいないため、自分で調べ実装しました。
ただ、実用化するにはまだまだ見た目の部分での修正が多く、機能としても不十分であるのが現状です。
今後継続して、シンナーや廃棄塗料などを記録管理できる機能の追加、見た目の修正を行い、
実用化に向けて取り組んでいます。