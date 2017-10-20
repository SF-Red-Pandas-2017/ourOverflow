get '/questions/:question_id/answers/new' do
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  @answer = Answer.create(answer_body: params[:answer_body], )
  redirect('/questions/:id')
end

