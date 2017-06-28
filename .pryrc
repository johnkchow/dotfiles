begin
  require "awesome_print"
  AwesomePrint.pry!
  if defined?(Rails)
    extend Rails::ConsoleMethods
  end
rescue LoadError
end
