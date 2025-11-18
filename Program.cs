using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main()
        {
            Console.WriteLine("Лабораторная работа №1 - Работа с Git");
            Calculator calculator = new Calculator();

            double result = calculator.Add(5, 3);
            Console.WriteLine($"5 + 3 = {result}");
        }
    }
}