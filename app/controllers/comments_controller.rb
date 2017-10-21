get '/questions/:question_id/comments/new' do
  if logged_in?
    @question = Question.find(params[:question_id])
    erb :'comments/new'
  else
    redirect("/questions/#{@question.id}")
  end
end

post '/questions/:question_id/comments' do
  if logged_in?
    @question = Question.find(params[:question_id])
    @comment = @question.comments.create(body: params[:body], user_id: session[:id])
    redirect("/questions/#{params[:question_id]}")
  else
    redirect('/questions')
  end
end
