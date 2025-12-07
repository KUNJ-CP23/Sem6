//Capitalize the first letter of each word in a file
#include<stdio.h>
#include<ctype.h>
void main(){
    char ch;
    FILE *fp;
    fp = fopen("try.txt","r+");
    if(fp == NULL){
        printf("File not found");
        return;
    }
    while(fsanf(fp, "%c", &ch)==1){
        if(ch == ' ' || ch == '\n' || ch == '\t'){
            //peek the next character
            long pos = ftell(fp);
            if(fscanf(fp, "%c", &ch)==1){
                if(islower(ch)){
                    ch = toupper(ch);
                    fseek(fp, pos, SEEK_SET);
                    fprintf(fp, "%c", ch);
                }
            }
            fseek(fp, pos, SEEK_SET);
        }
    }
    fclose(fp);
}