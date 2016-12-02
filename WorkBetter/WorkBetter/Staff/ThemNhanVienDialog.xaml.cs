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
    /// Interaction logic for ThemNhanVienDialog.xaml
    /// </summary>
    public partial class ThemNhanVienDialog : UserControl
    {
        public delegate void VisibilityChanged(object sender, EventArgs e);
        public event VisibilityChanged DialogCollapsed;

        public ThemNhanVienDialog()
        {
            InitializeComponent();
            ToggleDefaultAndCancelButton();
            this.IsVisibleChanged += ThemNhanVienDialog_IsVisibleChanged;
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
            e.CanExecute = (TenNhanVienTextBox.Text.Trim() != "");
        }
        private void ThemNhanVienCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {

        }

    }
}
