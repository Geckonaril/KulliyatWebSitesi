    #include <stdio.h>
    #include <stdlib.h>

    struct n{
        int data;
        struct n * next;
        struct n *prev;
    };
    typedef struct n node;
    node *root=NULL;
    node *son=NULL;

    void enqueue(int x){
        if (root==NULL){
            root = (node*)malloc(sizeof(node));
            root->data=x;
            root->next=NULL;
            root->prev = NULL;
            son = root;
        }
        else{
            son->next = (node *)malloc(sizeof(node));
            son->next->data = x;
            son->next->next = NULL;
            son->next->prev = son;
            son = son->next;
            }
    }
    int dequeue_front() {
    if (root == NULL) {
        printf("boş\n");
        return -1;
    }
    int rvalue = root->data;
    node *temp = root;
    root = root->next;
    if (root != NULL) {
        root->prev = NULL;
    } else {
        son = NULL; 
    }
    free(temp);
    return rvalue;
}

int dequeue_rear() {
    if (son == NULL) {
        printf("boş\n");
        return -1;
    }
    int rvalue = son->data;
    node *temp = son;
    son = son->prev;
    if (son != NULL) {
        son->next = NULL;
    } else {
        root = NULL; 
    }
    free(temp);
    return rvalue;
}

    int main(){
        int i;
        int count;
        int *p;
        p=&count;
        int uzunluk=0;
        while (1){
            scanf("%d",&i);
            uzunluk++;
            if (i==-1){
                uzunluk--;
                scanf("%d",p);
                break;
            }
            enqueue(i);
        }
        int count1=count;
        int basuzunluk=1;
        int sonuc =0;
        int arr[30];
        int a=0;
        while (count>0){
            if (root->data >= son->data){
                sonuc+=root->data;
                arr[a++]=root->data;
                arr[a++]=basuzunluk++;
                uzunluk--;  
                dequeue_front();
                dequeue_rear();
                count--;
            }
            else{
                sonuc+=son->data;
                arr[a++]=son->data;
                arr[a++]=uzunluk--;
                basuzunluk++; 
                dequeue_front();
                dequeue_rear();
                count--;
            }
        }
        a=0;
        printf("%d\n",sonuc);
        while(count1>0){
            printf("%d %d\n",arr[a], arr[a+1]);
            a+=2;
            count1--;
        }
        return 0;
    }