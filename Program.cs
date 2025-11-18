using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main()
        {
            Console.WriteLine("Лабораторная работа №1 - Работа с Git.");
            Calculator calculator = new Calculator();
            ValidationService validation = new ValidationService();

            double result = calculator.Add(5, 3);
            Console.WriteLine($"5 + 3 = {result}");

            bool isValid = validation.ValidateEmail("test@gmail.com");
            Console.WriteLine($"Email validation: text@gmail.com = {isValid}");
        }
    }
}