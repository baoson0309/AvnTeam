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
    
    public partial class LienKet
    {
        public int Id { get; set; }
        public int LienKetListId { get; set; }
        public string Link { get; set; }
        public string Ten { get; set; }
        public string GhiChu { get; set; }
        public int NguoiChiaSe { get; set; }
        public System.DateTime ThoiGianChiaSe { get; set; }
    
        public virtual LienKetList LienKetList { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
