class client_1c::downloads(
	Array[String] $package_name_downloads  = $::client_1c::package_name_wget,
	String 	      $ftp_server_name	       = $::client_1c::ftp_server_name,
){
        include wget
	
        $package_name_downloads.each | $index_download, $value_download | {
        wget::fetch { "$value_download":
                      source             => "$ftp_server_name/$value_download*.deb",
                      destination        => "/tmp/$value_download.deb",
                      timeout            => 0,
                      verbose            => true,
                      nocheckcertificate => true,
	            }	
         }
}

