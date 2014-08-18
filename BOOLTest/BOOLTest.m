#import <Foundation/Foundation.h>

int main(int argc, char* argv[]) {

	@autoreleasepool 
	{
		//YES 被定义为 1， NO 被定义为 0
		NSLog(@"YES == 2 is ? %d", YES == 2);

		//BOOL类型实际为 带符号char
		BOOL a = 18;
		NSLog(@"%d", a);//18 

		//非0就是YES
		if(a){
			NSLog(@"18表示YES");//18 非0就是YES
		}

		//BOOL类型实际为 带符号char， 所以当数值太大，而低8位全是0时，就会表示为NO
		a = (BOOL)256;
		if(a){
			NSLog(@"256表示YES");//18 非0就是YES
		} else {
			NSLog(@"256表示NO");
		}

		a = -127;
		if(a) {
			NSLog(@"-127表示YES");
		}

		a = -0x7f00;
		NSLog(@"%d", -0x7f00);
		if(!a) {
			NSLog(@"-0x7f00表示NO");
		}
	}

}