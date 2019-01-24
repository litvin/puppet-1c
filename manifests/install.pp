class client_1c::install(
	Array[String] $package_name_local  = $::client_1c::package_name_local,
	String $file_suffix		   = $::client_1c::file_suffix,
	String $package_ensure             = $::client_1c::package_ensure,
){
	
case $::osfamily {
    'Debian': {
	$package_name_local.each | $index_local, $value_local | {
	   exec { "install_$value_local" :
			command => "dpkg --force-all -i /tmp/1c/$value_local$file_suffix",
			path => "/usr/bin:/bin",
			unless => "dpkg -l | grep $value_local" ,
		}
	       }
	     }
    'Redhat': {
	$package_name_local.each | $index_local, $value_local | {
	   exec {"install_$value_local":
			command => "rpm -U /tmp/1c/$value_local$file_suffix --nodeps",
			path => "/usr/bin",
			onlyif => "rpm -q $value_local | grep 'не установлен'" ,
		}
	   }
     	}
    }	
}

