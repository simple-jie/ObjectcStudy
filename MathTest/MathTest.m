#import <Foundation/Foundation.h>

int main(int argc, char* argv[]) {

	@autoreleasepool {
		int a = 5;

		//NSLog(@"5 取余 0 = %d", 5%0);

		short b = 5;
		
		//NSLog(@"5 除以 0 = %g", 5/0);

		a = 2;
		b = 31;
		long c = pow(a, b);
		NSLog(@"%d的%d次方等于%ld",a ,b, c); //2的31次方等于2147483647

		a = sqrt(9);
		NSLog(@"9开平方等于%d",a); 

		double d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);
		d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);
		d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);
		d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);
		d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);
		d = arc4random() % 100;
		NSLog(@"100以内随机数%f", d);

	}

}