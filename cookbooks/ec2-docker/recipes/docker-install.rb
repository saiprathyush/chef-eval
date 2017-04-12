execute 'yum' do
  cwd '/home/vagrant/'
  command 'yum update -y'
end
execute 'yum' do
  cwd '/home/vagrant/'
  command 'yum install -y yum-utils'
end
execute 'yum' do
  cwd '/home/vagrant/'
  command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
end
execute 'yum' do
  cwd '/home/vagrant/'
  command 'yum makecache fast'
end
execute 'yum' do
  cwd '/home/vagrant/'
  command 'yum install -y docker-ce'
end
execute 'mkdir' do
  cwd '/etc/systemd/system/'
  command 'mkdir -p docker.service.d'
end
execute 'touch' do
  cwd '/etc/systemd/system/docker.service.d/'
  command 'touch docker.conf'
end
