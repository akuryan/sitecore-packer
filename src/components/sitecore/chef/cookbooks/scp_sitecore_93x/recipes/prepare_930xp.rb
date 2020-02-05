scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  action :enable_contained_db_auth
end

scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  action :enable_mixed_auth
end

scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  action :enable_sa_login
end

scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  action :enable_firewall
end

scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  action :install_and_update_sif
end

scp_sitecore_93x_prepare '' do
  options Chef::Mixin::DeepMerge.deep_merge(node['scp_sitecore_93x']['common'], node['scp_sitecore_93x']['930xp'])
  secrets node['scp_sitecore_common']['secrets']
  action :install_sitecore_prerequisites
end
