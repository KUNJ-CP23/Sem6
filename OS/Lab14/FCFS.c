#include <stdio.h>

int main()
{
    int n, i, j;
    int pid[20], at[20], bt[20], wt[20], tat[20];
    float avg_wt = 0, avg_tat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++)
    {
        pid[i] = i + 1;
        printf("Enter Arrival Time of P%d: ", pid[i]);
        scanf("%d", &at[i]);
        printf("Enter Burst Time of P%d: ", pid[i]);
        scanf("%d", &bt[i]);
    }

    // Sort by Arrival Time (FCFS)
    for(i = 0; i < n-1; i++)
    {
        for(j = i+1; j < n; j++)
        {
            if(at[i] > at[j])
            {
                // swap arrival time
                int temp = at[i];
                at[i] = at[j];
                at[j] = temp;

                // swap burst time
                temp = bt[i];
                bt[i] = bt[j];
                bt[j] = temp;

                // swap process id
                temp = pid[i];
                pid[i] = pid[j];
                pid[j] = temp;
            }
        }
    }

    wt[0] = 0;               // first process
    int time = at[0] + bt[0];

    for(i = 1; i < n; i++)
    {
        if(time < at[i])
            time = at[i];

        wt[i] = time - at[i];
        time += bt[i];
    }

    for(i = 0; i < n; i++)
    {
        tat[i] = wt[i] + bt[i];
        avg_wt += wt[i];
        avg_tat += tat[i];
    }

    avg_wt /= n;
    avg_tat /= n;

    printf("----------First Come First Served Scheduling----------\n");

    printf("\nProcess\tAT\tBT\tWT\tTAT\n");
    for(i = 0; i < n; i++)
        printf("P%d\t%d\t%d\t%d\t%d\n", pid[i], at[i], bt[i], wt[i], tat[i]);

    printf("\nAverage Waiting Time = %.2f", avg_wt);
    printf("\nAverage Turnaround Time = %.2f\n", avg_tat);

    return 0;
}