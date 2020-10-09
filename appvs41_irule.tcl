when HTTP_REQUEST {
  HTTP::header insert X-user-full-name "[ ACCESS::session data get session.oauth.client.last.id_token.name ]"
  HTTP::header insert X-user-email "[ ACCESS::session data get session.oauth.client.last.id_token.upn ]"
  HTTP::header insert X-token-type "[ ACCESS::session data get session.oauth.client.last.token_type ]"
  HTTP::header insert X-token-id-type "[ ACCESS::session data get session.oauth.client.last.id_token.typ ]"
}
