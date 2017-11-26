using DataFormatter.ViewModels;
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

namespace DataFormatter
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MainViewModel model;
        public MainWindow()
        {
            InitializeComponent();

            model = (MainViewModel)base.DataContext;
        }

        private void btnSaveList_Click(object sender, RoutedEventArgs e)
        {
            model.SaveList();
        }

        private void btnNew_Click(object sender, RoutedEventArgs e)
        {
            model.AddPlace();
        }

        private void btnAddPositionSet_Click(object sender, RoutedEventArgs e)
        {
            model.AddPositionSetToList();
        }

        private void btnImportData_Click(object sender, RoutedEventArgs e)
        {
            model.ImportData();
        }
    }
}
