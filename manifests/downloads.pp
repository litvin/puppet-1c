class client_1c::downloads(
	String	 $package_name_download = $::client_1c::package_name_wget,
	String   $ftp_server_name	= $::client_1c::ftp_server_name,
	String   $file_suffix	        = $::client_1c::file_suffix,
){
#        include wget
	
#        wget::fetch { "$package_name_download":
#                	source             => "$ftp_server_name/$package_name_download",
#                     	destination        => "/tmp/$package_name_download",
#                     	timeout            => 0,
#                      	verbose            => true,
#                      	nocheckcertificate => true,
#	        }	

	archive { "/tmp/$package_name_download":
			path          => "/tmp/1c/${package_name_download}",
			source        => "$ftp_server_name/$package_name_download",
			ensure   	   => present,
			extract            => true,
			extract_command	   => 'tar xfvz %s ',
			extract_path       => '/tmp/1c',
			cleanup            => true,
		}

}

