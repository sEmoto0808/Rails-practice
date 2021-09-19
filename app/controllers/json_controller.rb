class JsonController < ApplicationController

    def index
        user = {
            id: 1,
            name: "John",
            age: 20
        }

        render json: user
    end
end
