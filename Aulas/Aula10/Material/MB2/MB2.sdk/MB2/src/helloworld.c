
#include <stdio.h>
#include "platform.h"
#include "microblaze_sleep.h"
#include "xparameters.h"
#include "xgpio.h"

void print(char *str);
char inbyte(void);
void outbyte(char c);

//declare an XGpio and XGpio instance
XGpio GPIO_0;
XGpio_Config GPIO_0_conf;

int main()
{	char c;
		GPIO_0_conf.BaseAddress = XPAR_AXI_GPIO_0_BASEADDR;
	    GPIO_0_conf.DeviceId = XPAR_GPIO_0_DEVICE_ID;
	    GPIO_0_conf.InterruptPresent = XPAR_GPIO_0_INTERRUPT_PRESENT;
	    GPIO_0_conf.IsDual = XPAR_GPIO_0_IS_DUAL;

	    //Initialize the XGpio instance
        XGpio_CfgInitialize(&GPIO_0, &GPIO_0_conf, GPIO_0_conf.BaseAddress);

    init_platform();

    u32 input = 0x00000001;
    u32 i = 0;



    do
    {		//print("Character ? (e for exit):   ");
    		//c = inbyte(); inbyte();
    		//print("\nCharacter is:   ");
    		//outbyte(c);
    		//print("\n");
    		//input = XGpio_DiscreteRead(&GPIO_0, 2);				//Read the switches value
            XGpio_DiscreteWrite(&GPIO_0, 1, input);	//Write the led value
            MB_Sleep(1000);			// aguardar 1 segundo (sleep for 1 second)
            input <<= 1;
            print("\nrun\n\r");

            i++;
    } while (i <= 20);

    print("\nterminated\n\r");

    cleanup_platform();
    return 0;
}


//#include <stdio.h>
//#include "platform.h"
//#include "microblaze_sleep.h"
//#include "xparameters.h"
//#include "xgpio.h"
//
//void print(char *str);
//char inbyte(void);
//void outbyte(char c);
//
//XGpio GPIO_0;
//XGpio_Config GPIO_0_conf;
//
//int main()
//{	unsigned int value;
//	int i;
//	char c;
//	unsigned int my_array[] = {0x00000001,0x00000002, 0x00001010,0x0000f0f0};
//	char *s = "0000000000000000";
//	GPIO_0_conf.BaseAddress 	= XPAR_AXI_GPIO_0_BASEADDR;
//    	GPIO_0_conf.DeviceId 		= XPAR_GPIO_0_DEVICE_ID;
//    	GPIO_0_conf.InterruptPresent 	= XPAR_GPIO_0_INTERRUPT_PRESENT;
//    	GPIO_0_conf.IsDual 		= XPAR_GPIO_0_IS_DUAL;
//
//            	XGpio_CfgInitialize(&GPIO_0, &GPIO_0_conf, GPIO_0_conf.BaseAddress);
//
//    	init_platform();
//    	print("Example of interactions with Nexys-4 switches and leds\n\r");
//
//    	u32 input;
//    	    do
//    	    {
//    		print("Enter character (e for exit):   ");
//    	    	c = inbyte(); inbyte();
//    	    	print("The character is   ");
//    	    	outbyte(c);
//    	   	 input = XGpio_DiscreteRead(&GPIO_0, 2); 	// ler valores de interruptores
//    	            	for (i = 15, value = 0x000000001; i >= 0; i--)
//    	            	{
//    	            		if (c < 0x30+4)input = my_array[(int)(c-0x30)];
//    	            		if ((input & value) != 0) s[i] = 0x31;
//    	            		else s[i] = 0x30;
//    	           		 value <<= 1;			// a mesma coisa que value = value << 1
//    	            	}
//    	            	print("\n");
//    	            	print(s);
//    	            	print("\n");
//    		XGpio_DiscreteWrite(&GPIO_0, 1, value);		// imprimir valores de led
//    	           	MB_Sleep(1000);			// aguardar 1 segundo (sleep for 1 second)
//    	    } while (c != 'e');
//
//    	    print("The program has been terminated\n\r");
//
//    	    cleanup_platform();
//    	    return 0;
//    	}