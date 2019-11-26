#httpステータスが正常に送られているか
#rendertemplateが上手く行っているか
#インスタンス変数に値が代入されているか
#モデル数の増減
#redirectの可否

require 'rails_helper'

RSpec.describe 'POST /souvenirs', type: :request do

    context "必要なユーザー情報が全て揃っている時" do
        
        it "リクエストokを返す" do
        end

        it "ユーザー数が１増える" do
        end

    end


    context "必要な条件が揃っていない時" do
        it "ユーザー数が増えない" do
        end

        it "フラッシュメッセージを出す" do
        end
    end

    context "emailが重複しているとき" do
        it "フラッシュメッセージを出す" do
        end
    end
end

