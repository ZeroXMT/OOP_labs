#include <string>

bool is_afraid(const std::string& day, long long number)
{
    if (day == "Понедельник")
    {
        return number == 12;
    }
    if (day == "Вторник")
    {
        return number > 95;
    }
    if (day == "Среда")
    {
        return number == 34;
    }
    if (day == "Четверг")
    {
        return number == 0;
    }
    if (day == "Пятница")
    {
        return (number + 1) % 2;
    }
    if (day == "Суббота")
    {
        return number == 56;
    }
    if (day == "Воскресенье")
    {
        return abs(number) == 666;
    }
    return false;
}