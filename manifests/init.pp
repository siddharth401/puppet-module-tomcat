# Class: tomcat
# ===========================
#
# Full description of class tomcat here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'tomcat':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2019 Your name here, unless otherwise noted.
#
class tomcat(

$user               =  $tomcat::params::user,
$group              =  $tomcat::params::group,
$config_path        =  $tomcat::params::config_path,
$packages           =  $tomcat::params::packages,
$service_name       =  $tomcat::params::service_name,
$service_state      =  $tomcat::params::service_state,
$catalina_pid       =  $tomcat::params::catalina_pid,
$xms                =  $tomcat::params::xms,
$xmx                =  $tomcat::params::xmx,
$maxpermsize        =  $tomcat::params:maxpermsize,
$shutdown_verbose   =  $tomcat::params::shutdown_verbose,
$shutdown_wait      =  $tomcat::params::shutdown_wait,
$security_manager   =  $tomcat::params::security_manager,
$lang               =  $tomcat::params::lang,
$tomcat_user        =  $tomcat::params::tomcat_user,
$java_opts          =  $tomcat::params::java_opts,
$catalina_tmpdir    =  $tomcat::params::catalina_tmpdir,
$jasper_home        =  $tomcat::params::jasper_home,
$catalina_home      =  $tomcat::params::catalina_home,
$java_home          =  $tomcat::params::java_home,
$tomcat_cfg_loaded  =  $tomcat::params::tomcat_cfg_loaded,






) inherits tomcat::params {

        include java::install
        include tomcat::install
        include tomcat::config
        include tomcat::service
}
