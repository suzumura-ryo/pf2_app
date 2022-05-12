class ApplicationController < ActionController::Base
    #ログイン失敗時のフラッシュでbootstrapの記述
    add_flash_types :success, :info, :warning, :danger
    
    #ログインでヘッダーが変更になるヘルパーを呼び出すメソッド
    include SessionsHelper
    
    private
    
    # beforeアクション
    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインしてください"
        redirect_to login_url
      end
    end
end
