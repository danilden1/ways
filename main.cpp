#include <iostream>
#include <math.h>
#include <string.h>
using namespace std;

struct st
{
    int points = 5;//количество точек
    double gps [5][2] = {0.0};// координаты gps широта сев., долгота вост.
    double distance[5][5] = {0.0};// матрица смежности для графа расстояний между точками
    int route [6] = {0};// последовательность посещений точек. элементы 0 и 5 всегда равны 0,
                        // то есть изначальному положению дрона.
    double routeLength = 0.0;
    st(double g [5][2])// конструктор структуры
    {
        for(int i = 0; i < 5; i++)
        {
            gps[i][0] = g[i][0];
            gps[i][1] = g[i][1];
        }
    }


};

void showMap (st task);//вывод значений точек gps
void showDistance (st task);//вывод матрицы смежности
void showRoute (st task);// вывод последовательности посещения и длины маршрута
st makeDistance (st task);//расчет дистанций
st makeRoute (st task);//поиск оптимального маршрута
void test(st test, int routeTest [6]);

int main()
{
    //тестовые точки
    double g [5][2] = {{1, 1},
                {2, 7},
                {5, 11},
                {6, 7},
                {7, 4}};
    int routeTest [6] = {0, 1, 2, 3, 4, 0};
    st task(g);//создание объекта task типа st
    task = makeRoute(task);
    test(task, routeTest);

    return 0;
}

void showMap (st task)
{
    cout << "map:" << endl;
    for (int i = 0; i < task.points; i++)
    {
        cout <<  i + 1 << ") " << fixed << task.gps[i][0] << " " << fixed << task.gps[i][1] << endl;

    }
}

void showDistance (st task)
{
    cout << "distance:" << endl;
    for (int i = 0; i < task.points; i++)
    {
        for(int j = 0; j < task.points; j++)
            cout << task.distance[i][j] << " ";
        cout << endl;

    }
}
st makeDistance (st task)
{
    //TODO: пересчитать дистанции
    for(int i = 0; i < task.points; i++)
    {
        for(int j = 0; j < task.points; j++)
        {
            if (i == j)
                task.distance[i][j] = 0.0;
            task.distance[i][j] = sqrt(pow(task.gps[i][0] - task.gps[j][0], 2) + pow(task.gps[i][1] - task.gps[j][1], 2));
        }
    }
    return task;
}
st makeRoute (st task)
{
    //TODO: написать алгоритм https://habr.com/ru/post/332208/
    task = makeDistance(task);
    task.route[0] = 0;
    task.route[1] = 1;
    task.route[2] = 2;
    task.route[3] = 3;
    task.route[4] = 4;
    task.route[5] = 0;
    return task;
}
void test(st test, int routeTest [6])
{
    int count1 = 0;
    int count2 = 0;
    int routeTest1 [6] = {0};
    for(int i = 0; i < 6; i++)
        if(routeTest [i] != test.route[i])
            count1++;
    for(int i = 0; i < 6; i++)
        if(routeTest [5 - i] != test.route[i])
            count2++;
    if(count1 == 0 or count2 == 0)
        cout << "Test 1 done" << endl;
    else
    {
        cout << "Test 1 failed!" << endl;
        cout << "Your answer: ";
        for(int i = 0; i < 6; i++)
            cout << test.route[i] << " ";
        cout << endl;
        cout << "Right answer: ";
        for(int i = 0; i < 6; i++)
            cout << routeTest[i] << " ";
        cout << endl;
    }
}


