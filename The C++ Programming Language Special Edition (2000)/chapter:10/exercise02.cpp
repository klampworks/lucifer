/*
 * Exercise 2.
 *
 * Complete and test Date. 
 */

struct Date {

	int d, m, y;

	void init(int dd, int mm, int yy)
	{
		d = dd;
		m = mm;
		y = yy;
	}

	void add_year(int n)
	{
		y += n;
	}

	void add_month(int n)
	{
		m += n;
	}

	void add_day(int n) 
	{
		d += n;
	}
};
