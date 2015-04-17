require 'sinatra/base'
require 'openssl'
require 'webrick'
require 'webrick/https'
require 'logger'
require 'mongo'
require 'mongo_mapper'

require './api/services/configuration_service'

class ApiApp < Sinatra::Base

  configure do

    config = ConfigurationService.new.get_config

    # set the public folder
    set :public_folder => config[:public_folder]

    # Register routes
    # register Sinatra::CorsRoutes
    # register Sinatra::AuthRoutes
    # register Sinatra::DefaultRoutes
    # register Sinatra::UserRoutes

    # Configure MongoMapper
    MongoMapper.connection = Mongo::MongoClient.new(config[:mongo_host], config[:mongo_port])
    MongoMapper.database = config[:mongo_db]

    if config[:mongo_host] != 'localhost'
      MongoMapper.database.authenticate(config[:mongo_db_user], config[:mongo_db_password])
    end

  end

end