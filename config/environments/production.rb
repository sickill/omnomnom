puts "Configuring production environment..."

use Rack::LessCss, :less_path => File.join(APP_ROOT, "public", "stylesheets")

# configure logging
log_dir = File.join(APP_ROOT, 'log')
FileUtils.mkdir_p(log_dir) unless File.exists?(log_dir)
log = File.new(File.join(log_dir, "production.log"), "a")
$stdout.reopen(log)
$stderr.reopen(log) 
