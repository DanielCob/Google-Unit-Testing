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

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}