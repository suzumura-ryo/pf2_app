# メインのサンプルユーザーを1人作成する
User.create!(nickname:  "管理者",
             email: "h@h",
             password:              "hhh",
             password_confirmation: "hhh",
             admin: true)
