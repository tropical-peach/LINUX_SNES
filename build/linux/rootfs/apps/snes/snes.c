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

	volatile unsigned int* reset_cntrl, d_bus, data_ready, addr_bus, emulation_sel, ready, reg_a, reg_x, reg_y, reg_sp, reg_pc, reg_proc, reg_dbr, vpb, version_reg, state_machine;

	unsigned int ready_high = 0xFFFFFFFF;
	unsigned int check_rdy = 0x00000002;

	addr_bus 		= adress + 0 ;
	emulation_sel  	= adress + 1 ;
	reg_a 			= adress + 2 ;
	reg_x			= adress + 3 ;
	reg_y 			= adress + 4 ;
	reg_sp 			= adress + 5 ;
	reg_pc 			= adress + 6 ;
	reg_proc 		= adress + 7 ;	
	reg_dbr 		= adress + 8 ;
	state_machine 	= adress + 9 ;    
	ready 			= adress + 10;
	d_bus 			= adress + 11;
	data_ready 		= adress + 12;

	
	version_reg 	= adress + 31;
	

	*(adress + 12) =ready_high;
		__asm__(
				"nop;"
				"nop;"
			   );
	printf("DATA READY SET HI\n");



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
		printf("STATE MACHINE : %i\n", state_machine);
		printf("Chcking bitwise for ready... 'ready' \tResult: %x\n", (*(adress + 10) & ready_high));
		printf("Chcking bitwise for ready... 'reg_dbr' \tResult: %x\n", (*(adress + 8) & ready_high));
		printf("Chcking bitwise for ready...  'state_machine' \tResult: %x\n", (*(adress + 9) & ready_high));
		sleep(10);
	}while(*(adress + 10) & check_rdy);

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


