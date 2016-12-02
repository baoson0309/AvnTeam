using System;
using System.Collections.Generic;
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
    /// Interaction logic for NhanVienView.xaml
    /// </summary>
    public partial class NhanVienView : UserControl
    {
        public NhanVienView()
        {
            InitializeComponent();
        }

        private void ThemNhanVienButton_Click(object sender, RoutedEventArgs e)
        {
            ThemNhanVienDialog Dialog = new Staff.ThemNhanVienDialog();
            Panel.SetZIndex(Dialog, 999);
            Grid.SetRowSpan(Dialog, 2);
            this.RightPanelRoot.Children.Add(Dialog);
            Dialog.DialogCollapsed += (ss, ee) =>
            {
                Dialog = null;
                GC.Collect();
            };
        }
    }
}
