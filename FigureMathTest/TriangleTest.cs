using FigureMath.Helper;
using FigureMath.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace FigureMathTest
{
    [TestClass]
    public class TriangleTest
    {
        private FigureModel _fullSideTraiangle = new FigureModel()
        {
            A = 5,
            B = 5,
            C = 5
        };

        private FigureModel _triangleHeight = new FigureModel()
        {
            A = 16,
            H = 27
        };

        private FigureModel _triangeleRightAngel = new FigureModel()
        {
            A = 3,
            B = 4,
            C = 5,
        };

        private FigureModel _unknownTriange = new FigureModel()
        {
            A = 7,
            B = 12,
        };

        [TestMethod]
        public void FullSideSquare()
        {
            Assert.AreEqual(10.825, Triangle.Square(_fullSideTraiangle.A, _fullSideTraiangle.B, _fullSideTraiangle.C));
        }

        [TestMethod]
        public void HeightSideSqare()
        {
            Assert.AreEqual(216, Triangle.Square(_triangleHeight.A, _triangleHeight.H));
        }

        [TestMethod]
        public void FullRightTriange()
        {
            Assert.AreEqual(10.825, Triangle.Square(_fullSideTraiangle.A));
        }

        [TestMethod]
        public void IsRightTriange()
        {
            Assert.AreEqual(true, Triangle.IsRightAngel(_triangeleRightAngel.A, _triangeleRightAngel.B, _triangeleRightAngel.C));
        }

        [TestMethod]
        public void Sq()
        {
            Assert.AreEqual(42, Triangle.RightAngelSquare(_unknownTriange.A, _unknownTriange.B));
        }
    }
}
