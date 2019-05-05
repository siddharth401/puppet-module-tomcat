class tomcat::params {

$user           =  'tomcat'
$group          =  'root'
$config_path    =  '/etc/tomcat/tomcat.conf'
$packages       =  [ 'tomcat', 'tomcat-webapps' ]
$service_name   =   'tomcat'
$service_state  =  'running'
$catalina_pid   =   '/var/run/tomcat.pid'
$shutdown_verbose = "false"
$shutdown_wait  =   '30'
$security_manager  = "false"
$lang           =   "en_US"
$tomcat_user    =   "tomcat"
$java_opts      = "-Djava.library.path=/usr/lib64"
$catalina_tmpdir = "/var/cache/tomcat/temp"
$jasper_home     =  "/usr/share/tomcat"
$catalina_home   =  "/usr/share/tomcat"
$catalina_base   =  "/usr/share/tomcat"
$java_home       =   "/usr/lib/jvm/jre"
$tomcat_cfg_loaded  = "1"

}