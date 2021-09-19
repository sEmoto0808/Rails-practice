class JsonController < ApplicationController

    def index
        user = {
            id: 1,
            name: "John",
            age: 20
        }

        render json: user
    end

    def view
        @users = [
            { name: "user1", age: 10, isMale: true},
            { name: "user2", age: 22, isMale: false}
        ]

        respond_to do |format|
            # リクエストされるフォーマットがHTML形式の場合
            format.html

            # リクエストされるフォーマットがJSON形式の場合
            format.json { render json: @users }
            # @usersをjson形式のデータへ変換して返す
        end
    end
end
