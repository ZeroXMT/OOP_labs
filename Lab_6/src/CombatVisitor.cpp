#include "../include/CombatVisitor.hpp"
#include "../include/NPC.hpp"
#include <cmath>
#include <iostream>

CombatVisitor::CombatVisitor(int combatRange, std::vector<std::unique_ptr<NPC>>& npcList)
    : combatRange(combatRange), npcList(npcList) {}

void CombatVisitor::visit(NPC& npc) {
    for (auto& other : npcList) {
        if (&npc == other.get() || toKill.find(other.get()) != toKill.end()) continue; // Skip self and NPCs marked for killing
        handleCombat(npc, *other);
    }
}

void CombatVisitor::handleCombat(NPC& attacker, NPC& defender) {
    if (&attacker == &defender) return; // Skip self

    if (canAttack(attacker, defender)) {
        if (shouldKill(attacker, defender)) {
            std::cout << attacker.getName() << " killed " << defender.getName() << std::endl;
            toKill.insert(&defender);
        }
    }
}

bool CombatVisitor::canAttack(const NPC& attacker, const NPC& defender) {
    int dx = attacker.getX() - defender.getX();
    int dy = attacker.getY() - defender.getY();
    return (dx * dx + dy * dy) <= combatRange * combatRange;
}

bool CombatVisitor::shouldKill(const NPC& attacker, const NPC& defender) {
    std::string attackerType = attacker.getType();
    std::string defenderType = defender.getType();

    if (attackerType == "SlaveTrader" && defenderType == "Squirrel") {
        return true;
    } else if (attackerType == "WanderingKnight" && defenderType == "SlaveTrader") {
        return true;
    } else if (attackerType == "Squirrel" && defenderType == "Squirrel") {
        return true;
    }
    return false;
}