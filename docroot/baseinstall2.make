; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[] = drupal
  
; Modules
; --------
defaults[projects][subdir] = "contrib"
projects[] = admin_menu
projects[] = backup_migrate
projects[] = calendar
projects[] = checklistapi
projects[colorbox][type] = "module"
projects[colorbox][do_recursion] = 0
projects[] = ctools
projects[custom_formatters][type] = "module"
projects[custom_formatters][do_recursion] = 0
projects[] = date
projects[] = email
projects[] = entity
projects[] = entityreference
projects[] = faq
projects[] = features
projects[] = features_override
projects[] = features_extra
projects[] = field_collection
projects[] = field_collection_views
projects[] = globalredirect
projects[] = gmap
projects[] = google_analytics
projects[] = honeypot
projects[] = image_resize_filter
projects[] = imce
projects[] = imce_wysiwyg
projects[] = jquery_update
projects[] = libraries
projects[] = link
projects[] = linkchecker
projects[] = location
projects[] = media
projects[] = media_livestream
projects[] = media_youtube
projects[] = menu_attributes
projects[] = metatag
projects[] = module_filter
projects[] = node_export
projects[] = omega_tools
projects[] = panels
projects[] = pathauto
projects[] = pathologic
projects[] = quicktabs
projects[] = redirect
projects[] = responsive_menus
projects[] = seo_checklist
projects[] = show_database_name
projects[] = special_menu_items
projects[] = strongarm
projects[superfish][type] = "module"
projects[superfish][do_recursion] = 0
projects[] = taxonomy_manager
projects[] = token
projects[] = transliteration
projects[] = uuid
projects[] = uuid_features
projects[] = views
projects[] = views_accordion
projects[views_slideshow][type] = "module"
projects[views_slideshow][do_recursion] = 0
projects[] = webform
projects[] = workbench
projects[] = workbench_access
projects[] = workbench_media
projects[] = workbench_moderation
; use wysiwyg dev until 7.x-2.3 is released to be compatible with CKEditor 4.x
projects[wysiwyg][version] = 2.x-dev
projects[] = wysiwyg_filter
projects[] = xmlsitemap

; Development Modules
; --------
includes[development] = "development.make"

; Themes
; --------
projects[] = omega

; Libraries
; ---------
; CKEditor
libraries[ckeditor][type] = "library"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor 4.4.4/ckeditor_4.4.4_full.zip"
; wvega timepicker
libraries[wvega_timepicker][type] = "library"
libraries[wvega_timepicker][download][type] = "git"
libraries[wvega_timepicker][directory_name] = "wvega-timepicker"
libraries[wvega_timepicker][download][url] = "https://github.com/wvega/timepicker.git"

; Colorbox, library provided by .make file inside Colorbox module, but it can't download the library
libraries[colorbox][type] = "library"
libraries[colorbox][download][type] = "git"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox.git"
; JSON2, library provided by .make file inside Views Slideshow module
libraries[json2][type] = "library"
libraries[json2][download][type] = "git"
libraries[json2][download][url] = "https://github.com/douglascrockford/JSON-js.git"
; jQuery Cycle, library provided by .make file inside Views Slideshow module, but it can't download the library
libraries[jquery_cycle][type] = "library"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][download][type] = "git"
libraries[jquery_cycle][download][url] = "https://github.com/malsup/cycle.git"
; Superfish, library provided by .make file inside Superfish module, but it can't download the library
libraries[superfish][type] = "library"
libraries[superfish][download][type] = "git"
libraries[superfish][download][url] = "https://github.com/mehrpadin/Superfish-for-Drupal.git"
