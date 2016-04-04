/*
 *
 *	  ████████ ████     ██ ████████  ████████
 *	 ██░░░░░░ ░██░██   ░██░██░░░░░  ██░░░░░░
 *	░██       ░██░░██  ░██░██      ░██
 *	░█████████░██ ░░██ ░██░███████ ░█████████
 *	░░░░░░░░██░██  ░░██░██░██░░░░  ░░░░░░░░██
 *		     ░██░██   ░░████░██             ░██
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

#define addr_bus 		  *(adress + 0 )
#define emulation_sel	*(adress + 1 )
#define reg_a 			  *(adress + 2 )
#define reg_x			    *(adress + 3 )
#define reg_y 		  	*(adress + 4 )
#define reg_sp 		  	*(adress + 5 )
#define reg_pc 		  	*(adress + 6 )
#define reg_proc 		  *(adress + 7 )
#define reg_dbr 		  *(adress + 8 )
#define state_machine	*(adress + 9 )
#define ready 			  *(adress + 10)
#define d_bus 			  *(adress + 11)
#define data_ready 		*(adress + 12)
#define version_reg 	*(adress + 31)


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
void write_all_registers();
void initalize();


//   ████████   ██          ██                 ██
//  ██░░░░░░██ ░██         ░██                ░██
// ██      ░░  ░██  ██████ ░██       ██████   ░██  ██████
//░██          ░██ ██░░░░██░██████  ░░░░░░██  ░██ ██░░░░
//░██    █████ ░██░██   ░██░██░░░██  ███████  ░██░░█████
//░░██  ░░░░██ ░██░██   ░██░██  ░██ ██░░░░██  ░██ ░░░░░██
// ░░████████  ███░░██████ ░██████ ░░████████ ███ ██████
//  ░░░░░░░░  ░░░  ░░░░░░  ░░░░░    ░░░░░░░░ ░░░ ░░░░░░
//

/*
 * Buffer for binary strings
 */
char binary_buffer[BUF_SIZE + 1];

/*  This is the base adress that the system
 *  is actually mapped to once it is initalized in the
 *  kernel
 */
volatile unsigned int *adress;



//
// ████     ████           ██
//░██░██   ██░██          ░░
//░██░░██ ██ ░██  ██████   ██ ███████
//░██ ░░███  ░██ ░░░░░░██ ░██░░██░░░██
//░██  ░░█   ░██  ███████ ░██ ░██  ░██
//░██   ░    ░██ ██░░░░██ ░██ ░██  ░██
//░██        ░██░░████████░██ ███  ░██
//░░         ░░  ░░░░░░░░ ░░ ░░░   ░░
//
int main(int argc, char *argv[])
{

	initalize();

	do
	{
		//TODO:
		//	1)	get 32 bit value from file
		//	2)	set to D-Bus
		//	3)	set data ready low
		//	4)	update registers until statemachine is 1
		//	5)	???
		//	6)	Loop back
	
			printf("STALL");

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




void write_all_registers(void)
{

	puts( "\033[2J" );	//Clear screen
	puts( "\033[H"  );	//Set home
	puts( "\033[35m");	//Set type color magenta

	printf("addr_bus 	   : \t");	printf("%s\n", binrep((addr_bus 	  ),binary_buffer, BUF_SIZE));
	printf("emulation_sel: \t");	printf("%s\n", binrep((emulation_sel),binary_buffer, BUF_SIZE));
	printf("reg_a 		   : \t");	printf("%s\n", binrep((reg_a 		    ),binary_buffer, BUF_SIZE));
	printf("reg_x		     : \t");	printf("%s\n", binrep((reg_x		    ),binary_buffer, BUF_SIZE));
	printf("reg_y 		   : \t");	printf("%s\n", binrep((reg_y 	    	),binary_buffer, BUF_SIZE));
	printf("reg_sp 		   : \t");	printf("%s\n", binrep((reg_sp 	  	),binary_buffer, BUF_SIZE));
	printf("reg_pc 		   : \t");	printf("%s\n", binrep((reg_pc 		  ),binary_buffer, BUF_SIZE));
	printf("reg_proc 	   : \t");	printf("%s\n", binrep((reg_proc 	  ),binary_buffer, BUF_SIZE));
	printf("reg_dbr 	   : \t");	printf("%s\n", binrep((reg_dbr 	    ),binary_buffer, BUF_SIZE));
	printf("state_machine: \t");	printf("%s\n", binrep((state_machine),binary_buffer, BUF_SIZE));
	printf("ready 		   : \t");	printf("%s\n", binrep((ready 		    ),binary_buffer, BUF_SIZE));
	printf("d_bus 		   : \t");	printf("%s\n", binrep((d_bus 		    ),binary_buffer, BUF_SIZE));
	printf("data_ready 	 : \t");	printf("%s\n", binrep((data_ready 	),binary_buffer, BUF_SIZE));
	printf("version_reg  : \t");	printf("%s\n", binrep((version_reg  ),binary_buffer, BUF_SIZE));

	return;
}



void initalize(void)
{

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

	printf("VERSION REGISTER : %x \n", version_reg);

	data_ready =ready_high;
		__asm__(
				"nop;"
				"nop;"
			   );
	printf("DATA READY SET HI\n");
	sleep(3);
	write_all_registers();


	return;
}
