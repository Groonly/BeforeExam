#include "../unity/extras/fixture/src/unity_fixture.h"
#include "../mathLib/math.h"

TEST_GROUP(Math);


TEST_SETUP(Math){
}

TEST_TEAR_DOWN(Math){

}

TEST(Math, Addtion)
{
  TEST_ASSERT_EQUAL_FLOAT(4.0, add(2.0, 2.0));
}
