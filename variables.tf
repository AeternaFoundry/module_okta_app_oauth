variable "app_oauths" {
  description = <<EOT
Map of app_oauths, attributes below
Required:
    - label
    - type
Optional:
    - accessibility_error_redirect_url
    - accessibility_login_redirect_url
    - accessibility_self_service
    - admin_note
    - app_links_json
    - app_settings_json
    - authentication_policy
    - auto_key_rotation
    - auto_submit_toolbar
    - backchannel_custom_authenticator_id
    - client_basic_secret
    - client_basic_secret_wo
    - client_basic_secret_wo_version
    - client_id
    - client_uri
    - consent_method
    - enduser_note
    - frontchannel_logout_session_required
    - frontchannel_logout_uri
    - grant_types
    - hide_ios
    - hide_web
    - implicit_assignment
    - issuer_mode
    - jwks_uri
    - login_mode
    - login_scopes
    - login_uri
    - logo
    - logo_uri
    - omit_secret
    - participate_slo
    - pkce_required
    - policy_uri
    - post_logout_redirect_uris
    - preconfigured_app
    - profile
    - redirect_uris
    - refresh_token_leeway
    - refresh_token_rotation
    - response_types
    - skip_authentication_policy
    - status
    - token_endpoint_auth_method
    - tos_uri
    - user_name_template
    - user_name_template_push_status
    - user_name_template_suffix
    - user_name_template_type
    - wildcard_redirect
    - groups_claim (block):
        - filter_type (optional)
        - name (required)
        - type (required)
        - value (required)
    - jwks (block):
        - e (optional)
        - kid (required)
        - kty (required)
        - n (optional)
        - x (optional)
        - y (optional)
    - network (block):
        - connection (required)
        - exclude (optional)
        - include (optional)
    - timeouts (block):
        - create (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    label                                = string
    type                                 = string
    accessibility_error_redirect_url     = optional(string)
    accessibility_login_redirect_url     = optional(string)
    accessibility_self_service           = optional(bool)
    admin_note                           = optional(string)
    app_links_json                       = optional(string)
    app_settings_json                    = optional(string)
    authentication_policy                = optional(string)
    auto_key_rotation                    = optional(bool)
    auto_submit_toolbar                  = optional(bool)
    backchannel_custom_authenticator_id  = optional(string)
    client_basic_secret                  = optional(string)
    client_basic_secret_wo               = optional(string)
    client_basic_secret_wo_version       = optional(number)
    client_id                            = optional(string)
    client_uri                           = optional(string)
    consent_method                       = optional(string)
    enduser_note                         = optional(string)
    frontchannel_logout_session_required = optional(bool)
    frontchannel_logout_uri              = optional(string)
    grant_types                          = optional(set(string))
    hide_ios                             = optional(bool)
    hide_web                             = optional(bool)
    implicit_assignment                  = optional(bool)
    issuer_mode                          = optional(string)
    jwks_uri                             = optional(string)
    login_mode                           = optional(string)
    login_scopes                         = optional(set(string))
    login_uri                            = optional(string)
    logo                                 = optional(string)
    logo_uri                             = optional(string)
    omit_secret                          = optional(bool)
    participate_slo                      = optional(bool)
    pkce_required                        = optional(bool)
    policy_uri                           = optional(string)
    post_logout_redirect_uris            = optional(set(string))
    preconfigured_app                    = optional(string)
    profile                              = optional(string)
    redirect_uris                        = optional(list(string))
    refresh_token_leeway                 = optional(number)
    refresh_token_rotation               = optional(string)
    response_types                       = optional(set(string))
    skip_authentication_policy           = optional(bool)
    status                               = optional(string)
    token_endpoint_auth_method           = optional(string)
    tos_uri                              = optional(string)
    user_name_template                   = optional(string)
    user_name_template_push_status       = optional(string)
    user_name_template_suffix            = optional(string)
    user_name_template_type              = optional(string)
    wildcard_redirect                    = optional(string)
    groups_claim = optional(object({
      filter_type = optional(string)
      name        = string
      type        = string
      value       = string
    }))
    jwks = optional(list(object({
      e   = optional(string)
      kid = string
      kty = string
      n   = optional(string)
      x   = optional(string)
      y   = optional(string)
    })))
    network = optional(object({
      connection = string
      exclude    = optional(set(string))
      include    = optional(set(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_oauths : (
        v.response_types == null || (alltrue([for x in v.response_types : contains(["code", "token", "id_token"], x)]))
      )
    ])
    error_message = "must be one of: \"code\", \"token\", \"id_token\""
  }
  validation {
    condition = alltrue([
      for k, v in var.app_oauths : (
        v.network == null || (contains(["ANYWHERE", "ZONE"], v.network.connection))
      )
    ])
    error_message = "must be one of: \"ANYWHERE\", \"ZONE\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

