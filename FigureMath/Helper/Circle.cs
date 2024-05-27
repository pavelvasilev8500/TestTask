using System;

namespace FigureMath.Helper
{
    public static class Circle
    {
        public static double Square(double? radius)
        {
            return Math.Round(Math.PI * Math.Pow((double)radius, 2), 1);
        }
    }
}
