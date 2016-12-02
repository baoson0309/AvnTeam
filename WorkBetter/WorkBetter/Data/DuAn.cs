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
    
    public partial class DuAn
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DuAn()
        {
            this.ChiPhiDuAns = new HashSet<ChiPhiDuAn>();
            this.LienKetLists = new HashSet<LienKetList>();
            this.MocThoiGians = new HashSet<MocThoiGian>();
            this.Reminders = new HashSet<Reminder>();
            this.RuiRoes = new HashSet<RuiRo>();
            this.TaskLists = new HashSet<TaskList>();
            this.HoaDons = new HashSet<HoaDon>();
            this.ThanhToanHoaDons = new HashSet<ThanhToanHoaDon>();
        }
    
        public int Id { get; set; }
        public string MaDuAn { get; set; }
        public string TenDuAn { get; set; }
        public int HopDongId { get; set; }
        public int DanhMucDuAnId { get; set; }
        public System.DateTime ThoiGianTao { get; set; }
        public int NguoiTao { get; set; }
        public string NhanVienList { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiPhiDuAn> ChiPhiDuAns { get; set; }
        public virtual DanhMucDuAn DanhMucDuAn { get; set; }
        public virtual NhanVien NhanVien { get; set; }
        public virtual HopDong HopDong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LienKetList> LienKetLists { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MocThoiGian> MocThoiGians { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Reminder> Reminders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RuiRo> RuiRoes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TaskList> TaskLists { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDon> HoaDons { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThanhToanHoaDon> ThanhToanHoaDons { get; set; }
    }
}
