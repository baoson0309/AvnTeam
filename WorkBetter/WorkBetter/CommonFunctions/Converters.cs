using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace WorkBetter.CommonFunctions
{
    namespace Converters
    {
        public class NullableDatetimeToStringConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                if (targetType != typeof(string)) return DependencyProperty.UnsetValue;
                if (value.GetType() != typeof(Nullable<DateTime>)) return "";
                if (value == null) return "";
                DateTime d = (DateTime)value;
                return d.ToString("dd/MM/yyyy");
            }
            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }

        }
    }
}
