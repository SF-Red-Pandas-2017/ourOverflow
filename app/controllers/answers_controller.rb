get '/questions/:question_id/answers/new' do
  p session[:id]
  if logged_in?
    @question = Question.find(params[:question_id])
    erb :'answers/new'
  else
    redirect('/questions')
  end
end

post '/questions/:question_id/answers' do
  if logged_in?
    @answer = Answer.create(body: params[:body], question_id: params[:question_id])
    redirect('/questions/:id')
  else
    redirect('/questions')
  end
end
