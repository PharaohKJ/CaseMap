# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  %w(1 白山 H28.12.31 12:30 その他 道路 自転車 露出),
  %w(2 大聖寺 H29.1.4 11:00 その他 その他 不明 迷惑行為),
  %w(3 金沢西 H29.1.11 不明 下校中 道路 不明 声掛け),
  %w(4 白山 H29.1.11 7:20 登校中 道路 徒歩 つきまとい),
  %w(5 白山 H29.1.11 7:30 登校中 道路 徒歩 接触),
  %w(6 白山 H29.1.12 7:20 登校中 道路 徒歩 接触),
  %w(7 小松 H29.1.12 15:40 下校中 道路 自動車 写真撮影),
  %w(8 白山 H29.1.15 不明 その他 自宅付近 自動車 つきまとい),
  %w(9 金沢西 H29.1.17 16:00 下校中 道路 自動車 写真撮影),
  %w(10 津幡 H29.1.17 15:15 下校中 道路 徒歩 声掛け),
  %w(11 津幡 H29.1.19 15:50 下校中 自宅付近 徒歩 つきまとい),
  %w(12 金沢西 H29.1.23 14:00 その他 その他 不明 その他),
  %w(13 金沢西 H29.1.24 17:50 下校中 道路 徒歩 接触),
  %w(14 七尾 H29.1.31 7:50 その他 その他 不明 その他)
].each do |r|
  User.find_or_create_by(
    title: r[7],
    description: r[0..7].join(' '),
    address: '石川県' + r[1] + "(石川県警情報より)"
  )
end
