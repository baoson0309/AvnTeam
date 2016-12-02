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
    /// Interaction logic for NhanVienCard.xaml
    /// </summary>
    public partial class NhanVienCard : UserControl
    {


        public Data.NhanVien m_NhanVien
        {
            get { return (Data.NhanVien)GetValue(m_NhanVienProperty); }
            set { SetValue(m_NhanVienProperty, value); }
        }

        // Using a DependencyProperty as the backing store for m_NhanVien.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty m_NhanVienProperty =
            DependencyProperty.Register("m_NhanVien", typeof(Data.NhanVien), typeof(NhanVienCard));

        public NhanVienCard()
        {
            InitializeComponent();
        }
    }
}
