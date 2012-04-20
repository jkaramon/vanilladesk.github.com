require 'fileutils'

task :default => :build

def info(msg)
	puts msg
end

def commit_msg
	Time.now.to_s
end

task :build do
	info "Compiling site ..."
	system("jekyll")	
	FileUtils.cp_r '_site/.', '_compiled', :verbose => true, :remove_destination => true
	FileUtils.touch '_compiled/.nojekyll'
	FileUtils.rm '_compiled/Rakefile'
	File.open(File.join(File.dirname(__FILE__), '_compiled/README.md'), 'w') do |f| 
		f.write <<-eos
			Please switch to the 'source' branch to edit these files and for more info!\n 
			Here are only compiled files, do not edit them directly!
		eos
	end
end



task :commit => :build do
	info "Commiting changes into source branch ..."

	system "git status"
	system "git checkout source"
	system "git commit -am \"#{commit_msg}\""
	system "git push origin source"	
	puts "Done."
end



task :publish => :commit do
	
	puts %x[cd _compiled; git add .; git commit -am "#{commit_msg}"; ]
	puts %x[cd _compiled; git push origin master]
end


