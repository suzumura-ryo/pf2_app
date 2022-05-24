# メインのサンプルユーザーを1人作成する
User.create!(nickname:  "管理者",
             email: "h@h",
             password:              "hhh",
             password_confirmation: "hhh",
             admin: true)

#サンプルデータ100件（fakerは使ってない）
#(1..100).each do |i|
 #   Recipe.create(title: "Test Recipe #{i}")
#end

(1..100).each do |i|                              #recipeモデルにbelongs_to :userがあるとデータ入らないのでuser_id:1を付け加えている「Evernote」にも詳細あり
    @recipe = Recipe.new(title: "Test Recipe #{i}",user_id: 1)
    if @recipe.save
        p "======saved========"
    else
        p @recipe.errors.full_messages
    end
end

(1..10).each do |i|
    Procedure.create(content: "テストレシピ#{i}", recipe_id:1, user_id: 1)
end