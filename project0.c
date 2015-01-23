//  preprocessor directive to support printing to the display
#include <stdio.h>
#include <stdbool.h>

void printIntro(void);

//  the main program
int main(void)
{
	//  declare, define, and initialize some working variables

    printIntro();

        float final = 0.0;
        float amt = 0.0;
        char choice = ' ';
        float rate = 0.0;
        char userContinue = ' ';


        printf("Do you want to convert from foreign currency to USD (y/n) (n means converting from USD to foreign currency)? ");
        scanf("%c", &choice);
        // remove newline from input buffer
        getchar();

        printf("How much is 1 USD worth in that currency (exchange rate)? ");
        scanf("%f", &rate);
        // remove newline from input buffer
        getchar();

        if(choice == 'y' || choice == 'Y') {
            printf("Converting from foreign currency to USD\n");
            printf("How much do you want to convert to USD? ");
            scanf("%f", &amt);
            final = amt / rate;
            printf("%2.2f in foreign currency is %2.2f in USD", amt, final);
        } else {
            printf("Converting from USD to foreign currency\n");
            printf("How much do you want to convert from USD? ");
            scanf("%f", &amt);
            final = amt * rate;
            printf("%2.2f in USD is %2.2f in foreign currency\n\n", amt, final);
        }

	return 0;
}

void printIntro(void) {
        printf("This is a currency converting calculator.\n");
        printf("You can choose to convert between USD and any foreign currency.\n");
        printf("All you need to know, is the conversion rate!\n\n");
    }
