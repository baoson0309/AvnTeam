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

namespace WorkBetter
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();
            this.ShowLogin();
        }

        /// <summary>
        /// Show a login dialog
        /// </summary>
        private void ShowLogin()
        {
            Login.LoginView lg = new Login.LoginView();
            Panel.SetZIndex(lg, 999);
            Grid.SetRowSpan(lg, 2);
            this.LayoutRoot.Children.Add(lg);
        }
    }
}
