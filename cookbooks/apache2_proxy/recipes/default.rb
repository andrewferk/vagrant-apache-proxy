include_recipe "apache2"
apache_module "proxy" do
  conf true
end
web_app "web_app" do
  server_name "localhost"
  docroot "/vagrant"
  logroot "/vagrant/logs"
end
include_recipe "apache2::mod_proxy_http"
include_recipe "apache2::mod_headers"
include_recipe "apache2::mod_deflate"
