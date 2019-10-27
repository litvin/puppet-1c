class client1c ( 
 String $package_name_wget  = $::client1c::params::package_name_wget,
 Array[String] $package_name_local = $::client1c::params::package_name_local,
 String $file_suffix               = $::client1c::params::file_suffix,
# String $package_ensure            = $::role::buh::package_ensure,
 String $package_ensure            = $::client1c::params::package_ensure,
 String $run_script_1c	 	   = $::client1c::params::run_script_1c,

) inherits ::client1c::params {

  class { '::client1c::downloads': }
  -> class { '::client1c::install': }

}
