# Timber.io Ruby Library
#
#  ^  ^  ^   ^      ___I_      ^  ^   ^  ^  ^   ^  ^
# /|\/|\/|\ /|\    /\-_--\    /|\/|\ /|\/|\/|\ /|\/|\
# /|\/|\/|\ /|\   /  \_-__\   /|\/|\ /|\/|\/|\ /|\/|\
# /|\/|\/|\ /|\   |[]| [] |   /|\/|\ /|\/|\/|\ /|\/|\
#
# Library:  http://github.com/timberio/timber-ruby
# Docs:     http://www.rubydoc.info/github/timberio/timber-ruby
# Support:  support@timber.io

logger = case Rails.env
when "development", "test"
  logger = Timber::Logger.new(STDOUT)
  logger.formatter = Timber::Logger::SimpleFormatter.new
  logger
else
  Timber::Logger.new(STDOUT)
end

Timber::Frameworks::Rails.set_logger(logger)
