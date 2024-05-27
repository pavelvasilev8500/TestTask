using System;

namespace FigureMath.Helper
{
    public static class Triangle
    {
        public static bool IsRightAngel(double? a, double? b, double? c)
        {
            if(Math.Pow((double)a, 2) + Math.Pow((double)b, 2) == Math.Pow((double)c, 2) ||
               Math.Pow((double)a, 2) + Math.Pow((double)c, 2) == Math.Pow((double)b, 2) ||
               Math.Pow((double)c, 2) + Math.Pow((double)b, 2) == Math.Pow((double)a, 2))
                return true;
            return false;
        }

        public static double Square(double? a)
        {
            return Math.Round(Math.Sqrt(3) / 4 * Math.Pow((double)a, 2), 3);
        }

        public static double Square(double? a, double? h)
        {
            return 0.5 *(double)a * (double)h;
        }

        public static double Square(double? a, double? b, double? c)
        {
            var p = ((double)a + (double)b + (double)c) / 2;
            return Math.Round(Math.Sqrt(p * (p - (double)a) * (p - (double)b) * (p - (double)c)), 3);
        }

        public static double RightAngelSquare(double? a, double? b)
        {
            return 0.5 * (double)a * (double)b;
        }

    }
}
