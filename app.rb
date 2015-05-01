require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

get('/word') do
  @word_list = Word.all()
  erb(:word)
end

get('/words') do
  erb(:words)
end

post('/word/new') do
  word = params.fetch('word')
  Word.new({:word => word}).save()
  @word_list = Word.all()
  erb(:word)
end
