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
    
    public partial class PhuLucHopDong
    {
        public int Id { get; set; }
        public string SoPhuLucHopDong { get; set; }
        public int HopDongId { get; set; }
        public System.DateTime NgayKy { get; set; }
        public string NoiDung { get; set; }
        public string GhiChu { get; set; }
        public int NguoiKy { get; set; }
    
        public virtual HopDong HopDong { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
