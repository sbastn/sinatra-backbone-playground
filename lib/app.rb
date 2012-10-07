require 'coffee_script'
require 'compass'
require 'haml'
require 'sinatra'
require 'susy'

class Application < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :public_folder, 'public'

  configure do 
    Compass.configuration do |config| 
      config.project_path = root 
      config.sass_dir = "#{root}/views" 
    end 

    set :haml, { :format => :html5 } 
    set :sass, Compass.sass_engine_options 
  end 

  get '/' do
    haml :index
  end

  get '/css/*.css' do |style|
    sass :"stylesheets/#{style}"
  end

  get '/javascript/app/*.js' do |name|
    coffee :"coffee/#{name}"
  end
end
