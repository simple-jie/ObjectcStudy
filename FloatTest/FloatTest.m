#import <Foundation/Foundation.h>


int main(int argc, char const *argv[])
{
	/* code */
	@autoreleasepool 
	{

		float af = 25.23445;

		//float 只能接受6位有效数字，结果为25.2344
		//多余的小数位被舍弃，“四舍六入五成双”
		NSLog(@"%9g", af);

		//至少占9位，3位小数点 25.235
		NSLog(@"%9.3f", af);

		//2.523456e+01, 指数有6位小数位，7位有效位？
		//@"%9.3g" 为什么输出25.2
		NSLog(@"%9e", af);

		af = 0.0234456789;
		//0.023446 %f默认6位小数，float有效位为6位
		NSLog(@"%f", af);

		//0.0234457 ,小数改为7位时，float有效位为6位完整显示
		NSLog(@"%.7f", af);

		float bf = 0.2345556789;

		//float 只能接受6位有效数字，结果为0.234556,
		//舍弃部分4舍5入
		NSLog(@"%f", bf);
		NSLog(@"%e", bf); //2.345557e-01
		NSLog(@"%g", bf); //0.234556

		double dd = 25234.5556;

		//%f 默认6位小数
		NSLog(@"%f", dd); //25234.555600
		NSLog(@"%e", dd); //2.523456e+04, 

		dd = 0.0;

		//-inf 负无穷大
		NSLog(@"-5.0/0.0 = %g", -5.0/dd);

		//inf 无穷大，无穷大相等，负无穷大也相等
		NSLog(@"5.0/0.0 = %g", 5.0/dd);

		//nan 非数，所有非数都不相等
		NSLog(@"0.0/0.0 = %g", dd/dd);
	}
	return 0;
}