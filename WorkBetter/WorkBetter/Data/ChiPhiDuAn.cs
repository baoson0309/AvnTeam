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
    
    public partial class ChiPhiDuAn
    {
        public int Id { get; set; }
        public string MoTaChiPhi { get; set; }
        public Nullable<System.DateTime> NgayHoaDon { get; set; }
        public string SoHoaDon { get; set; }
        public string SoTienChuaThue { get; set; }
        public string ThueGTGT { get; set; }
        public string ThoiGianThanhToan { get; set; }
        public int NguoiThanhToan { get; set; }
        public string TinhTrang { get; set; }
        public string GhiChu { get; set; }
        public int DuAnId { get; set; }
    
        public virtual DuAn DuAn { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
