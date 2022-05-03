#include <gtest/gtest.h>
#include "../src/server.cpp"

TEST(Server, initialize){
    EXPECT_EQ(initializeServer(), 1);
}


int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}