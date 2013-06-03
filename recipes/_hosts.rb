#
# Hosts
#
node[:dhcp][:hosts].each do |host_data|
  dhcp_host host_data["name"] do
    hostname   host_data["hostname"]
    macaddress host_data["mac"]
    ipaddress  host_data["ip"]
    parameters host_data["parameters"] || []
    options    host_data["options"] || []
    conf_dir  node[:dhcp][:dir]
  end
end
