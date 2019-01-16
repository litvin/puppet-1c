class client_1c::params {
	$package_name_wget  = '1c.tar.gz' 
	$package_name_local = [ 
 '1c-enterprise83-client',
 '1c-enterprise83-client-nls',
 '1c-enterprise83-common',
 '1c-enterprise83-common-nls',
 '1c-enterprise83-server',
 '1c-enterprise83-server-nls',
 '1c-enterprise83-ws',
 '1c-enterprise83-ws-nls'
]
	$file_suffix	   = '_8.3.10-2580_amd64.deb'
	$package_ensure    = 'present'
        $ftp_server_name   = 'ftp://astra.am.local/1C'
	$run_script_1c     = 'install-AstraSE15x64-1c.sh'

}
