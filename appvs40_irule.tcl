when HTTP_REQUEST {
  if { [HTTP::header exists "Referer"] } {
    HTTP::header replace Referer "https://[ ACCESS::session data get session.server.network.name ]"
  }
}
