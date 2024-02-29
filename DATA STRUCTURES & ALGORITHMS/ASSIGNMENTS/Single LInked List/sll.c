/*
Name : Mathesh
Date : 08.12.2023
Description : Single Linked List basic operations
*/

#include "sll.h"

int main()
{
    int option, data, key;

    Slist *head = NULL; // initialize the header to NULL

    //printf("1. Insert last\n2. Insert first\n3. Delete Last\n4. Delete first\n5. Delete list\n6. Find node\n7. Print list\n8. Exit\nEnter your choice : ");

    while (1)
    {
        /*ask user options*/

        scanf("%d", &option);

        switch (option)
        {
        case 1:
            printf("Enter the number that you want to insert at last: ");
            scanf("%d", &data);

            /*insert_at_last function call*/
            if (insert_at_last(&head, data) == FAILURE) // pass by reference
            {
                printf("INFO : Insertion Failure\n");
            }
            break;
        case 2:
            /*To insert the element at first */
            //printf("Enter the element you have to insert at the first : ");
            scanf("%d", &data);

            if (insert_at_first(&head, data) == FAILURE)
            {
                printf("INFO : Insertion Failure\n");
            }
            break;

        case 3:
            /* Delete a last link*/
            if (sl_delete_last(&head) == LIST_EMPTY)
            {
                printf("INFO : Delete last Failure\nList is empty\n");
            }
            else
            {
                printf("INFO : Delete last successfull\n");
            }

            break;
        case 5:
            /* Delete list */
            if (sl_delete_list(&head) == LIST_EMPTY)
            {
                printf("INFO : Delete list Failure\nList is empty\n");
            }
            else
            {
                printf("INFO : Delete list Successfull\n");
            }

            break;
        case 4:
            /*To delete first node */
            if (sl_delete_first(&head) == LIST_EMPTY)
            {
                printf("INFO : Delete first Failure\n List is empty\n");
            }
            else
            {
                printf("INFO : Delete first successfull\n");
            }
            break;
        case 6:
            //printf("Enter the key to find : ");
            scanf("%d", &key);
            int count;
            if ((count = find_node(head, key)) == LIST_EMPTY || count == DATA_NOT_FOUND)
            {
                printf("INFO : Failure\nList is empty or Key not found\n");
            }
            else
            {
                printf("%d found in the list at the position %d\n", key, count);
            }

            break;
        case 7:
            /* print list function call*/
            print_list(head);
            break;

        case 8:
            sl_delete_list(&head); // Free allocated memory before exiting
            return SUCCESS;
        default:
            printf("Enter proper choice !!\n");

            break;
        }
    }

    return 0;
}
