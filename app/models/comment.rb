class Comment < ActiveRecord::Base
    #question에 속해있다.
    belongs_to :question
end
