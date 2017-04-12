

remote_file '/home/vagrant/oshard.sh' do
  source 'https://s3.amazonaws.com/chef-eval/oshard.sh'
  owner 'root'
  mode '0755'
  action :create
end

execute 'sh' do
  cwd '/home/vagrant/' 
  command 'sh oshard.sh'
end
