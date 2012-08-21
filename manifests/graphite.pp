# = Definition: logster::graphite
#
# Description of logster::graphite
#
# == Parameters:
#
# $param::   description of parameter. default value if any.
#
# == Actions:
#
# Describe what this class does. What gets configured and how.
#
# == Requires:
#
# Requirements. This could be packages that should be made available.
#
# == Sample Usage:
#
# == Todo:
#
# TODO: Update documentation
#
define logster::graphite ($host = '',$type ='SampleLogster',$file,$prefix) {

  cron { "cron-$prefix":
    ensure  => present,
    command => "/usr/sbin/logster --output=graphite --graphite-host=$host:2003 $type $file -p $prefix  > /dev/null 2>&1",
    user    => 'root',
    minute  => '*',
  }

}
