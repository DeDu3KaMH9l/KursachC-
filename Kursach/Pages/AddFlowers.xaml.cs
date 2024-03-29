using Kursach.Classes;
using Microsoft.Win32;
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
using static System.Net.Mime.MediaTypeNames;

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
            
            CmbCategory.ItemsSource = ChepotievEntities.GetContext().Category.ToList();
            CmbCategory.SelectedValuePath = "IDCategory";
            CmbCategory.DisplayMemberPath = "Categoryes";

            if (flow != null)
                flowers = flow;
            DataContext = flowers;
        }
        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var dbContext = ChepotievEntities.GetContext();

                if (flowers.IDFlowers == 0)
                {
                    dbContext.Flowers.Add(flowers);
                }
                else
                {
                    var existingDelivery = dbContext.Flowers.Find(flowers.IDFlowers);
                    if (existingDelivery != null)
                    {
                        dbContext.Entry(existingDelivery).CurrentValues.SetValues(flowers);
                    }
                }

                dbContext.SaveChanges();
                MessageBox.Show("Изменения успешно сохранены");

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message, "Notification", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.GoBack();
        }
    }
}
