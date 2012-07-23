require 'fileutils'

task :default => :build

def info(msg)
	puts msg
end


def windows?
	ENV['OS'] == 'Windows_NT'
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


task :build => :chcp do
	info "Compiling site ..."
	`jekyll`	
end


desc "Compile Less files into css"
task :less do
	`lessc css/page.less css/page.css`	
end


desc "commit changes but do not publish"
task :commit => :build do
	info "Commiting changes into source branch ..."
	`git status`
	`git checkout source`
	`git add . && git commit -m "#{commit_msg}"`
	`git pull origin source`
	`git push origin source`	
	puts "Done."
end



task :copy => :clone do
	FileUtils.cp_r File.join("_site", "."), '_compiled', :verbose => true
	FileUtils.touch File.join("_compiled", ".nojekyll")
	FileUtils.rm File.join("_compiled", "Rakefile")
	File.open(File.join(File.dirname(__FILE__), '_compiled', 'README.md'), 'w') do |f| 
		f.write <<-eos
			Please switch to the 'source' branch to edit these files and for more info!\n 
			Here are only compiled files, do not edit them directly!
		eos
	end
end

task :clone do
	FileUtils.rm_rf '_compiled'
	`git clone git@github.com:vanilladesk/vanilladesk.github.com.git -b master _compiled`
	delete "_compiled"
end

desc "Commit and publish a new version to the www.vanilladesk.com"
task :publish => [:commit, :copy] do
	FileUtils.cd('_compiled', :verbose => true) do
		puts `git add . && git commit -am "#{commit_msg}"`
		puts `git push origin master`
	end
end

task :chcp do
	if windows?
		puts '* Changing the codepage'
		`chcp 65001`
	end
end

task :run => :chcp do
    puts '* Running Jekyll'
    sh "jekyll --server --auto"
end


