#include <gtest/gtest.h>
#include <memory>
#include "../include/Factory.hpp"
#include "../include/CombatVisitor.hpp"
#include "../include/NPC.hpp"

// Factory Test
TEST(FactoryTest, CreateNPC) {
    auto npc = Factory::createNPC("SlaveTrader", "Trader1", 100, 200);
    ASSERT_NE(npc, nullptr);
    EXPECT_EQ(npc->getType(), "SlaveTrader");
    EXPECT_EQ(npc->getName(), "Trader1");
    EXPECT_EQ(npc->getX(), 100);
    EXPECT_EQ(npc->getY(), 200);
}

/*
TEST(FactoryTest, LoadNPCsFromFile) {
    std::vector<std::unique_ptr<NPC>> npcs = Factory::loadNPCsFromFile("test_npcs.txt");
    ASSERT_EQ(npcs.size(), 2);
    EXPECT_EQ(npcs[0]->getType(), "SlaveTrader");
    EXPECT_EQ(npcs[0]->getName(), "Trader1");
    EXPECT_EQ(npcs[0]->getX(), 100);
    EXPECT_EQ(npcs[0]->getY(), 200);
    EXPECT_EQ(npcs[1]->getType(), "Squirrel");
    EXPECT_EQ(npcs[1]->getName(), "Squirrel1");
    EXPECT_EQ(npcs[1]->getX(), 50);
    EXPECT_EQ(npcs[1]->getY(), 150);
}
*/

// CombatVisitor Test
TEST(CombatVisitorTest, HandleCombat) {
    std::vector<std::unique_ptr<NPC>> npcs;
    npcs.push_back(Factory::createNPC("SlaveTrader", "Trader1", 100, 200));
    npcs.push_back(Factory::createNPC("Squirrel", "Squirrel1", 105, 205));

    CombatVisitor visitor(10, npcs);
    visitor.handleCombat(*npcs[0], *npcs[1]);

    ASSERT_EQ(visitor.getToKill().size(), 1);
    EXPECT_EQ(*visitor.getToKill().begin(), npcs[1].get());
}