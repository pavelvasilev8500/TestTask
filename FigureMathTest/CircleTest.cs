using FigureMath.Helper;
using FigureMath.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace FigureMathTest
{
    [TestClass]
    public class CircleTest
    {
        private FigureModel _cirvle = new FigureModel()
        {
            R = 5
        };

        [TestMethod]
        public void CircleSquare()
        {
            Assert.AreEqual(78.5, Circle.Square(_cirvle.R));
        }
    }
}
