#include <gtest/gtest.h>
#include "../src/server.cpp"

TEST(paged_Matrix, initializeMemory){
    paged_Matrix p;
    EXPECT_EQ(p.initializeMemory(), 0);
}

TEST(paged_Matrix, buildMatrix){
    paged_Matrix p;
    EXPECT_EQ(p.buildMatrix(5, 6), 0);
}

TEST(paged_Matrix, shuffleCards){
    paged_Matrix p;
    p.buildMatrix(5, 6);
    vector<string> testVector;
    for (int i = 1; i < 16; i++)
    {
        testVector.push_back("a");
        testVector.push_back("a");
    }
    EXPECT_EQ(p.shuffleCards(), testVector);
}


TEST(paged_Matrix, readImage){
    paged_Matrix p;

    const char* i = "indice i";

    std::string imagen = "Image";

    ASSERT_EQ(p.readImage(i), imagen);

    
}

TEST(paged_Matrix, seekCard_if){

    paged_Matrix p;

    int enMatrix = 1;
    

    EXPECT_EQ(p.seekCard(3,5), enMatrix);

    
}

TEST(paged_Matrix, seekCard_else){

    paged_Matrix p;

    int enVmem = 0;
    

    EXPECT_EQ(p.seekCard(3,5), enVmem);

    
}


TEST(paged_Matrix, seekinMatrix){

    paged_Matrix p;

    int card_inMatrix = 0;
    

    EXPECT_EQ(p.seekinMatrix(5,2), card_inMatrix);

    
}


TEST(paged_Matrix, isPairs()){

    paged_Matrix p;
    bool pairs = true;
    bool is_notPairs = false;
    p.seekCard
    EXPECT_EQ(p.isPairs(), true)

}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}