/*
 * Exercise 2.
 *
 * For each declaration in §4.9, do the following: If the declaration is not 
 * a definition, write a definition for it. If the declaration is a definition,
 * write a declaration for it that is not also a defi-nition.
 *
 */

#include <string>
#include <complex>
char chi;
std::string s;
int count = 1;
const double pi = 3.1415926535897932385 ;
extern int error_number;
const char* name = "Njal";
const char* season [] = { "spring", "summer", 
	"fall", "winter"};

struct Date { int d, m, y; };
int day (Date* p) { return p->d; }
double sqrt (double) ;
template<class T> T abs (T a) { return a<0? -a : a;}
struct User;
enum Beer { Carlsberg, Tuborg, Thor};
namespace NS { int a; }

int main(){}
