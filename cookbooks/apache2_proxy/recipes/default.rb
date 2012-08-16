include_recipe "apache2"
apache_module "proxy" do
  conf true
end
include_recipe "apache2::mod_proxy_http"
include_recipe "apache2::mod_headers"
include_recipe "apache2::mod_deflate"