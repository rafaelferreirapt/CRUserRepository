#include <stdio.h>
#include "platform.h"

char inbyte(void);
void outbyte(char c);

int main()
{
    init_platform();

    int num_buf = 0;
    char buf[50] = "";
	print("Characters: ");

    do{
    	buf[num_buf++] = inbyte();
    } while (buf[num_buf-1] != '\n' && buf[num_buf-1] != '\r');

    print("\nOrdered:\n\r");

    for(int i=num_buf-1; i>=0; i--){
    	outbyte(buf[i]);
    }

    print("\nterminated\n\r");

    cleanup_platform();
    return 0;
}
