<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'test' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2NORt5~&DbCw!x1Yp27*<q_Tb|.*Dp.En<V3gAe0^HXZ8e>V#Z*GD~zOT|}.^`ey' );
define( 'SECURE_AUTH_KEY',  'pAuiS^;<+[p$h2U|B=wOJ`9@.?X2pnR9gY$h)D@T+kFVP]vUp)_@}f7rzlgNGP)6' );
define( 'LOGGED_IN_KEY',    '+NElZbv?J, PtmJzKZ3[?M{8d&<~ kUl_HR`F?wo8%:R_6^9*f+y~L4kR{52}MBf' );
define( 'NONCE_KEY',        'J~>ge2t]`1B:M;3s/5tS7xcA<mH5=xI3}5CAEp;8E(f2.Xom&;=e;#x MjVZ7:I8' );
define( 'AUTH_SALT',        '~P|eaK,f}ke3v+wl2<*Ztu/lPxNB#k=Jtd(v^jk-]YJS?sdPh:0LX+)2fn[Eo[&!' );
define( 'SECURE_AUTH_SALT', '(}dKB`M,&qmjJt:A7uch@)9lse8b`qzuCW_5igaf.;Q{X0;w+BP*_RkwI^pG3-^G' );
define( 'LOGGED_IN_SALT',   '^YR!W0|sHy&Mce0~e]?1no3yb!Ts%Jrs@qraXHiXZbz(wvTC0JC{9v74TzO<rW{-' );
define( 'NONCE_SALT',       '{n8%jb-RIq#AY,>W%}6<1ci5rzhB@sGM~*5j%7} `B_%{~gz97G,Nzj>[B^k>wqK' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
