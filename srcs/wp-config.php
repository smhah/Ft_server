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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wppassword' );

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
define( 'AUTH_KEY',         'jB|9wJPZykPm2sYYDcS2@1BULl^nG@XZr1C;v;C%w2*{eXeOiiyO<6MUF`udVw:1' );
define( 'SECURE_AUTH_KEY',  'Z<l<(d?5*=<$B]+xW+^*9i&krH2GqpJ5CFkOHN4dfX~(CA{RT/aanp43?x_*y?(N' );
define( 'LOGGED_IN_KEY',    'Qc>0K:=! o;zas-K_8FlZq2]sC@mL[<&k;Z:9!*}ypNv@}].6.B./`p6;0e/(r)n' );
define( 'NONCE_KEY',        'KOw]t%A)1&?c$N#bWqmIGO7uiG_^njD244k( ,9GLQOa9iF2Fk:LyO%s^h-?bNIS' );
define( 'AUTH_SALT',        '~K$`3]{k5H!xp88Ki:%wZ._g.,gKqGX7T&GvX^Am2173.Yw-[#aYDCvb,nD9$56#' );
define( 'SECURE_AUTH_SALT', 'g YdoG8]#(h8~]hCAZ,Ya)Kgr1YTGXgRmC?OG^&C &][W:WT*`]B[3HKzjRw1HQ]' );
define( 'LOGGED_IN_SALT',   'zNK>#HT_5BKY6C).zNP)bfJjA0`Rt5f&_UPMkI{$d<3}cDRAr9uk#L>m,1qm@!<x' );
define( 'NONCE_SALT',       'n_.UbKTf4#LWiQ;#)%Np./=%Vv:1%,rW)m3n!eI,q+e*?~wNxWkJ=@|KKt{rE>yU' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );