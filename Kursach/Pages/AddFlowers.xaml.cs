using Kursach.Classes;
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

namespace Kursach.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddFlowers.xaml
    /// </summary>
    public partial class AddFlowers : Page
    {
        private Flowers flowers = new Flowers();
        public AddFlowers(Flowers flow)
        {
            InitializeComponent();
            if (flow != null) flowers = flow;
            CmbCategory.ItemsSource = ChepotievEntities.GetContext().Category.ToList();
            CmbCategory.SelectedValuePath = "IDCategory";
            CmbCategory.DisplayMemberPath = "Categoryes";

            DataContext = flowers;
        }
        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (flowers.IDFlowers == 0)
                ChepotievEntities.GetContext().
                    Flowers.Add(flowers);
            try
            {
                ChepotievEntities.GetContext().SaveChanges();
                MessageBox.Show("Изменения успешно сохранены");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.GoBack();
        }
    }
}
