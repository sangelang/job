; Drupal core make file.

api = 2
core = 7.x

; Not specifying a drupal core version will use the latest stable release.
projects[drupal][version] = "7.32"

; CORE PATCHES

; user_role_grant_permissions() throws PDOException when used for a disabled module's permission or with non-existent permissions
; http://drupal.org/node/737816#comment-6978566
; (fixes integrity constraint violation when adding permissions, see http://drupal.org/node/1063204)
projects[drupal][patch][] = http://drupal.org/files/drupal-7.x-fix_pdoexception_grant_permissions-737816-26-do-not-test.patch
