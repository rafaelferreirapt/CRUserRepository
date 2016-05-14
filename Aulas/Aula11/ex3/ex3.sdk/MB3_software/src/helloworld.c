#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "microblaze_sleep.h"

char inbyte(void);
void outbyte(char c);

//declare an XGpio and XGpio instance
XGpio GPIO_0;
XGpio_Config GPIO_0_conf;


int countSetBits(unsigned int n)
{
  /* Brian Kernighan's algorithm  of counting set bits*/
  unsigned int c = 0; // the total bits set in n
  for (c = 0; n; n = n & (n-1))
  {
    c++;
  }
  return c;
}


int main()
{
	char c;

	GPIO_0_conf.BaseAddress = XPAR_AXI_GPIO_0_BASEADDR;
	GPIO_0_conf.DeviceId = XPAR_GPIO_0_DEVICE_ID;
	GPIO_0_conf.InterruptPresent = XPAR_GPIO_0_INTERRUPT_PRESENT;
	GPIO_0_conf.IsDual = XPAR_GPIO_0_IS_DUAL;

	//Initialize the XGpio instance
	XGpio_CfgInitialize(&GPIO_0, &GPIO_0_conf, GPIO_0_conf.BaseAddress);

    init_platform();

    unsigned int array[] = {
    		6,
    		5,
    		2,
    		4,
    		1,
    		3,
    };

    int array_length = 6;

    int hamming_weight = 0;

	for(int i=0; i<10; i++){
		if(i==array_length){
			break;
		}

		hamming_weight += countSetBits(array[i]);
	}

	// como se imprime um numero inteiro na consola?
    print("wamming heigth: ");
	c = (char)(hamming_weight+'0');
	outbyte(c);
	print("\n");
	// duvida

    XGpio_DiscreteWrite(&GPIO_0, 1, hamming_weight);

    print("\nThe program has been terminated\n\r");
    cleanup_platform();

    return 0;
}
