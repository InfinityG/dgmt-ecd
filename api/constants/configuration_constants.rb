require 'openssl'

module ConfigurationConstants
  module Environments
    DEVELOPMENT = {
        :host => 'localhost',
        :port => 9000,
        :api_auth_token => '7b2ebe64dc9149ac8a9e923bf2a6b233',
        :shared_aes_key => 'ky4xgi0+KvLYmVp1J5akqkJkv8z5rJsHTo9FcBc0hgo=',
        :id_provider_public_ecdsa_key => 'A1blXQkf5AH7pfNNx2MIwNXytCyV/wxmQOt7ZGgccvVQ',
        :mongo_host => 'localhost',
        :mongo_port => 27017,
        :mongo_db => 'dgmt-ecd',
        :logger_file => 'app_log.log',
        :logger_age => 10,
        :logger_size => 1024000,
        :default_request_timeout => 60,
        :allowed_origin => 'http://localhost:8000',
        :static => true,
        :public_folder => './static/www'
    }

    # TEST = {
    #     :host => '0.0.0.0',
    #     :port => 9000,
    #     :ssl_cert_path => '/etc/ssl/certs/server.crt',
    #     :ssl_private_key_path => '/etc/ssl/private/server.key',
    #     :api_auth_token => '60f3cc3379574239a4389ce293674ab4',
    #     :shared_aes_key => 'ky4xgi0+KvLYmVp1J5akqkJkv8z5rJsHTo9FcBc0hgo=',
    #     :id_provider_public_ecdsa_key => 'A1blXQkf5AH7pfNNx2MIwNXytCyV/wxmQOt7ZGgccvVQ',
    #     :mongo_host => 'localhost',
    #     :mongo_port => 27017,
    #     :mongo_db => 'ig-contracts',
    #     :logger_file => 'app_log.log',
    #     :logger_age => 10,
    #     :logger_size => 1024000,
    #     :default_request_timeout => 60,
    #     :allowed_origin => '*'
    #     # :static => true,
    #     # :public_folder => 'docs'
    # }

    # PRODUCTION = {
    #     :host => '10.0.0.208',
    #     :port => 9000,
    #     :ssl_cert_path => '/etc/ssl/certs/server.crt',
    #     :ssl_private_key_path => '/etc/ssl/private/server.key',
    #     :api_auth_token => 'f20298dddd5142be9616b15baee5da9c',
    #     :admin_username => 'admin',
    #     :admin_password => '12billyBob!*/',
    #     :mongo_host => '10.0.1.46',
    #     :mongo_port => 27017,
    #     :mongo_db => 'contracts',
    #     :mongo_db_user => 'contractsUser',
    #     :mongo_db_password => 'g4f1jh4g1234!',
    #     :logger_file => 'app_log.log',
    #     :logger_age => 10,
    #     :logger_size => 1024000,
    #     :default_request_timeout => 60,
    #     :allowed_origin => 'localhost'
    #     # :static => true,
    #     # :public_folder => 'docs'
    # }
  end
end