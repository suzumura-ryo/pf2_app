class ApplicationController < ActionController::Base
    #ログイン失敗時のフラッシュでbootstrapの記述
    add_flash_types :success, :info, :warning, :danger
    
    #ログインでヘッダーが変更になるヘルパーを呼び出すメソッド
    include SessionsHelper
end
