<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'uwordpress' );

/** Database password */
define( 'DB_PASSWORD', 'securePass' );

/** Database hostname */
//define( 'DB_HOST', 'localhost' );
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'wYzm!,DeO<D3k( Dm& M]n_Vn7Yc#nI2 f?W5m158Ok^p+25PZBx4l%0xd/Si^GM' );
define( 'SECURE_AUTH_KEY',  '0{MA~)SXZoxIG8w8XqyzLFfv|L9Rp16a&eVQ/v?n]EKQw)-<kCoK?&_d4+K2IV?M' );
define( 'LOGGED_IN_KEY',    '>M(tI.9ky1!tvJc<w!s@;B*8jQBvnF=Rbv=x,h4|6~thBx]k+Gy#^,|ud8 !p}}U' );
define( 'NONCE_KEY',        '*5j(:ogX38GVjq]D0,//@#S98MpU:Xi_EC@=H$;j>/[X&}4+x%,y1&!Xn`d@t<2|' );
define( 'AUTH_SALT',        'U5gde1YZ_U(y]0T=Y4!)6X5%KY7oT+SiPJzy/zRGnb:@Jqxt#WcPf2ExPKwR#ccP' );
define( 'SECURE_AUTH_SALT', 'vq&S_&F(5rir|`]i~+cG>DYb%Xe}MskCf;lpK3(J$7(L!LCLU9q56.*=ok_PmU{,' );
define( 'LOGGED_IN_SALT',   'y<^!hwC`:0.aq_a1De56%1KAKj%u$6&{GTv|CVS2xnFRAIjQn9z!BVluYVHOR/`m' );
define( 'NONCE_SALT',       ':rXt=@mK38iY;S5`m#2!BlODL?x)X=Ab)#$%<u` ~#+r?&YofrK):2p7Ot|qVe!B' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
