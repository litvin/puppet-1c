class client_1c::install(
	Array[String] $package_name_local  = $::client_1c::package_name_local,
	String $file_suffix		   = $::client_1c::file_suffix,
	String $package_ensure             = $::client_1c::package_ensure,
){
	
	$package_name_local.each | $index_local, $value_local | {
         package { "$value_local":
	           ensure   => $package_ensure,
                   provider => dpkg,
                   source   => "/tmp/$value_local$file_suffix",
                 }
	}
   
	exec { 'apt-get install -f':
		    command     => '/usr/bin/apt-get install -f -y',
		    unless 	=> '/usr/bin/dpkg -l | grep libwebkitgtk-1.0-0 2>/dev/null',
	}
	
}

