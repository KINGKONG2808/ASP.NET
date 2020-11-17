using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using ontaptest2.model;

namespace ontaptest2.util
{
    public class datautil
    {
        SqlConnection connection;

        public datautil()
        {
            string sqlConnect = @"Data Source=KINGKONG;Initial Catalog=sinhviendb2;Integrated Security=True";
            connection = new SqlConnection(sqlConnect);
        }

        public List<sinhvien> dsSinhVien()
        {
            List<sinhvien> sinhviens = new List<sinhvien>();
            string sql = "select * from sinhvien";
            connection.Open();
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                sinhvien sv = new sinhvien();
                sv.MaSv = (int)rd["masv"];
                sv.HoTen = (string)rd["hoten"];
                sv.DiaChi = (string)rd["diachi"];
                sv.DienThoai = (string)rd["dienthoai"];
                sv.MaLop = (int)rd["malop"];
                sinhviens.Add(sv);
            }
            connection.Close();
            return sinhviens;
        }
        
        public void themSv(sinhvien sv)
        {
            connection.Open();
            string sql = "insert into sinhvien(hoten, diachi, dienthoai, malop) values(@hoten, @diachi, @dienthoai, @malop)";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("hoten", sv.HoTen);
            cmd.Parameters.AddWithValue("diachi", sv.DiaChi);
            cmd.Parameters.AddWithValue("dienthoai", sv.DienThoai);
            cmd.Parameters.AddWithValue("malop", sv.MaLop);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public List<lophoc> dsLopHoc()
        {
            List<lophoc> lophocs = new List<lophoc>();
            string sql = "select * from lophoc";
            connection.Open();
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lophoc lh = new lophoc();
                lh.Malop = (int)rd["malop"];
                lh.Tenlop = (string)rd["tenlop"];
                lh.Giaovien = (string)rd["giangvien"];
                lophocs.Add(lh);
            }
            connection.Close();
            return lophocs;
        }

        public void xoaSv(int masv)
        {
            connection.Open();
            string sql = "delete from sinhvien where masv=@masv";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("masv", masv);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public sinhvien getSinhVien(int masv)
        {
            string sql = "select * from sinhvien where masv=@masv";
            connection.Open();
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("masv", masv);
            SqlDataReader rd = cmd.ExecuteReader();
            sinhvien sv = new sinhvien();
            if (rd.Read())
            {
                sv.MaSv = (int)rd["masv"];
                sv.HoTen = (string)rd["hoten"];
                sv.DiaChi = (string)rd["diachi"];
                sv.DienThoai = (string)rd["dienthoai"];
                sv.MaLop = (int)rd["malop"];
            }
            connection.Close();
            return sv;
        }

        public void suaSv(sinhvien sv)
        {
            connection.Open();
            string sql = "update sinhvien set hoten=@hoten, diachi=@diachi, dienthoai=@dienthoai, malop=@malop where masv=@masv";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("hoten", sv.HoTen);
            cmd.Parameters.AddWithValue("diachi", sv.DiaChi);
            cmd.Parameters.AddWithValue("dienthoai", sv.DienThoai);
            cmd.Parameters.AddWithValue("malop", sv.MaLop);
            cmd.Parameters.AddWithValue("masv", sv.MaSv);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
    }
}