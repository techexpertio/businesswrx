-- ----------------------------------------------------
-- BusinessWrx Administration PostgreSQL Create Script
-- 10/17/16
-- Brad Roberts
-- ----------------------------------------------------

CREATE TABLE bwrx_configuration (
	config_id  integer PRIMARY KEY nextval('serial'),
	name  varchar(50) NOT NULL,
	description varchar(255),
	theme_branding_ena boolean,
		
);

CREATE TABLE bwrx_branding (
	branding_id  integer PRIMARY KEY nextval('serial'),
	logo_image varchar(255),
	logo_width integer,
	logo_height integer,
	logo_alt varchar(255),
	header_color_bgnd varchar(15),
	header color_selected_tab varchar(15),
	header_color_links varchar(15),
	footer_color_bgnd varchar(15),
	footer_color_links varchar(15),
	page_color_horizontal_tabs varchar(15),
	page_color_vertical_tabs varchar(15),
	page_color_links varchar(15),	
	page_color_primary_button varchar(15),	
	page_color_import_button varchar(15),
	page_color_background1 varchar(15),
	page_color_background2 varchar(15),
	font_family varchar(255),
	login_video_url varchar(255),
	login_video_mime_type varchar(50),
	login_video_looping,
	login_video_muted,
	login_bgnd_image varchar(255),
	login_bgnd_full_screen boolean,
	login_logo_apply boolean,
	login_logo_url varchar(255),
	login_box_color_bgnd varchar(15),
	login_box_color_button_bgnd varchar(15),
	login_news_display boolean,
	login_news_feed_url varchar(255),
	login_news_display_footer boolean,
	custom_css text
);

CREATE TABLE bwrx_schema (
	schema_id  integer PRIMARY KEY nextval('serial'),
	feature_id varchar(50),
	schema_prefix varchar(15),
	schema_mode varchar(15), --Default, Initialize, Import or Reference
	allow_nested_complex_types boolean,
		
)

CREATE TABLE bwrx_schema_field (
	schema_field_id  integer PRIMARY KEY nextval('serial'),
	field_name varchar(255),
	field_type varchar(15), --String, Integer, boolean, floating point, date, blob, complex, directory, user/group, document
	multivalued boolean,
	default_value varchar,
	is_required boolean,
	is_text_format boolean,
	text_format_pattern varchar(255),
	is_text_length boolean,
	range_min integer, --supports text lengths or integer ranges
	range_max integer, --supports text lengths or integer ranges
	directory_name varchar(255), --can enter new value or select a vocabulary
	user_group_contains varchar(15), --can contain users, groups or both
	document_value_stored varchar(15), -- 
	
	
)

CREATE TABLE bwrx_sub_fields (
	complex_id  integer PRIMARY KEY nextval('serial'),
	schema_field_id integer FOREIGN KEY,
	CONSTRAINT...
)
