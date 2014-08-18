#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
	@autoreleasepool {
		int count;
		for (count = 0; count < 10; ++count);
		{
			NSLog(@"count = %d", count);
		}
	}
	return 0;
}