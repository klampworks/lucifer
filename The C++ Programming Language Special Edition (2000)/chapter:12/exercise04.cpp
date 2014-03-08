/*
 * Exercise 4.
 *
 * Why is there both a Point and a Dot class in §12.7[2]? Under which 
 * circumstances would it be a good idea to augment the Shape classes with 
 * concrete versions of key classes such as Line?
 *
 * Point and dot serve different purposes. If a points are essential to 
 * the system but a dot may never be used and should not be integrated
 * with the logic of a point.
 *
 * When those key classes are not needed in a seperate context to the 
 * class they are integrated with.
 */
