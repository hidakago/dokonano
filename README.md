# README

# DOKONANO

## 概要
いなくなってしまったペットの情報を収集して、飼い主のペット捜索を手助けするためのサービスです。
<br>
探し主は探したいペットの情報をシステムに投稿します。対象のペットの目撃者には、その時の情報と撮影したペットの画像をその投稿に返信してもらいます。探し主は投稿された目撃情報を参照することができます。
<br>
また、目撃画像から位置情報を取得して、その位置情報をプロットした地図を表示することができます。

## コンセプト
私は数年前にへその緒が付いたままの仔猫を保護して、そのままその仔猫と暮らすことになりました。
<br>
猫と共に暮らすうちに、同じように猫と暮らす「猫友」さん達とも交流を持つようになりました。
<br>
猫を室内飼いをしている飼い主たちは、猫が家の外へ出て行ってしまわないよう、細心の注意を払っています。
<br>
家の中が世界のすべてである猫たちにとっては、外の世界は生きていく上でとても過酷な世界であるためです。
<br>
外に出て行ってしまった猫の飼い主の心配や悲しみの大きさは計り知れません。いなくなった猫を探すにあたって助けとなるのは、地域の人たちの目撃情報です。その目撃情報の中でも、「どこそこで見た」、「似た猫をあそこで見た」などの位置情報は、猫の生息範囲を把握して、見つけ出すための有効な手段となります。
<br>
このサービスはそうした情報を収集して提供することにより、探し主の飼い猫の捜索を手助けすることができます。
またこのサービスは、猫以外のペットにも利用できますし、それ以外の探し物にも利用できる可能性があります。
<br>
「大切な探し物は自分一人だけで探さず、みんなに助けてもらおう」そんな思いでできたのがこの「DOKONANO」です。

## バージョン
Ruby 2.5.1
Rails 5.2.3

## 機能一覧
1. ユーザー登録機能
2. ログイン機能
3. ログアウト機能
4. 探し物リクエスト投稿機能
5. 探し物リクエスト一覧表示機能
6. 探し物リクエスト編集機能
7. 探し物リクエスト削除機能
8. 探し物リクエスト詳細表示機能
9. 探し物リクエスト位置情報参照機能
10. 探し物リクエスト締め切り機能
11. 目撃コメント一覧表示機能
12. 目撃コメント投稿機能
13. 目撃コメント投稿時通知メール送信機能
14. ユーザー情報参照機能
15. ユーザー情報編集機能

## 利用フロー図
https://docs.google.com/spreadsheets/d/1gsOOAbtm09DubkV4wp3UYG4OScHcooY9tYjO6X-k55g/edit#gid=0

## カタログ設計
https://docs.google.com/spreadsheets/d/1keL8O8M4-H32D1T0qoKEe8B6BgjHp0HJj2K2czgqrZY/edit#gid=302181004

## テーブル定義
https://docs.google.com/spreadsheets/d/1XVNs9MrFc2XREClhH9CHx_iR0U20bHIg_MLnv1hz5QI/edit#gid=0

## ER図
https://docs.google.com/spreadsheets/d/1HxaS-z-_7H2JIvXUO9kZcUYTQbwwoIbz_mmUE8p3P6o/edit#gid=0

## 画面遷移図
https://docs.google.com/spreadsheets/d/1x8S-q10Z1Dk-gMwPbdWt_YtnSA9Fufbpzp9rrmoe-UU/edit#gid=0

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1-CHgtIgEmtvQa77KK6Sg40x5tiFcgnOdaeaUuCdHnZU/edit#gid=0

## 使用予定Gem
* carrierwave
* mini_magick
* devise
* kaminari
* rmagick
