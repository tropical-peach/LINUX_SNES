/*
 *		
 *	  ████████ ████     ██ ████████  ████████
 *	 ██░░░░░░ ░██░██   ░██░██░░░░░  ██░░░░░░ 
 *	░██       ░██░░██  ░██░██      ░██       
 *	░█████████░██ ░░██ ░██░███████ ░█████████
 *	░░░░░░░░██░██  ░░██░██░██░░░░  ░░░░░░░░██
 *		   ░██░██   ░░████░██             ░██
 *	 ████████ ░██    ░░███░████████ ████████ 
 *	░░░░░░░░  ░░      ░░░ ░░░░░░░░ ░░░░░░░░  
 *
 *
 *
 *
 *	 ███████   ███████   ██ ██      ██ ████████ ███████  
 *	░██░░░░██ ░██░░░░██ ░██░██     ░██░██░░░░░ ░██░░░░██ 
 *	░██    ░██░██   ░██ ░██░██     ░██░██      ░██   ░██ 
 *	░██    ░██░███████  ░██░░██    ██ ░███████ ░███████  
 *	░██    ░██░██░░░██  ░██ ░░██  ██  ░██░░░░  ░██░░░██  
 *	░██    ██ ░██  ░░██ ░██  ░░████   ░██      ░██  ░░██ 
 *	░███████  ░██   ░░██░██   ░░██    ░████████░██   ░░██
 *	░░░░░░░   ░░     ░░ ░░     ░░     ░░░░░░░░ ░░     ░░ 
 * 
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
#define BUF_SIZE 32

#define addr_bus 		(adress + 0 ) 
#define emulation_sel	(adress + 1 )
#define reg_a 			(adress + 2 )
#define reg_x			(adress + 3 )
#define reg_y 			(adress + 4 )
#define reg_sp 			(adress + 5 )
#define reg_pc 			(adress + 6 )
#define reg_proc 		(adress + 7 )
#define reg_dbr 		(adress + 8 )
#define state_machine	(adress + 9 )
#define ready 			(adress + 10)
#define d_bus 			(adress + 11)
#define data_ready 		(adress + 12)
#define version_reg 	(adress + 31)             
                                    
                         
//
// ███████         ██             ██   ██   ██                         
//░██░░░░██       ░░             ░░   ░██  ░░                          
//░██   ░██ ██████ ██ ██████████  ██ ██████ ██ ██    ██  █████   ██████
//░███████ ░░██░░█░██░░██░░██░░██░██░░░██░ ░██░██   ░██ ██░░░██ ██░░░░ 
//░██░░░░   ░██ ░ ░██ ░██ ░██ ░██░██  ░██  ░██░░██ ░██ ░███████░░█████ 
//░██       ░██   ░██ ░██ ░██ ░██░██  ░██  ░██ ░░████  ░██░░░░  ░░░░░██
//░██      ░███   ░██ ███ ░██ ░██░██  ░░██ ░██  ░░██   ░░██████ ██████ 
//░░       ░░░    ░░ ░░░  ░░  ░░ ░░    ░░  ░░    ░░     ░░░░░░ ░░░░░░  
//
void say_hi();
void read_from_all(volatile unsigned int *adr);
static char* binrep (unsigned int val, char *buff, int buffer_size); 




//   ████████   ██          ██                 ██        
//  ██░░░░░░██ ░██         ░██                ░██        
// ██      ░░  ░██  ██████ ░██       ██████   ░██  ██████
//░██          ░██ ██░░░░██░██████  ░░░░░░██  ░██ ██░░░░ 
//░██    █████ ░██░██   ░██░██░░░██  ███████  ░██░░█████ 
//░░██  ░░░░██ ░██░██   ░██░██  ░██ ██░░░░██  ░██ ░░░░░██
// ░░████████  ███░░██████ ░██████ ░░████████ ███ ██████ 
//  ░░░░░░░░  ░░░  ░░░░░░  ░░░░░    ░░░░░░░░ ░░░ ░░░░░░  
//
char binary_buffer[BUF_SIZE + 1];


int main(int argc, char *argv[])
{	
	volatile unsigned int *adress; 
	/*  This is the base adress that the system
	 *  is actually mapped to once it is initalized in the
	 *  kernel */


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


	unsigned int ready_high = 0xFFFFFFFF;
	unsigned int check_rdy = 0x00000002;

	
	printf("VERSION REGISTER : %x \n", *(version_reg));

	*(data_ready) =ready_high;
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
		printf("STATE MACHINE : %s\n", binrep(*(state_machine),binary_buffer, BUF_SIZE));
		read_from_all(adress);
		sleep(7);
	}while( 1 );


	return 0;
}


/*	@ read_from_all:
 *		The purpose of this function is to 
 *		loop through all the registers
 *		and return an array of values that contains
 *		register contents at the time they were read
 *
 *	Input : Base Address of register set
 *
 *	Return :	N/A 
 */
void read_from_all(volatile unsigned int *adr) 
{
	unsigned int i;
	for (i = 0 ; i < 32 ; i++)
	{
		printf("REGISTER %i = %s \n", i,\
				binrep(*(adr + i), binary_buffer, BUF_SIZE));
	}
	
	return;
}


/* 	@binrep:
 *  Create a string of binary digits based on the input value.
 *	Input: 
 *		val:  value to convert.
 *		buff: buffer to write to must be >= buffer_size+1 chars.
 *		buffer_size:   size of buffer.
 *	Returns : 
 *		Address of string or NULL if not enough space provided.
 */
static char* binrep (unsigned int val, char *buff, int buffer_size) 
{
	char *pbuff = buff;

	/* Must be able to store one character at least. */
	if (buffer_size < 1) 
		return NULL;

	/* Special case for zero to ensure some output. */
	if (val == 0) 
	{
		*pbuff++ = '0';
		*pbuff = '\0';
		return buff;
	}

	/* Work from the end of the buffer back. */
	pbuff += buffer_size;
	*pbuff-- = '\0';

	/* For each bit (going backwards) store character. */
	while (val != 0) 
	{
		if (buffer_size-- == 0) return NULL;
		*pbuff-- = ((val & 1) == 1) ? '1' : '0';

		/* Get next bit. */
		val >>= 1;
	}

	return pbuff+1;
}


void say_hi()
{	
	printf("Hello, PetaLinux World!\n");
	
	return;
}


