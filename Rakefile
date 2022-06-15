task :update_all_modules_version do
    version_string = ENV['POD_VERSION']
    task(:update_version_in_podspec).invoke('ReleaseTestGJ.podspec', version_string)
    task(:update_version_in_podspec).reenable
  end
  
  task :update_version_in_podspec, [:podspec_file, :version] do |t, args|
    puts "Updating podspec #{args[:podspec_file]}"
    contents = File.read(args[:podspec_file])
    contents.gsub!(/s\.version\s*=\s(:?'|")\d+\.\d+\.\d+(-\w+\.\d)?(:?'|")/, "s.version          = \"#{args[:version]}\"")
    File.open(args[:podspec_file], 'w') { |file| file.puts contents }
  end