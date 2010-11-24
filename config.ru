require 'bundler/setup'

$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

# We normally want to set the following in an Apache config file;
# these are example fallbacks, useful if you want to use rackup or
# such to kick this off.

ENV['LOG_FACILITY']         ||= nil                   # Logger sets up syslog using the facility code if set, stderr otherwise.
ENV['DATABASE_CONFIG_FILE'] ||= '/opt/fda/etc/db.yml' # YAML file that only our group can read, has database information in it.
ENV['DATABASE_CONFIG_KEY']  ||= 'silos'               # Key into a hash provided by the above file.
ENV['TIVOLI_SERVER']        ||= 'ADSM_TEST'           # The TSM server we query against for tape backups of the silo directories.
ENV['SILO_TEMP']            ||= '/tmp'                # Filesystems restored from tape land in mini-silos here.
ENV['SILO_ROOT']            ||= '/daitssfs'           # Where the silos for this host live: any pr0perly named subdirectory here
			    			      # is potentially a silo.
require 'sinatra'
require 'app'

run Sinatra::Application
