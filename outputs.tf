output "app_oauths_id" {
  description = "Map of id values across all app_oauths, keyed the same as var.app_oauths except keys with no id are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_oauths_accessibility_error_redirect_url" {
  description = "Map of accessibility_error_redirect_url values across all app_oauths, keyed the same as var.app_oauths except keys with no accessibility_error_redirect_url are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_error_redirect_url if v.accessibility_error_redirect_url != null && length(v.accessibility_error_redirect_url) > 0 }
}
output "app_oauths_accessibility_login_redirect_url" {
  description = "Map of accessibility_login_redirect_url values across all app_oauths, keyed the same as var.app_oauths except keys with no accessibility_login_redirect_url are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_login_redirect_url if v.accessibility_login_redirect_url != null && length(v.accessibility_login_redirect_url) > 0 }
}
output "app_oauths_accessibility_self_service" {
  description = "Map of accessibility_self_service values across all app_oauths, keyed the same as var.app_oauths except keys with no accessibility_self_service are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_self_service if v.accessibility_self_service != null }
}
output "app_oauths_admin_note" {
  description = "Map of admin_note values across all app_oauths, keyed the same as var.app_oauths except keys with no admin_note are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.admin_note if v.admin_note != null && length(v.admin_note) > 0 }
}
output "app_oauths_app_links_json" {
  description = "Map of app_links_json values across all app_oauths, keyed the same as var.app_oauths except keys with no app_links_json are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.app_links_json if v.app_links_json != null && length(v.app_links_json) > 0 }
}
output "app_oauths_app_settings_json" {
  description = "Map of app_settings_json values across all app_oauths, keyed the same as var.app_oauths except keys with no app_settings_json are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.app_settings_json if v.app_settings_json != null && length(v.app_settings_json) > 0 }
}
output "app_oauths_authentication_policy" {
  description = "Map of authentication_policy values across all app_oauths, keyed the same as var.app_oauths except keys with no authentication_policy are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.authentication_policy if v.authentication_policy != null && length(v.authentication_policy) > 0 }
}
output "app_oauths_auto_key_rotation" {
  description = "Map of auto_key_rotation values across all app_oauths, keyed the same as var.app_oauths except keys with no auto_key_rotation are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.auto_key_rotation if v.auto_key_rotation != null }
}
output "app_oauths_auto_submit_toolbar" {
  description = "Map of auto_submit_toolbar values across all app_oauths, keyed the same as var.app_oauths except keys with no auto_submit_toolbar are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.auto_submit_toolbar if v.auto_submit_toolbar != null }
}
output "app_oauths_backchannel_custom_authenticator_id" {
  description = "Map of backchannel_custom_authenticator_id values across all app_oauths, keyed the same as var.app_oauths except keys with no backchannel_custom_authenticator_id are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.backchannel_custom_authenticator_id if v.backchannel_custom_authenticator_id != null && length(v.backchannel_custom_authenticator_id) > 0 }
}
output "app_oauths_client_basic_secret" {
  description = "Map of client_basic_secret values across all app_oauths, keyed the same as var.app_oauths except keys with no client_basic_secret are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_basic_secret if v.client_basic_secret != null && length(v.client_basic_secret) > 0 }
  sensitive   = true
}
output "app_oauths_client_basic_secret_wo_version" {
  description = "Map of client_basic_secret_wo_version values across all app_oauths, keyed the same as var.app_oauths except keys with no client_basic_secret_wo_version are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_basic_secret_wo_version if v.client_basic_secret_wo_version != null }
}
output "app_oauths_client_id" {
  description = "Map of client_id values across all app_oauths, keyed the same as var.app_oauths except keys with no client_id are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "app_oauths_client_secret" {
  description = "Map of client_secret values across all app_oauths, keyed the same as var.app_oauths except keys with no client_secret are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "app_oauths_client_uri" {
  description = "Map of client_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no client_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_uri if v.client_uri != null && length(v.client_uri) > 0 }
}
output "app_oauths_consent_method" {
  description = "Map of consent_method values across all app_oauths, keyed the same as var.app_oauths except keys with no consent_method are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.consent_method if v.consent_method != null && length(v.consent_method) > 0 }
}
output "app_oauths_enduser_note" {
  description = "Map of enduser_note values across all app_oauths, keyed the same as var.app_oauths except keys with no enduser_note are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.enduser_note if v.enduser_note != null && length(v.enduser_note) > 0 }
}
output "app_oauths_frontchannel_logout_session_required" {
  description = "Map of frontchannel_logout_session_required values across all app_oauths, keyed the same as var.app_oauths except keys with no frontchannel_logout_session_required are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.frontchannel_logout_session_required if v.frontchannel_logout_session_required != null }
}
output "app_oauths_frontchannel_logout_uri" {
  description = "Map of frontchannel_logout_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no frontchannel_logout_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.frontchannel_logout_uri if v.frontchannel_logout_uri != null && length(v.frontchannel_logout_uri) > 0 }
}
output "app_oauths_grant_types" {
  description = "Map of grant_types values across all app_oauths, keyed the same as var.app_oauths except keys with no grant_types are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.grant_types if v.grant_types != null && length(v.grant_types) > 0 }
}
output "app_oauths_groups_claim" {
  description = "Map of groups_claim values across all app_oauths, keyed the same as var.app_oauths except keys with no groups_claim are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => one(v.groups_claim) if v.groups_claim != null && length(v.groups_claim) > 0 }
}
output "app_oauths_hide_ios" {
  description = "Map of hide_ios values across all app_oauths, keyed the same as var.app_oauths except keys with no hide_ios are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.hide_ios if v.hide_ios != null }
}
output "app_oauths_hide_web" {
  description = "Map of hide_web values across all app_oauths, keyed the same as var.app_oauths except keys with no hide_web are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.hide_web if v.hide_web != null }
}
output "app_oauths_implicit_assignment" {
  description = "Map of implicit_assignment values across all app_oauths, keyed the same as var.app_oauths except keys with no implicit_assignment are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.implicit_assignment if v.implicit_assignment != null }
}
output "app_oauths_issuer_mode" {
  description = "Map of issuer_mode values across all app_oauths, keyed the same as var.app_oauths except keys with no issuer_mode are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.issuer_mode if v.issuer_mode != null && length(v.issuer_mode) > 0 }
}
output "app_oauths_jwks" {
  description = "Map of jwks values across all app_oauths, keyed the same as var.app_oauths except keys with no jwks are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.jwks if v.jwks != null && length(v.jwks) > 0 }
}
output "app_oauths_jwks_uri" {
  description = "Map of jwks_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no jwks_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.jwks_uri if v.jwks_uri != null && length(v.jwks_uri) > 0 }
}
output "app_oauths_label" {
  description = "Map of label values across all app_oauths, keyed the same as var.app_oauths except keys with no label are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.label if v.label != null && length(v.label) > 0 }
}
output "app_oauths_login_mode" {
  description = "Map of login_mode values across all app_oauths, keyed the same as var.app_oauths except keys with no login_mode are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_mode if v.login_mode != null && length(v.login_mode) > 0 }
}
output "app_oauths_login_scopes" {
  description = "Map of login_scopes values across all app_oauths, keyed the same as var.app_oauths except keys with no login_scopes are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_scopes if v.login_scopes != null && length(v.login_scopes) > 0 }
}
output "app_oauths_login_uri" {
  description = "Map of login_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no login_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_uri if v.login_uri != null && length(v.login_uri) > 0 }
}
output "app_oauths_logo" {
  description = "Map of logo values across all app_oauths, keyed the same as var.app_oauths except keys with no logo are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo if v.logo != null && length(v.logo) > 0 }
}
output "app_oauths_logo_uri" {
  description = "Map of logo_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no logo_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo_uri if v.logo_uri != null && length(v.logo_uri) > 0 }
}
output "app_oauths_logo_url" {
  description = "Map of logo_url values across all app_oauths, keyed the same as var.app_oauths except keys with no logo_url are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo_url if v.logo_url != null && length(v.logo_url) > 0 }
}
output "app_oauths_name" {
  description = "Map of name values across all app_oauths, keyed the same as var.app_oauths except keys with no name are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_oauths_network" {
  description = "Map of network values across all app_oauths, keyed the same as var.app_oauths except keys with no network are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => one(v.network) if v.network != null && length(v.network) > 0 }
}
output "app_oauths_omit_secret" {
  description = "Map of omit_secret values across all app_oauths, keyed the same as var.app_oauths except keys with no omit_secret are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.omit_secret if v.omit_secret != null }
}
output "app_oauths_participate_slo" {
  description = "Map of participate_slo values across all app_oauths, keyed the same as var.app_oauths except keys with no participate_slo are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.participate_slo if v.participate_slo != null }
}
output "app_oauths_pkce_required" {
  description = "Map of pkce_required values across all app_oauths, keyed the same as var.app_oauths except keys with no pkce_required are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.pkce_required if v.pkce_required != null }
}
output "app_oauths_policy_uri" {
  description = "Map of policy_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no policy_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.policy_uri if v.policy_uri != null && length(v.policy_uri) > 0 }
}
output "app_oauths_post_logout_redirect_uris" {
  description = "Map of post_logout_redirect_uris values across all app_oauths, keyed the same as var.app_oauths except keys with no post_logout_redirect_uris are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.post_logout_redirect_uris if v.post_logout_redirect_uris != null && length(v.post_logout_redirect_uris) > 0 }
}
output "app_oauths_preconfigured_app" {
  description = "Map of preconfigured_app values across all app_oauths, keyed the same as var.app_oauths except keys with no preconfigured_app are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.preconfigured_app if v.preconfigured_app != null && length(v.preconfigured_app) > 0 }
}
output "app_oauths_profile" {
  description = "Map of profile values across all app_oauths, keyed the same as var.app_oauths except keys with no profile are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.profile if v.profile != null && length(v.profile) > 0 }
}
output "app_oauths_redirect_uris" {
  description = "Map of redirect_uris values across all app_oauths, keyed the same as var.app_oauths except keys with no redirect_uris are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.redirect_uris if v.redirect_uris != null && length(v.redirect_uris) > 0 }
}
output "app_oauths_refresh_token_leeway" {
  description = "Map of refresh_token_leeway values across all app_oauths, keyed the same as var.app_oauths except keys with no refresh_token_leeway are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.refresh_token_leeway if v.refresh_token_leeway != null }
}
output "app_oauths_refresh_token_rotation" {
  description = "Map of refresh_token_rotation values across all app_oauths, keyed the same as var.app_oauths except keys with no refresh_token_rotation are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.refresh_token_rotation if v.refresh_token_rotation != null && length(v.refresh_token_rotation) > 0 }
}
output "app_oauths_response_types" {
  description = "Map of response_types values across all app_oauths, keyed the same as var.app_oauths except keys with no response_types are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.response_types if v.response_types != null && length(v.response_types) > 0 }
}
output "app_oauths_sign_on_mode" {
  description = "Map of sign_on_mode values across all app_oauths, keyed the same as var.app_oauths except keys with no sign_on_mode are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.sign_on_mode if v.sign_on_mode != null && length(v.sign_on_mode) > 0 }
}
output "app_oauths_skip_authentication_policy" {
  description = "Map of skip_authentication_policy values across all app_oauths, keyed the same as var.app_oauths except keys with no skip_authentication_policy are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.skip_authentication_policy if v.skip_authentication_policy != null }
}
output "app_oauths_status" {
  description = "Map of status values across all app_oauths, keyed the same as var.app_oauths except keys with no status are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.status if v.status != null && length(v.status) > 0 }
}
output "app_oauths_token_endpoint_auth_method" {
  description = "Map of token_endpoint_auth_method values across all app_oauths, keyed the same as var.app_oauths except keys with no token_endpoint_auth_method are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.token_endpoint_auth_method if v.token_endpoint_auth_method != null && length(v.token_endpoint_auth_method) > 0 }
}
output "app_oauths_tos_uri" {
  description = "Map of tos_uri values across all app_oauths, keyed the same as var.app_oauths except keys with no tos_uri are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.tos_uri if v.tos_uri != null && length(v.tos_uri) > 0 }
}
output "app_oauths_type" {
  description = "Map of type values across all app_oauths, keyed the same as var.app_oauths except keys with no type are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.type if v.type != null && length(v.type) > 0 }
}
output "app_oauths_user_name_template" {
  description = "Map of user_name_template values across all app_oauths, keyed the same as var.app_oauths except keys with no user_name_template are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template if v.user_name_template != null && length(v.user_name_template) > 0 }
}
output "app_oauths_user_name_template_push_status" {
  description = "Map of user_name_template_push_status values across all app_oauths, keyed the same as var.app_oauths except keys with no user_name_template_push_status are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_push_status if v.user_name_template_push_status != null && length(v.user_name_template_push_status) > 0 }
}
output "app_oauths_user_name_template_suffix" {
  description = "Map of user_name_template_suffix values across all app_oauths, keyed the same as var.app_oauths except keys with no user_name_template_suffix are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_suffix if v.user_name_template_suffix != null && length(v.user_name_template_suffix) > 0 }
}
output "app_oauths_user_name_template_type" {
  description = "Map of user_name_template_type values across all app_oauths, keyed the same as var.app_oauths except keys with no user_name_template_type are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_type if v.user_name_template_type != null && length(v.user_name_template_type) > 0 }
}
output "app_oauths_wildcard_redirect" {
  description = "Map of wildcard_redirect values across all app_oauths, keyed the same as var.app_oauths except keys with no wildcard_redirect are omitted"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.wildcard_redirect if v.wildcard_redirect != null && length(v.wildcard_redirect) > 0 }
}

