//Append one file at the end of another file 
// using getc and putc
#include<stdio.h>
void main(){
    FILE *fp1, *fp2;
    char ch;
    fp1 = fopen("try.txt","a");
    if(fp1 == NULL){
        printf("File not found");
        return;
    }
    fp2 = fopen("try2.txt","r");
    if(fp2 == NULL){
        printf("File not found");
        return;
    }
    while(fscanf(fp2, "%c", &ch) == 1){
        fprintf(fp1, "%c", ch);
    }
    fclose(fp1);
    fclose(fp2);

}