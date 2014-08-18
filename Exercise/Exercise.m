#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
	@autoreleasepool 
	{

		for (int i = 0; i < argc; ++i) {
			printf("%s\n", argv[i]);
		}

		int size = argc >= 2 ? atoi(argv[1]) : 4;

		//0下, 1右, 2上, 3左
		int orient = 0;
		int array[size][size];

		for (int i = 1, j = 0, k = 0; i <= size*size; ++i)
		{
			array[j][k] = i;
			if (j + k == size - 1) {
				if (j > k) {
					orient = 1;
				} else {
					orient = 3;
				}
			} else if (j == k && j >= (size >> 1)) {
				orient = 2;
			} else if (j + 1 == k && k < (size >> 1)) {
				orient = 0;
			}

			switch(orient) {
				case 0:
					j++;
					break;
				case 1:
					k++;
					break;
				case 2:
					j--;
					break;
				case 3:
					k--;
					break;
			}
		}

		for (int i = 0; i < size; ++i)
		{
			for (int j = 0; j < size; ++j)
			{
				printf("%d\t", array[i][j]);
			}
			printf("\n");
		}
	}
	return 0;
}