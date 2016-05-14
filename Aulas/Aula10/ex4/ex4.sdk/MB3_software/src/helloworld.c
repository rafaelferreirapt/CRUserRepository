#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"

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

    u32 input1, input2, result;

    do
    {
    	print("(x for exit):\n\r");
    	print("Operand 1:");
		c = inbyte();
		inbyte();

		if(c<='9' && c>='0'){
			input1 = 0x00000000 + (c-'0');
			print("c<='9' && c>='0'\n");
		}else{
		    print("\nThe program has been terminated\n\r");
		    cleanup_platform();

		    return 0;
			break;
		}

		print("Operand 2:");
		c = inbyte();
		inbyte();

		if(c<='9' && c>='0'){
			input2 = 0x00000000 + (c-'0');
			print("c<='9' && c>='0'\n");
		}else{
			print("\nThe program has been terminated\n\r");
			cleanup_platform();

			return 0;
			break;
		}

		print("Operator (+,-,*,/,%):");
		c = inbyte();
		inbyte();

		if(c=='+'){
			result = input1 + input2;
		}else if(c=='-'){
			result = input1 - input2;
		}else if(c=='*'){
			result = input1 * input2;
		}else if(c=='/'){
			result = input1 / input2;
		}else if(c=='%'){
			result = input1 % input2;
		}else{
			print("\nThe program has been terminated\n\r");
			cleanup_platform();

			return 0;
			break;
		}

		XGpio_DiscreteWrite(&GPIO_0, 1, 0x00000000);		//Write the led value
		XGpio_DiscreteWrite(&GPIO_0, 1, result);		 	//Write the led value
    } while (c != 'x');

    print("\nThe program has been terminated\n\r");
    cleanup_platform();

    return 0;
}
