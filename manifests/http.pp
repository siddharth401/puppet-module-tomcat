class tomcat::http {

package { "httpd" :

 ensure     => absent,
 #before     => Service['httpd'],
 
 }
 
 #service { 'httpd' :
 
     #ensure     => stopped,
     
     
     
     
     }