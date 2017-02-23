require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
require 'puma'
require './database'
require './models'


set :database, "sqlite3:wdi.db"

enable :sessions


get '/' do

	erb :index

end
def save_email (email)
	file.print(email)

end


#########Database##########
###########################

get '/email' do

@visitors = Visitor.all

	erb :email
end


post '/email' do

Visitor.create(
	email: params[:email]
)
redirect '/'

end

######how I started######
##########################

# params[:email]
# @email = params[:email]
# erb :email, :locals => {:email => params[:email]}





# set :database, "sqlite3:wdi.db"

# enable :sessions


# ActiveRecord::Migration.create_table :user do |t|
#   t.string :emails
#   t.belongs_to :email, index: true
# end












