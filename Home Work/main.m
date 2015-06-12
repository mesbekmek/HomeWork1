//
//  main.m
//  Home Work
//
//  Created by Mesfin Bekele Mekonnen on 6/10/15.
//  Copyright (c) 2015 Mesfin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char response[256];
        
        //Variations of Yes accepted by program
        char yes[] = "yes";
        char yes2[] = "Yes";
        //Variations of No accepted by program
        char no[] = "no";
        char no2[] = "No";
        
        char work[] = "work";
        char leisure[] = "leisure";
        char exercise[] = "exercise";
        
        char vip[] = "vip";
        char quietly[] = "quietly";
        char iDontGoOut[] = "I dont go out";
        
        printf("Welcome To Should I Buy An Apple Watch?!?\n\nStart Here!\n\n");
        printf("Please answer 'yes' or 'no' unless instructed otherwise!\nDo you own an iPhone? ");
        
        scanf("%s",response);
        
        if(( strcmp(yes,response) ) == 0||( strcmp(yes2,response) ) == 0){
            printf("Do you like Siri? ");
            scanf("%s",response);
            if(( strcmp(yes,response) ) == 0||( strcmp(yes2,response) ) == 0){
                printf("What is the most important thing in your life?\n'work','leisure', or 'exercise'?  ");
                scanf("%s",response);
                if (strcmp(work,response)  == 0) {
                    printf("Are you insufferably checking your stocks, texts, and instagram like every 20 seconds? ");
                    scanf("%s",response);
                    if (( strcmp(yes,response) ) == 0||( strcmp(yes2,response) ) == 0) {
                        printf("BUY IT!!");
                    }
                    else if(( strcmp(no,response) ) == 0||( strcmp(no2,response) ) == 0){
                        printf("DO NOT BUY IT!");
                    }
                    
                }
                else if (strcmp(leisure,response)  == 0){
                    printf("How do you roll? 'vip','quietly',or,'I dont go out' ");
                    fpurge(stdin);
                    
                    scanf("%255[^\n]%*c",response);

                    if (strcmp(vip,response)  == 0) {
                        printf("BUY THE GOLD!!");
                    }
                    else if (strcmp(quietly,response)  == 0){
                        printf("DO NOT BUY IT!!");
                    }
                    else if (strcmp(iDontGoOut,response)  == 0){
                        printf("BUY IT!!");
                    }
                }
                else if (strcmp(exercise,response)  == 0){
                    printf("Even swimming? ");
                    scanf("%s",response);
                    if (( strcmp(yes,response) ) == 0||( strcmp(yes2,response) ) == 0) {
                        printf("DO NOT BUY IT!!");
                    }
                    else if (( strcmp(no,response) ) == 0||( strcmp(no2,response) ) == 0){
                        printf("BUY IT!!");
                    }
                }
            }
            else if (( strcmp(no,response) ) == 0||( strcmp(no2,response) ) == 0){
                printf("DO NOT BUY IT!!");
            }
        }
        else if(( strcmp(no,response) ) == 0||( strcmp(no2,response) ) == 0){
            printf("DO NOT BUY AN APPLE WATCH!");
        }
        return 0;
    }
}
