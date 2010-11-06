
ruby -ryaml -e "File.open('$1') { |f| puts YAML.load(f).inspect }" 

