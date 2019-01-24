class client_1c::params {
        $ftp_server_name   = 'ftp://astra.am.local/install'
	$package_ensure    = 'installed'

	case $::osfamily {
	    'Debian': {
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
		$package_name_wget  = '1c.deb.tar.gz' 
		$file_suffix	   = '_8.3.10-2580_amd64.deb'
		$run_script_1c     = 'install-AstraSE15x64-1c.sh'
	    }
	    'Redhat': {
		$package_name_local = [ 
'1C_Enterprise83-thin-client-8.3.10-2252.x86_64',
'1C_Enterprise83-common-8.3.10-2252.x86_64',
'1C_Enterprise83-server-nls-8.3.10-2252.x86_64',
'1C_Enterprise83-server-8.3.10-2252.x86_64',
'1C_Enterprise83-ws-nls-8.3.10-2252.x86_64',
'1C_Enterprise83-common-nls-8.3.10-2252.x86_64',
'1C_Enterprise83-client-8.3.10-2252.x86_64',
'1C_Enterprise83-thin-client-nls-8.3.10-2252.x86_64',
'1C_Enterprise83-client-nls-8.3.10-2252.x86_64',
'1C_Enterprise83-ws-8.3.10-2252.x86_64'
]
		$package_name_wget  = '1c.rpm.tar.gz' 
		$file_suffix	   = '.rpm'
		$run_script_1c     = 'install-rosa-1c.sh'
	    }
      }
}
