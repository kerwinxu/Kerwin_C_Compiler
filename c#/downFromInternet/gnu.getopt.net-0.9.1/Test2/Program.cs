using System;
using System.Collections.Generic;
using System.Text;
using Gnu.Getopt;

namespace Test2
{
    class Program
    {
        static void Main(string[] args)
        {
            Getopt g = new Getopt("testprog", args, "ab:c::d");
        }
    }
}
