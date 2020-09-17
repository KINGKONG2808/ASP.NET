<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="Output.aspx" method="post">
    <div>
    <h1>Thông tin sinh viên</h1>
        Họ tên <input type="text" name="ht" /><br />
        <br />
        Giới tính <input type="radio" name="gt" value="Nam" />Nam
       <input type="radio" name="gt" value="Nu" />Nu 
        <br />
        <br />
       Quê quán  
        <select name="que">   <%--HTML controls--%>
            <option>Hà Nội</option>
            <option>Hải phòng</option>
            <option>Hà nam</option>
            <option>Quảng ninh</option>
        </select>
        <br />
        <br />
        Chọn môn học<br />
 <input type="checkbox" name="mh" value="Lập trình hướng đối tượng" /> Lập trình hướng đối tượng <br />
       <input type="checkbox" name="mh" value="Lập trình Windows" /> Lập trình Windows<br />
       <input type="checkbox" name="mh" value="Hệ quản trị cơ sở dữ liệu" /> Hệ quản trị cơ sở dữ liệu<br />
        <br />
        <br />
        <input type="submit" value="Đồng ý" />
        <input type="reset" value="Bỏ qua" />




       
    </div>
    </form>
</body>
</html>
