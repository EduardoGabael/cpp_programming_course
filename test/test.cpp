#include<iostream>
#include<string>
#include<gtest/gtest.h>

extern "C"
{

}

TEST(Dummy, 1)
{
    EXPECT_EQ(1,1);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}