/*
 * Placeholder PetaLinux user application.
 *
 * Replace this with your application code
 */
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <time.h>
#include <string.h>

#include <sys/types.h>
#include <sys/mman.h>
#include <sys/time.h>


#define base 0x43C00000 

void say_hi();
unsigned int* read_from_all(volatile unsigned int *adr);


int main(int argc, char *argv[])
{	
	volatile unsigned int *adress; 
	/*  This is the base adress that the system
	 *  is actually mapped to once it is initalized in the
	 *  kernel */


	unsigned int *register_values;
	int i;
	int file_des = open("/dev/mem", O_RDWR|O_SYNC);
	if (file_des < 0)  
	{
		fprintf(stderr, "ERROR INITALIING 'file_des'\n");
		exit(EXIT_FAILURE);
	}
	/*	This ensures that dev/mem can be openened and used in the next step */



	adress = mmap(0, getpagesize(), PROT_READ|PROT_WRITE, MAP_SHARED, file_des, base);
	//	mmap to get the new address of the system in the hardawre

	volatile unsigned int* reset_cntrl, d_bus, data_ready, addr_bus, em_and_ready, reg_a, reg_x, reg_y, reg_sp, reg_pc, reg_proc, reg_dbr, vpb, version_reg;

	unsigned int ready_high = 0xFFFFFFFF;

	reset_cntrl 	= adress + 9 ;    
	d_bus 			= adress + 10;
	data_ready 		= adress + 11;
	addr_bus 		= adress + 0 ;
	em_and_ready  	= adress + 1 ;
	reg_a 			= adress + 2 ;
	reg_x			= adress + 3 ;
	reg_y 			= adress + 4 ;
	reg_sp 			= adress + 5 ;
	reg_pc 			= adress + 6 ;
	reg_proc 		= adress + 7 ;	
	reg_dbr 		= adress + 8 ;
	
	version_reg 	= adress + 31;

	*(adress + 8 ) =0x00000001;
	*(adress + 8 ) =0x00000000; 

	*(adress + 9 ) =0x00000001;
    *(adress + 9 ) =0x00000000; 
	
	*(adress + 10 ) =0x00000001;
	*(adress + 10 ) =0x00000000;

	for (i = 0 ; i < 32 ; i++)
	{
		printf("REGISTER %i = %x \n",i, *(adress+i));
	}

	do
	{
		__asm__(
				"nop;"
				"nop;"
			   );
		printf("Chcking bitwise for ready... D_BUS \tResult: %x\n", (*(adress + 10) & ready_high));
		printf("Chcking bitwise for ready... REG_DBR \tResult: %x\n", (*(adress + 8) & ready_high));
		printf("Chcking bitwise for ready... RESET_CNTRL \tResult: %x\n", (*(adress + 9) & ready_high));
		sleep(10);
	}while(em_and_ready && 0x00000002);

	printf("VERSION REGISTER : %x \n", (version_reg));

	register_values = read_from_all(adress);

	for (i = 0 ; i < 32 ; i++)
	{
		printf("REGISTER %i = %x \n",i, *(register_values+i));
	}

	
	return 0;
}


/*	@ read_from_all
 *		The purpose of this function is to 
 *		loop through all the registers
 *		and return an array of values that contains
 *		register contents at the time they were read
 */
unsigned int* read_from_all(volatile unsigned int *adr) 
{
	unsigned int i;
	static unsigned int read_values[32];
	for (i = 0 ; i < 32 ; i++)
	{
		read_values[i] = *(adr + i);
	}

	return (read_values);

}


void say_hi()
{	
	printf("Hello, PetaLinux World!\n");
	
	return;
}


