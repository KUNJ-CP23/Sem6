#include<stdio.h>

int main(){
    int pages[50], frames[10];
    int n, f, i, j, k, pos, max, page_faults = 0;

    printf("Enter number of pages: ");
    scanf("%d", &n);

    printf("Enter page reference string: ");
    for(i = 0; i < n; i++)
        scanf("%d", &pages[i]);

    printf("Enter number of frames: ");
    scanf("%d", &f);

    for(i = 0; i < f; i++)
        frames[i] = -1;

    for(i = 0; i < n; i++){
        int found = 0;

        // Check if page already in frame
        for(j = 0; j < f; j++){
            if(frames[j] == pages[i]){
                found = 1;
                break;
            }
        }

        if(found == 0){
            page_faults++;

            pos = -1;
            max = -1;

            for(j = 0; j < f; j++){
                int next = -1;

                // Find next use of frame page
                for(k = i + 1; k < n; k++){
                    if(frames[j] == pages[k]){
                        next = k;
                        break;
                    }
                }

                // If page is never used again
                if(next == -1){
                    pos = j;
                    break;
                }

                // Page used farthest in future
                if(next > max){
                    max = next;
                    pos = j;
                }
            }

            frames[pos] = pages[i];
        }
    }

    printf("Number of page faults: %d\n", page_faults);

    return 0;
}