#include <stdio.h>

int main() {
    FILE *f1, *f2;
    char c, next;

    // Open source and output files
    f1 = fopen("code.txt", "r");
    f2 = fopen("output.txt", "w");

    if (f1 == NULL || f2 == NULL) {
        printf("Error opening file\n");
        return 1;
    }

    while ((c = fgetc(f1)) != EOF) {

        if (c == '/') {
            next = fgetc(f1);

            // Single-line comment
            if (next == '/') {
                while ((c = fgetc(f1)) != '\n' && c != EOF);
                printf("Single line comment ignored\n");
            }

            // Multi-line comment
            else if (next == '*') {
                char prev = 0;
                while ((c = fgetc(f1)) != EOF) {
                    if (prev == '*' && c == '/')
                        break;
                    prev = c;
                }
                printf("Multi-line comment ignored\n");
            }

            // Not a comment
            else {
                fputc('/', f2);
                fputc(next, f2);
            }
        }

        else {
            fputc(c, f2);
        }
    }

    fclose(f1);
    fclose(f2);

    printf("Lexical analysis completed.\n");
    return 0;
}