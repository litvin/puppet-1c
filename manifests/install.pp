class client_1c::install(
	Array[String] $package_name        = $::client_1c::package_name,
	Array[String] $package_name_local  = $::client_1c::package_name_local,
	String $package_ensure             = $::client_1c::package_ensure,
){
	$package_name.each | $index, $value | {
         package { "$value":
    	                ensure   => $package_ensure
	  	 }
	}
	
	$package_name_local.each | $index_local, $value_local | {
         package { "$value_local":
	           ensure   => installed,
                   provider => dpkg,
                   source   => "/tmp/$value_local.deb",
                 }
	}
}

