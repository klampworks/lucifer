/*
 * Exercise 1.
 *
 * Find the error in Date: : addyear () in §10.2.2. Then find two additional 
 * errors in the version in § 10.2.7.
 *
 */

#if 0

There is no constructor but an 'init' function.

The leap year logic is embedded inside the add_year function but is needed for
add_day and add_month too.

#endif
