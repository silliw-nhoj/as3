when HTTP_REQUEST {
  if { [HTTP::header exists "Referer"] } {
    # appvs40 referer replace
    HTTP::header replace Referer "https://[ ACCESS::session data get session.server.network.name ]"
  }
}
