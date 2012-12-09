# == Class: ufw::resources
#
# Instantiate ufw resources from parameters.
#
# Written to be used with Hiera.
#
# === Parameters
#
# Document parameters here.
#
# [*allow*]
#   Hash of rules to be permitted, of the form: {<name>: {from: <from>,
#   ip: <ip>, proto: <proto>, port: <port>}}
#
# [*deny*]
#   Hash of rules to be denied, of the form: {<name>: {from: <from>,
#   ip: <ip>, proto: <proto>, port: <port>}}
#
# [*limit*]
#   Hash of rules to be limited, of the form: {<name>: {proto: <proto>}}
#
# === Examples
#
#
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2012 Andrew Leonard
#
class ufw::resources(
  $allow = {},
  $deny = {},
  $limit = {}
  ){

  create_resources(ufw::allow, $allow)

  create_resources(ufw::deny, $deny)

  create_resources(ufw::limit, $limit)
}