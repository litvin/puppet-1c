# Class: client_1c
# ===========================
#
# Full description of class client_1c here.
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
#    class { 'client_1c':
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
class client_1c ( 
 String $package_name_wget  = $::client_1c::params::package_name_wget,
 Array[String] $package_name_local = $::client_1c::params::package_name_local,
 String $file_suffix               = $::client_1c::params::file_suffix,
# String $package_ensure            = $::role::buh::package_ensure,
 String $package_ensure            = $::client_1c::params::package_ensure,
 String $run_script_1c	 	   = $::client_1c::params::run_script_1c,

) inherits ::client_1c::params {

  class { '::client_1c::downloads': }
  -> class { '::client_1c::install': }

}
