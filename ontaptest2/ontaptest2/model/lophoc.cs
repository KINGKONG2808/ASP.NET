using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ontaptest2.model
{
    public class lophoc
    {
        private int malop;
        private string tenlop;
        private string giaovien;

        public lophoc()
        {
        }

        public lophoc(int malop, string tenlop, string giaovien)
        {
            this.malop = malop;
            this.tenlop = tenlop;
            this.giaovien = giaovien;
        }

        public int Malop { get => malop; set => malop = value; }
        public string Tenlop { get => tenlop; set => tenlop = value; }
        public string Giaovien { get => giaovien; set => giaovien = value; }
    }
}