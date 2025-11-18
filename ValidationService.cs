using System.Text.RegularExpressions;

namespace ConsoleApp1
{
    public class ValidationService
    {
        public bool ValidateEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
                return false;
            
            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, pattern);
        }
    }
}