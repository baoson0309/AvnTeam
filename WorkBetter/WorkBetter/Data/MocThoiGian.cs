//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WorkBetter.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class MocThoiGian
    {
        public int Id { get; set; }
        public string Ten { get; set; }
        public string MoTa { get; set; }
        public System.DateTime NgayDenHan { get; set; }
        public int NguoiTao { get; set; }
        public System.DateTime ThoiGianTao { get; set; }
        public int NguoiChiuTrachNhiem { get; set; }
        public int DuAnId { get; set; }
        public string NhacNho { get; set; }
        public string ThongBao { get; set; }
    
        public virtual DuAn DuAn { get; set; }
        public virtual NhanVien NhanVien { get; set; }
        public virtual NhanVien NhanVien1 { get; set; }
    }
}
