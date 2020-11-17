using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ontaptest2.model
{
    public class sinhvien
    {
        private int maSv;
        private string hoTen;
        private string diaChi;
        private string dienThoai;
        private int maLop;

        public sinhvien()
        {
        }

        public sinhvien(int maSv, string hoTen, string diaChi, string dienThoai, int maLop)
        {
            this.maSv = maSv;
            this.hoTen = hoTen;
            this.diaChi = diaChi;
            this.dienThoai = dienThoai;
            this.maLop = maLop;
        }

        public int MaSv { get => maSv; set => maSv = value; }
        public string HoTen { get => hoTen; set => hoTen = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string DienThoai { get => dienThoai; set => dienThoai = value; }
        public int MaLop { get => maLop; set => maLop = value; }
    }
}