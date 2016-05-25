#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "microblaze_sleep.h"

char inbyte(void);
void outbyte(char c);

//declare an XGpio and XGpio instance
XGpio GPIO_0;
XGpio_Config GPIO_0_conf;

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
    		0x00000006,
    		0x00000005,
    		0x00000002,
    		0x00000004,
    		0x00000001,
    		0x00000003,
    };

    int array_length = 6;

	for(int i=0; i<10; i++){
		if(i==array_length){
			break;
		}
		for(int j=i+1; j<10; j++){
			if(i==array_length-1){
				break;
			}
			if(array[i]>array[j]){
				int tmp = array[i];
				array[i] = array[j];
				array[j] = tmp;
			}
		}
	}

	// como se imprime um numero inteiro na consola?
    print("mínimo: ");
	c = (char)(array[0]+'0');
	outbyte(c);
	print("\n");
	// duvida

    XGpio_DiscreteWrite(&GPIO_0, 1, array[0]);
    MB_Sleep(4000);


	// como se imprime um numero inteiro na consola?
    print("máximo: ");
	c = (char)(array[array_length-1]+'0');
	outbyte(c);
	print("\n");
	// duvida

    XGpio_DiscreteWrite(&GPIO_0, 1, array[array_length-1]);

    print("\nThe program has been terminated\n\r");
    cleanup_platform();

    return 0;
}