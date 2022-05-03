#ifndef PAGED_MATRIX_H
#define PAGED_MATRIX_H
#include <iostream>
#include <string.h>
#include <vector>
#include <fstream>

using namespace std;
using std::fstream;
using std::ofstream;
using std::ios;

struct card {
    int posX;
    int posY;
    char image[19000];
};

class paged_Matrix
{
private:
    /**
     * @brief objeto utilizado para escribir y leer de vmemory.bin
     * 
     */
    fstream vmem;
    int rows = 5, cols = 6;
    int cardsLeft = rows*cols;
    /**
     * @brief almacena 1/3 de las cartas restantes en memoria
     * 
     */
    vector <card> memoryMatrix;
    /**
     * @brief imagen de la última carta seleccionada
     * 
     */
    string tempCard1; 
        /**
     * @brief imagen de la última carta seleccionada
     * 
     */
    string tempCard2;
    /**
     * @brief indica si alguna de las últimas dos tarjetas estaba en memoria
     * 
     */
    bool inMemory = false;
    bool temp = true;
    int pageHit = 0;
    int pageFault = 0;

public:
    paged_Matrix();
    int get_cardsLeft();
    bool get_inMemory();
    void set_inMemory(bool i);
    void initializeMemory();
    string readImage(const char* i);
    void buildMatrix(int rows, int cols);
    void shuffleMemoryMatrix();
    card seekCard(int i, int j);
    card seekinMatrix(int i, int j, bool shuffle);
    void saveTempCard(string cardImage);
    vector <string> shuffleCards();
    string getImage(card c);
    bool isPairs();
};

#endif //PAGED_MATRIX_H