#include <stdio.h>
int main(){
    int pages[50],frames[10];
    int n,f,i,j,k, flag, page_faults=0;
    //USER INPUT: No_of_pages, pg_ref_str, no_of_frames
    printf("Enter number of pages: ");
    scanf("%d",&n);
    printf("Enter page reference string: ");
    for(i=0;i<n;i++)
        scanf("%d",&pages[i]);
    printf("Enter number of frames: ");
    scanf("%d",&f);

    for(i=0;i<f;i++)
        frames[i]=-1; //initialize frames to -1

    k=0;
    for(i=0;i<n;i++){
        flag=0;
        for(j=0;j<f;j++){
            if(frames[j]==pages[i]){ //page is already in frame
                flag=1;
                break;
            }
        }
        if(flag==0){ //page fault occurs
            frames[k]=pages[i]; //replace page in frame
            k=(k+1)%f; //move to next frame
            page_faults++;
        }
    }
    printf("Total page faults: %d\n", page_faults);
    return 0;
}