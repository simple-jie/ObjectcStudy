#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
	@autoreleasepool {

		//取反:补码按位取反,包括符号位
		int a = -5;
		NSLog(@"%d取反等于%d", a, ~a);

		a = 4;
		NSLog(@"%d取反等于%d", a, ~a);

		a = 1;
		NSLog(@"%d取反等于%d", a, ~a);


		a = -2;
		NSLog(@"%d取反等于%d", a, ~a);

		a = -5; 
		int b = 4;
		NSLog(@"%d异或%d等于%d", a, b, a^b);


		if(256) {
			NSLog(@"256表示真");
		} else {
			NSLog(@"256表示假");
		}

		BOOL bl = 256;

		if(bl) {
			NSLog(@"256表示真");
		} else {
			NSLog(@"256表示假");
		}

		a = (3,4,5);
		NSLog(@"(3,4,5)的值为%d", a);
	}
	return 0;
}