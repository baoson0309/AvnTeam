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
    
    public partial class HopDong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HopDong()
        {
            this.DuAns = new HashSet<DuAn>();
            this.ThanhLyHopDongs = new HashSet<ThanhLyHopDong>();
            this.PhuLucHopDongs = new HashSet<PhuLucHopDong>();
        }
    
        public int Id { get; set; }
        public string SoHopDong { get; set; }
        public System.DateTime NgayKy { get; set; }
        public int NguoiKyHopDong { get; set; }
        public string NoiDung { get; set; }
        public string GhiChu { get; set; }
        public int KhachHangId { get; set; }
        public double GiaTriHopDong { get; set; }
        public int DanhMucHopDongId { get; set; }
    
        public virtual DanhMucHopDong DanhMucHopDong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuAn> DuAns { get; set; }
        public virtual KhachHang KhachHang { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThanhLyHopDong> ThanhLyHopDongs { get; set; }
        public virtual NhanVien NhanVien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhuLucHopDong> PhuLucHopDongs { get; set; }
    }
}
