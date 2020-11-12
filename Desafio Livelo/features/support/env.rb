require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    config.app_host = 'https://www.livelo.com.br/'
end
