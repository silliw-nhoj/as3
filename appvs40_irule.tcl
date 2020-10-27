when HTTP_REQUEST {
  if { [HTTP::header exists "Referer"] } {
    # replace referer header
    HTTP::header replace Referer "https://[ ACCESS::session data get session.server.network.name ]"
  }
}
