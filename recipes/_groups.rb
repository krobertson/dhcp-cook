#
# Setup Groups
#
node[:dhcp][:groups].each do |group_data|
  dhcp_group group do
    parameters  group_data["parameters"]  || []
    hosts       group_data["hosts"] || []
    conf_dir  node[:dhcp][:dir]
  end
end
