require 'fileutils'

task :default => :build

def info(msg)
	puts msg
end

def commit_msg
	Time.now.to_s
end

def delete(dir)
  Dir[File.join(File.dirname(__FILE__), dir, "/*")].each do |file|
    next if File.basename(file) == ".git"
    FileUtils.rm_rf file, :noop => false, :verbose => true
  end
end


task :build do
	info "Compiling site ..."
	system("jekyll")	
end



task :commit => :build do
	info "Commiting changes into source branch ..."

	system "git status"
	system "git checkout source"
	system "git commit add ."
	system "git commit -am \"#{commit_msg}\""
	system "git push origin source"	
	puts "Done."
end


task :copy do
	FileUtils.cp_r '_site/.', '_compiled', :verbose => true
	FileUtils.touch '_compiled/.nojekyll'
	FileUtils.rm '_compiled/Rakefile'
	File.open(File.join(File.dirname(__FILE__), '_compiled/README.md'), 'w') do |f| 
		f.write <<-eos
			Please switch to the 'source' branch to edit these files and for more info!\n 
			Here are only compiled files, do not edit them directly!
		eos
	end
end

task :clone do
	FileUtils.rm_rf '_compiled'
	system "git clone git@github.com:vanilladesk/vanilladesk.github.com.git -b master _compiled"
	delete "_compiled"
end

task :publish => [:commit, :clone, :copy] do
	FileUtils.cd('_compiled', :verbose => true) do
		puts %x[git add . && git commit -am "#{commit_msg}"; ]
		puts %x[git push origin master]
	end
end


