struct DoublyLinkedNode{
    char value;
    node* prev;
    node* next;
}

struct DoublyLindedList{
    doublyLinkedNode* firstNode;
    doublyLinkedNode* lastNode;
}

void insertAfter(DoublyLindedList* list, DoublyLinkedNode* node, DoublyLinkedNode* newNode) {
    if (node == null) {
        list->firstNode = newnode;
    }
    newNode->prev = node;
    if (node->next == null) {
        newNode->next = null;
        list->lastNode = newNode;
    } else {
        newNode->next = node->next;
        node->next->prev = newNode;
    }

    node->next = newNode;
}

doublyLinkedNode* find(DoublyLindedList list, char target) {
    DoublyLinkedNode* curNode = list.firstNode;
    while (curNode != null) {
        if(curNode->value == target){
            return curNode;
        }

        curNode = curNode->next;
    }
}

void delete(DoublyLindedList list, DoublyLinkedNode* node) {
    if (node->prev == null) {
        list->firstNode = node->next;
    } else {
        node->prev->next = node->next;
    }
    if (node->next == null) {
        list->lastNode = node->prev;
    } else {
        node->next->prev = node->prev;
    }
}

void iterate(DoublyLindedList list){
    DoublyLinkedNode* curNode = list.firstNode;
    while (curNode != null) {
        printf("%c", curNode->value);
        curNode = curNode->next;
    }
}

int main() {
    DoublyLindedList list;
    DoublyLinkedNode node;
    node.value = 'a';
    insertAfter(&list, &(list.firstNode), &node);
    iterate(list);
}