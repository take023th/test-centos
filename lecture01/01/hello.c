#include <stdio.h>

int main(){
	FILE *outputfile;
	outputfile = fopen("/tmp/dir1/test.txt" , "w") ;
	fprintf(outputfile, "hello, world") ;
	return 0;
}
