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
#define rw_ready 		  *(adress + 10)
#define d_bus 			  *(adress + 11)
#define data_ready 		*(adress + 12)
#define d_bus_out 		*(adress + 13)
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
int ready_next(void);
void init_screen(void);


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

		//Open the file memory arbitor and allocate a 
		//buffer for it.
		FILE * program_memory = fopen("/home/root/program", "r");
		unsigned int zero = 0x00000000;		
		char instruction_string[BUF_SIZE];
		unsigned int instruction_code = 0;
		int ready_next_value;
		char * write_back_pointer;
		//TODO:
		//	1)	get 32 bit value from file								|✔
		//	2)	set to D-Bus															|✔
		//	3)	set data ready low												|✔
		//	4)	update registers until statemachine is 1	|✔
		//	5)	???																				|
		//	6)	Loop back																	|
		do
		{
		
				fseek(program_memory, (long)(addr_bus), SEEK_SET);
				if(0 == (fread(instruction_string, 8, 1, program_memory)))
				{
					puts( "\033[0;0f"  );	//Set home
					puts( "\033[2J" 	 );	//Clear screen
					printf("End of Memory, exiting...\n");
					return(EXIT_SUCCESS);
				}
				instruction_code = (int)strtoul(instruction_string, NULL, 16);
				
				d_bus = instruction_code;
				data_ready = zero;
				data_ready = 0xFFFFFFFF;

				do
				{
						write_all_registers();
						if (rw_ready == 0x00000002)
						{
							write_back_pointer = binrep((d_bus_out ),binary_buffer, BUF_SIZE);
							fseek(program_memory, (long)(addr_bus), SEEK_SET);
							fwrite((write_back_pointer), sizeof(char), sizeof(*(write_back_pointer)), program_memory);

						}

						write_back_pointer = binrep((d_bus_out ),binary_buffer, BUF_SIZE);
						puts( "\033[55;15f");
						printf("Regular :\t%s \nDereferenced:\t%u",write_back_pointer,sizeof( *(write_back_pointer)));

						if (ready_next() == 1337)
								break;
						else
								return(EXIT_SUCCESS);
				}while(state_machine != 0x00000001);

		}while( 1 );


		return (EXIT_SUCCESS);
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


/*	
 *	@init_screen
 *
 *	All this function does is clear the screen.
 *	it should only be called from init, and only
 *	be called once.
 *
 */

void init_screen(void)
{

	puts( "\033[0;0f"  );	//Set home
	puts( "\033[2J" );	//Clear screen
	puts( "\033[35m");	//Set type color magenta
	return;

}



/*	@write_all_registers
 *	This fuction simply updates the screen 
 *	with the register information, nothing else
 *
 *	It is void.
 */ 

void write_all_registers(void)
{


	puts( "\033[0;0f"  );	//Set home
	printf("addr_bus     : \t");	printf("%s", binrep((addr_bus 	  ),binary_buffer, BUF_SIZE)); puts("\n\033[k"); 	printf("\t0x%x\n",addr_bus 	   );
	printf("emulation_sel: \t");	printf("%s", binrep((emulation_sel),binary_buffer, BUF_SIZE)); 										printf("\t0x%x\n",emulation_sel);
	printf("reg_a        : \t");	printf("%s", binrep((reg_a 		    ),binary_buffer, BUF_SIZE)); 										printf("\t0x%x\n",reg_a 		   );
	printf("reg_x	     : \t"  );	printf("%s", binrep((reg_x		    ),binary_buffer, BUF_SIZE));										printf("\tx%x\n",reg_x		     );
	printf("reg_y        : \t");	printf("%s", binrep((reg_y 	    	),binary_buffer, BUF_SIZE));										printf("\t0x%x\n",reg_y 	     );
	printf("reg_sp       : \t");	printf("%s", binrep((reg_sp 	  	),binary_buffer, BUF_SIZE));										printf("\t0x%x\n",reg_sp 	  	 );
	printf("reg_pc       : \t");	printf("%s", binrep((reg_pc 		  ),binary_buffer, BUF_SIZE)); puts("\n\033[k"); 	printf("\t0x%x\n",reg_pc 		   );
	printf("reg_proc     : \t");	printf("%s", binrep((reg_proc 	  ),binary_buffer, BUF_SIZE)); 										printf("[N O M I D irq Z C ] \n\t%x\n",reg_proc);
	printf("reg_dbr      : \t");	printf("%s", binrep((reg_dbr 	    ),binary_buffer, BUF_SIZE));									 	printf("\t0x%x\n",reg_dbr 	   );
	printf("state_machine: \t");	printf("%s", binrep((state_machine),binary_buffer, BUF_SIZE));									 	printf("\t0x%x\n",state_machine);
	printf("rw_ready     : \t");	printf("%s", binrep((rw_ready	    ),binary_buffer, BUF_SIZE));									 	printf("\t0x%x\n",rw_ready	   );
	printf("d_bus        : \t");	printf("%s", binrep((d_bus 		    ),binary_buffer, BUF_SIZE)); puts("\n\033[k"); 	printf("\t0x%x\n",d_bus 		   );
	printf("data_ready   : \t");	printf("%s", binrep((data_ready 	),binary_buffer, BUF_SIZE)); 										printf("\t0x%x\n",data_ready 	 );
	printf("version_reg  : \t");	printf("%s", binrep((version_reg  ),binary_buffer, BUF_SIZE)); 										printf("\t0x%x\n",version_reg  );

	return;
}


/* @initalize
 *	
 *	This is the basic init function. 
 *	All it does is setup the base pointer, display
 *	the version register, and write the registers out 
 *	one time. It should only be called ONCE.
 *	It is void
 */
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
		init_screen();
		write_all_registers();


		return;
}

/*
 *	@ready_next
 *		Return: int--
 *						1057 on fail
 *						1337 on success
 *
 *		This function checks for ready high.
 *		If it is high, it waits for user input, 
 *		any input other than "NO" will conintue
 *		with the program.
 *		
 */
int ready_next(void)
{
		if (rw_ready == 0x00000001)
		{
				puts("\033[35;0f");
				puts("\033[2k");
				fprintf(stdout, "Ready is high, no error. Continuing in ready_next.\n");
		}
		else
		{
				puts("\033[35;0f");
				puts("\033[2k");
				fprintf(stdout, "Ready is not high. Exiting function and continueing.\n");
				return(1057);
		}

		puts("\033[36;0f");
		fprintf(stdout, "Instruction Done, execute next?\n");
		char next[BUF_SIZE];
		char end[2] = "NO";
		char reset[5] = "reset";
		fgets(next, BUF_SIZE - 25, stdin);
		
		puts("\033[2k");
		if (!strncmp(next, end, 2))
		{
				fprintf(stderr, "\tRECEIVED 'NO'. Exiting program\n");
				return (EXIT_SUCCESS);
		}
		else if (!strncmp(next, reset, 5))
		{
				fprintf(stderr, "\tResetting after 5 second sleep. Please toggle reset\n");
				sleep(5);
		}

		return(1337);

}
