desc "Initialize project by getting the project name and substituting all relevant instances of railsboiler keywords in the project"
task :init_project do
  orig_proj_name = /railsboiler/
  files = [
    "Makefile",
    "Dockerfile",
    "docker-compose.yml"
  ]
  STDOUT.print "Enter your project name: "
  project_name = STDIN.gets.strip

  files.each do |file|
    text = File.read(file)
    new_text = text.gsub(orig_proj_name, project_name)
    File.open(file, "w") { |f| f.puts new_text }
  end

  STDOUT.puts "Success!"
end