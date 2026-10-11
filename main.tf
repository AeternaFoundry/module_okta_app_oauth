resource "okta_app_oauth" "app_oauths" {
  for_each = var.app_oauths

  label                                = each.value.label
  type                                 = each.value.type
  accessibility_error_redirect_url     = each.value.accessibility_error_redirect_url
  accessibility_login_redirect_url     = each.value.accessibility_login_redirect_url
  accessibility_self_service           = each.value.accessibility_self_service
  admin_note                           = each.value.admin_note
  app_links_json                       = each.value.app_links_json
  app_settings_json                    = each.value.app_settings_json
  authentication_policy                = each.value.authentication_policy
  auto_key_rotation                    = each.value.auto_key_rotation
  auto_submit_toolbar                  = each.value.auto_submit_toolbar
  backchannel_custom_authenticator_id  = each.value.backchannel_custom_authenticator_id
  client_basic_secret                  = each.value.client_basic_secret
  client_basic_secret_wo               = each.value.client_basic_secret_wo
  client_basic_secret_wo_version       = each.value.client_basic_secret_wo_version
  client_id                            = each.value.client_id
  client_uri                           = each.value.client_uri
  consent_method                       = each.value.consent_method
  enduser_note                         = each.value.enduser_note
  frontchannel_logout_session_required = each.value.frontchannel_logout_session_required
  frontchannel_logout_uri              = each.value.frontchannel_logout_uri
  grant_types                          = each.value.grant_types
  hide_ios                             = each.value.hide_ios
  hide_web                             = each.value.hide_web
  implicit_assignment                  = each.value.implicit_assignment
  issuer_mode                          = each.value.issuer_mode
  jwks_uri                             = each.value.jwks_uri
  login_mode                           = each.value.login_mode
  login_scopes                         = each.value.login_scopes
  login_uri                            = each.value.login_uri
  logo                                 = each.value.logo
  logo_uri                             = each.value.logo_uri
  omit_secret                          = each.value.omit_secret
  participate_slo                      = each.value.participate_slo
  pkce_required                        = each.value.pkce_required
  policy_uri                           = each.value.policy_uri
  post_logout_redirect_uris            = each.value.post_logout_redirect_uris
  preconfigured_app                    = each.value.preconfigured_app
  profile                              = each.value.profile
  redirect_uris                        = each.value.redirect_uris
  refresh_token_leeway                 = each.value.refresh_token_leeway
  refresh_token_rotation               = each.value.refresh_token_rotation
  response_types                       = each.value.response_types
  skip_authentication_policy           = each.value.skip_authentication_policy
  status                               = each.value.status
  token_endpoint_auth_method           = each.value.token_endpoint_auth_method
  tos_uri                              = each.value.tos_uri
  user_name_template                   = each.value.user_name_template
  user_name_template_push_status       = each.value.user_name_template_push_status
  user_name_template_suffix            = each.value.user_name_template_suffix
  user_name_template_type              = each.value.user_name_template_type
  wildcard_redirect                    = each.value.wildcard_redirect

  dynamic "groups_claim" {
    for_each = each.value.groups_claim != null ? [each.value.groups_claim] : []
    content {
      filter_type = groups_claim.value.filter_type
      name        = groups_claim.value.name
      type        = groups_claim.value.type
      value       = groups_claim.value.value
    }
  }

  dynamic "jwks" {
    for_each = each.value.jwks != null ? each.value.jwks : []
    content {
      e   = jwks.value.e
      kid = jwks.value.kid
      kty = jwks.value.kty
      n   = jwks.value.n
      x   = jwks.value.x
      y   = jwks.value.y
    }
  }

  dynamic "network" {
    for_each = each.value.network != null ? [each.value.network] : []
    content {
      connection = network.value.connection
      exclude    = network.value.exclude
      include    = network.value.include
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

