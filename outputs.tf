output "app_oauths_id" {
  description = "Map of id values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.id }
}
output "app_oauths_accessibility_error_redirect_url" {
  description = "Map of accessibility_error_redirect_url values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_error_redirect_url }
}
output "app_oauths_accessibility_login_redirect_url" {
  description = "Map of accessibility_login_redirect_url values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_login_redirect_url }
}
output "app_oauths_accessibility_self_service" {
  description = "Map of accessibility_self_service values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.accessibility_self_service }
}
output "app_oauths_admin_note" {
  description = "Map of admin_note values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.admin_note }
}
output "app_oauths_app_links_json" {
  description = "Map of app_links_json values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.app_links_json }
}
output "app_oauths_app_settings_json" {
  description = "Map of app_settings_json values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.app_settings_json }
}
output "app_oauths_authentication_policy" {
  description = "Map of authentication_policy values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.authentication_policy }
}
output "app_oauths_auto_key_rotation" {
  description = "Map of auto_key_rotation values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.auto_key_rotation }
}
output "app_oauths_auto_submit_toolbar" {
  description = "Map of auto_submit_toolbar values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.auto_submit_toolbar }
}
output "app_oauths_backchannel_custom_authenticator_id" {
  description = "Map of backchannel_custom_authenticator_id values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.backchannel_custom_authenticator_id }
}
output "app_oauths_client_basic_secret" {
  description = "Map of client_basic_secret values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_basic_secret }
  sensitive   = true
}
output "app_oauths_client_basic_secret_wo_version" {
  description = "Map of client_basic_secret_wo_version values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_basic_secret_wo_version }
}
output "app_oauths_client_id" {
  description = "Map of client_id values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_id }
}
output "app_oauths_client_secret" {
  description = "Map of client_secret values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_secret }
  sensitive   = true
}
output "app_oauths_client_uri" {
  description = "Map of client_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.client_uri }
}
output "app_oauths_consent_method" {
  description = "Map of consent_method values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.consent_method }
}
output "app_oauths_enduser_note" {
  description = "Map of enduser_note values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.enduser_note }
}
output "app_oauths_frontchannel_logout_session_required" {
  description = "Map of frontchannel_logout_session_required values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.frontchannel_logout_session_required }
}
output "app_oauths_frontchannel_logout_uri" {
  description = "Map of frontchannel_logout_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.frontchannel_logout_uri }
}
output "app_oauths_grant_types" {
  description = "Map of grant_types values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.grant_types }
}
output "app_oauths_groups_claim" {
  description = "Map of groups_claim values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => one(v.groups_claim) }
}
output "app_oauths_hide_ios" {
  description = "Map of hide_ios values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.hide_ios }
}
output "app_oauths_hide_web" {
  description = "Map of hide_web values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.hide_web }
}
output "app_oauths_implicit_assignment" {
  description = "Map of implicit_assignment values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.implicit_assignment }
}
output "app_oauths_issuer_mode" {
  description = "Map of issuer_mode values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.issuer_mode }
}
output "app_oauths_jwks" {
  description = "Map of jwks values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.jwks }
}
output "app_oauths_jwks_uri" {
  description = "Map of jwks_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.jwks_uri }
}
output "app_oauths_label" {
  description = "Map of label values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.label }
}
output "app_oauths_login_mode" {
  description = "Map of login_mode values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_mode }
}
output "app_oauths_login_scopes" {
  description = "Map of login_scopes values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_scopes }
}
output "app_oauths_login_uri" {
  description = "Map of login_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.login_uri }
}
output "app_oauths_logo" {
  description = "Map of logo values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo }
}
output "app_oauths_logo_uri" {
  description = "Map of logo_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo_uri }
}
output "app_oauths_logo_url" {
  description = "Map of logo_url values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.logo_url }
}
output "app_oauths_name" {
  description = "Map of name values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.name }
}
output "app_oauths_network" {
  description = "Map of network values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => one(v.network) }
}
output "app_oauths_omit_secret" {
  description = "Map of omit_secret values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.omit_secret }
}
output "app_oauths_participate_slo" {
  description = "Map of participate_slo values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.participate_slo }
}
output "app_oauths_pkce_required" {
  description = "Map of pkce_required values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.pkce_required }
}
output "app_oauths_policy_uri" {
  description = "Map of policy_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.policy_uri }
}
output "app_oauths_post_logout_redirect_uris" {
  description = "Map of post_logout_redirect_uris values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.post_logout_redirect_uris }
}
output "app_oauths_preconfigured_app" {
  description = "Map of preconfigured_app values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.preconfigured_app }
}
output "app_oauths_profile" {
  description = "Map of profile values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.profile }
}
output "app_oauths_redirect_uris" {
  description = "Map of redirect_uris values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.redirect_uris }
}
output "app_oauths_refresh_token_leeway" {
  description = "Map of refresh_token_leeway values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.refresh_token_leeway }
}
output "app_oauths_refresh_token_rotation" {
  description = "Map of refresh_token_rotation values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.refresh_token_rotation }
}
output "app_oauths_response_types" {
  description = "Map of response_types values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.response_types }
}
output "app_oauths_sign_on_mode" {
  description = "Map of sign_on_mode values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.sign_on_mode }
}
output "app_oauths_skip_authentication_policy" {
  description = "Map of skip_authentication_policy values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.skip_authentication_policy }
}
output "app_oauths_status" {
  description = "Map of status values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.status }
}
output "app_oauths_token_endpoint_auth_method" {
  description = "Map of token_endpoint_auth_method values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.token_endpoint_auth_method }
}
output "app_oauths_tos_uri" {
  description = "Map of tos_uri values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.tos_uri }
}
output "app_oauths_type" {
  description = "Map of type values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.type }
}
output "app_oauths_user_name_template" {
  description = "Map of user_name_template values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template }
}
output "app_oauths_user_name_template_push_status" {
  description = "Map of user_name_template_push_status values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_push_status }
}
output "app_oauths_user_name_template_suffix" {
  description = "Map of user_name_template_suffix values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_suffix }
}
output "app_oauths_user_name_template_type" {
  description = "Map of user_name_template_type values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.user_name_template_type }
}
output "app_oauths_wildcard_redirect" {
  description = "Map of wildcard_redirect values across all app_oauths, keyed the same as var.app_oauths"
  value       = { for k, v in okta_app_oauth.app_oauths : k => v.wildcard_redirect }
}

