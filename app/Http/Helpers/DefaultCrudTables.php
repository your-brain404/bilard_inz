<?php
namespace App\Http\Helpers;

class DefaultCrudTables {

	protected static $tables = ['about_us', 'subpages', 'partners', 'live_broadcasts', 'reservations', 'services', 'service_equipments', 'history', 'players', 'cups', 'slider', 'price_list', 'price_list_categories', 'offers', 'news', 'users', 'mails', 'attachments', 'gallery', 'media', 'shop_categories', 'shop_products', 'shop_items', 'shop_item_colors', 'delivery_options', 'shop_orders', 'documents', 'lucky_number', 'settings', 'contact', 'comments_descriptions', 'contact_descriptions', 'cups_descriptions', 'documents_descriptions', 'gallery_descriptions', 'history_descriptions', 'live_broadcasts_descriptions', 'news_descriptions', 'offers_descriptions', 'partners_descriptions', 'players_descriptions', 'price_list_descriptions', 'reservations_descriptions', 'calendar_descriptions', 'day_formats', 'shop_descriptions', 'cart_descriptions', 'breadcrumb_descriptions', 'layout_elements', 'drawer_descriptions', 'auth_descriptions', 'snackbar_alerts', 'validation_rules'];

	public static function get() {
		return self::$tables;
	}
}