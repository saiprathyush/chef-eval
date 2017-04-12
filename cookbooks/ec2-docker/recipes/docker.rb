execute 'docker_service' do
  cwd '/home/vagrant/'
  command 'systemctl start docker'
end

execute 'jenkins' do
  cwd 'home/vagrant/'
  command 'docker pull jenkins'
end

execute 'run' do
  cwd 'home/vagrant/'
  command 'docker run -d -it --rm jenkins'
end
