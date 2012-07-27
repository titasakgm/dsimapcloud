#!/usr/bin/ruby

require 'cgi'

c = CGI::new
gid = c['gid']

map = open("/ms567/map/hili.tpl").readlines.to_s.gsub('XX',gid)
File.open("/ms567/map/hili.map","w").write(map)

