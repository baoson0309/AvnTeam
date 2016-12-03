using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WorkBetter.Staff
{
    /// <summary>
    /// Interaction logic for ThemNhanVienDialog.xaml
    /// </summary>
    public partial class ThemNhanVienDialog : UserControl
    {
        public delegate void VisibilityChanged(object sender, EventArgs e);
        public event VisibilityChanged DialogCollapsed;



        public string PhanQuyen
        {
            get { return (string)GetValue(PhanQuyenProperty); }
            set { SetValue(PhanQuyenProperty, value); }
        }

        // Using a DependencyProperty as the backing store for PhanQuyen.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty PhanQuyenProperty =
            DependencyProperty.Register("PhanQuyen", typeof(string), typeof(ThemNhanVienDialog), new PropertyMetadata("--34----"));




        public ThemNhanVienDialog()
        {
            InitializeComponent();
            ToggleDefaultAndCancelButton();
            this.IsVisibleChanged += ThemNhanVienDialog_IsVisibleChanged;
            this.PhanQuyen = "12345678";
        }

        /// <summary>
        /// Dieu khien default va cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ThemNhanVienDialog_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            ToggleDefaultAndCancelButton();
        }


        private void ToggleDefaultAndCancelButton()
        {
            if (this.Visibility == Visibility.Visible)
            {
                this.ThemNhanVienButton.IsDefault = true;
                this.ThemNhanVienCancelButton.IsCancel = true;
            }
            else
            {
                this.ThemNhanVienButton.IsDefault = false;
                this.ThemNhanVienCancelButton.IsCancel = true;
                this.IsVisibleChanged -= ThemNhanVienDialog_IsVisibleChanged;
                DialogCollapsed?.Invoke(this, EventArgs.Empty);
            }
        }

        /// <summary>
        /// Close dialog
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ThemNhanVienCancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Collapsed;
        }



        public static RoutedUICommand ThemNhanVienCommand
                    = new RoutedUICommand("Command Description",
                                          "ThemNhanVienCommand",
                                          typeof(ThemNhanVienDialog));

        private void ThemNhanVienCommand_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = (TenNhanVienTextBox.Text.Trim() != "")
                && EmailTextBox.Text.Trim().Contains("@")
                && SkypeTextBox.Text.Trim() != ""
                && SoDienThoaiTextBox.Text.Trim() != ""
                && TenDangNhapTextBox.Text.Trim().Length >= 6;
        }

        private void ThemNhanVienCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            Data.NhanVien Nv = new Data.NhanVien();
            Nv.HoVaTen = TenNhanVienTextBox.Text.Trim();
            Nv.NgaySinh = NgaySinhDatePicker.SelectedDate;
            Nv.TenDangNhap = TenDangNhapTextBox.Text.Trim();
            Nv.SoDienThoai = SoDienThoaiTextBox.Text.Trim();
            Nv.Skype = SkypeTextBox.Text.Trim();
            Nv.Email = EmailTextBox.Text.Trim();
            Nv.PhanQuyen = "--------";
            Nv.ChucVu = " ";

            string pass = CommonFunctions.Generator.GetRandomString(8);
            Nv.Password = CommonFunctions.Generator.CalculateMD5Hash(pass);

            using (Data.AvnDataEntities entity = new Data.AvnDataEntities())
            {
                try
                {
                    var db = (from Data.NhanVien nv in entity.NhanViens where nv.TenDangNhap == Nv.TenDangNhap select nv).ToList();
                    if (db.Count > 0)
                    {
                        this.MessageTextBox.Text = "Tên đăng nhập đã được sử dụng.";
                        return;
                    }
                    db = (from Data.NhanVien nv in entity.NhanViens where nv.Email == Nv.Email select nv).ToList();
                    if (db.Count > 0)
                    {
                        this.MessageTextBox.Text = "Email đã được sử dụng.";
                        return;
                    }


                    string subject = "Thông tin đăng nhập phần mềm AVN TEAMWORK";
                    string body = string.Format("Xin chào, {0}\nĐây là thông tin đăng nhập phần mềm AVN TEAMWORK của anh/chị:\nTên Đăng nhập: {1} \nMật khẩu: {2}\nĐây là hòm thư tự động. Vui lòng không trả lời thư này. \nMọi thắc mắc xin liên hệ Sơn - 0905926683 - trinhhuubaoson@gmail.com ", Nv.HoVaTen, Nv.TenDangNhap, pass);
                    bool b = CommonFunctions.MrPostMan.SendMail(subject, body, Nv.Email);

                    if (!b)
                    {
                        System.Windows.MessageBox.Show(string.Format("Không thể gửi mật khẩu đến địa chỉ {0}. \nHãy kiểm tra lại.", Nv.Email));
                        return;
                    }

                    entity.NhanViens.Add(Nv);
                    int i = entity.SaveChanges();
                    if (i == 1) System.Windows.MessageBox.Show("Thêm nhân viên thành công. \nThông tin đăng nhập đã được gửi về email đăng ký.");
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message);
                }
            }
        }
    }

    public class PhanQuyenToBoolConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (targetType != typeof(bool)) return DependencyProperty.UnsetValue;
            try
            {
                if (value.GetType() != typeof(string)) return false;
                string pq = value.ToString();
                if (pq.Length != 8) return false;
                int i = (int)parameter;
                return (pq[i - 1] == i);
            }
            catch (Exception)
            {
                return false;
            }  
        }   

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
