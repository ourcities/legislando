# Be sure to restart your server when you modify this file.

require 'rack-cas/session_store/rails/active_record'
Rails.application.config.session_store :rack_cas_active_record_store
