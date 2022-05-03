#include <unistd.h>
#include <stdio.h>
#include <sys/resource.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <iostream>
#include "../src/paged_matrix.h"
#define PORT 8080

using namespace std;

class server{

private:
    int server_fd, new_socket, valread;
    char buffer[1042] = {0};
    const char *player1_name;
    const char *player2_name;
    int turn;
    int pointsP1 = 0;
    int pointsP2 = 0;
    int multiplier = 1;
    paged_Matrix m;

public:
    int initializeServer();
    const char *readSocket();
    void sendToClient(const char *msg);
    void readNames();
    void logicOrder();
    string readCard(const char *c);
    void logicRevealCard();
    void logicAddPoints();
    void logicChangeTurn();
    void logicTurn();
    long get_mem_usage(); 

};