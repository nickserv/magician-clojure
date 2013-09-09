# Require all of magician's stuff
lib_path = File.join(File.dirname(__FILE__), 'magician', '*.rb')
Dir[lib_path].each { |file| require file }
