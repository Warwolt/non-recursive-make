#include "gtest/gtest.h"
#include "math.h"

using namespace math;

class TestMath : public ::testing::Test
{
public:

};

TEST_F(TestMath, SumAddsTogetherTwoNumbers)
{
	EXPECT_EQ(3, math::sum(1, 2));
}

TEST_F(TestMath, DiffSubtractsTwoNumbers)
{
	EXPECT_EQ(10, math::diff(12, 2));
}

TEST_F(TestMath, MulMultipliesTogetherTwoNumbers)
{
	EXPECT_EQ(15, math::mul(3, 5));
}

TEST_F(TestMath, DivDividesTwoNumbers)
{
	EXPECT_FLOAT_EQ(3.0, math::div(12, 4));
}