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

namespace WorkBetter.Login
{
    /// <summary>
    /// Interaction logic for LoginView.xaml
    /// </summary>
    public partial class LoginView : UserControl
    {
        public LoginView()
        {
            InitializeComponent();
            this.IsVisibleChanged += LoginView_IsVisibleChanged;
        }

        /// <summary>
        /// Xử lý hiển thị hộp thoại đăng nhập và khi tắt
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LoginView_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (this.Visibility == Visibility.Visible)
            {
                UsernameTextBox.Focus();
            } else
            {
                this.IsVisibleChanged -= LoginView_IsVisibleChanged;
                MainWindow m = App.Current.MainWindow as MainWindow;
                m.LayoutRoot.Children.Remove(this);
                GC.Collect();
                GC.Collect();
            }
        }


        /// <summary>
        /// Khi user thực hiện đăng nhập
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Collapsed;
        }
    }
}
