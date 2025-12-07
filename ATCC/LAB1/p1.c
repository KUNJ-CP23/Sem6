// Create, open file and count chars, spaces, tabs and new lines in a file
#include<stdio.h>
void main(){
    FILE *fp;
    char char_c=0, space_c=0, tab_c=0, newline_c=1, word_c=0;
    fp = fopen("try.txt","r");
    //ch is for traversing across file
    char ch;
    int temp=0;
    while(fscanf(fp, "%c", &ch) == 1){
        if(ch ==' '){
            space_c++;
        }
        else if(ch =='\t'){
            tab_c++;
        }
        else if(ch =='\n'){
            newline_c++;
        }
        if (ch == ' ' || ch == '\n' || ch == '\t') {
            temp = 0;
        } else if (temp == 0) {
            word_c++;
            temp = 1;
        }
    }
    fclose(fp);
    printf("Characters: %d,\n Spaces: %d,\n Tabs: %d,\n Lines: %d,\n Words: %d\n",char_c,space_c,tab_c, newline_c,word_c);

}