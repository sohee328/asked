class QuestionsController < ApplicationController
   
   #Create
    def new
    #사용자가 데이터를 입력할 화면
    #자동으로 액션 이름과 같은 화면을 불러서 사용자에게 보여줘라.
    end
    
    def create
    #입력받은 데이터를 실제 DB 저장할 액션.
        @question = Question.new
        @question.title = params[:input_title]
        @question.content = params[:input_content]
        @question.save
        
        redirect_to "/questions/show/#{@question.id}"
    end
    
    #Read
    def index
    #모든 질문들을 보여주는 view
        @questions =Question.all
    end
    
    def show
    #한 개의 질문을 보여주는 view
        @question = Question.find(params[:question_id])
        @comments = Comment.where(question_id: params[:question_id])
    end
    
    #Update
    def edit
    #사용자가 데이터를 입력할 화면
        @question = Question.find(params[:question_id])
    end
    
    def update
    #입력받은 데이터를 실제 DB에 저장할 액션
        @question = Question.find(params[:question_id])
        #수정할 코드
        @question.title = params[:input_title]
        @question.content = params[:input_content]
        @question.save
        
        redirect_to "/questions/show/#{@question.id}"
    end
    
    #Delete
    def delete
    #한 개의 질문을 삭제
        @question = Question.find(params[:question_id])
        @question.delete
        redirect_to '/'
    end
end
