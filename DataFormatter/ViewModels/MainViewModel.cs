using DataFormatter.Models;
using DataFormatter.Persist;
using DataFormatter.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFormatter.ViewModels
{
    public class MainViewModel : ObservableObject
    {
        private ObservableCollection<PlaceData> _listOfPlaces = new ObservableCollection<PlaceData>();
        public ObservableCollection<PlaceData> ListOfPlaces
        {
            get { return _listOfPlaces; }
            set { OnPropertyChanged(ref _listOfPlaces, value); }
        }
        
        private List<string> _positionListForDisplay = new List<string>(); //the index of positions available in the list

        private int _theSelectedIndex;
        private bool _showSet1;
        private bool _showSet2;
        private bool _showSet3;
        private bool _showSet4;

        private PlaceData _activePlace;

        public List<string> PositionListForDisplay
        {
            get { return _positionListForDisplay; }
            set { OnPropertyChanged(ref _positionListForDisplay, value); }
        }

        public int TheSelectedIndex
        {
            get { return _theSelectedIndex; }
            set { OnPropertyChanged(ref _theSelectedIndex, value); SelectActiveSet(); }
        }

        public bool ShowSet1
        {
            get { return _showSet1; }
            set { OnPropertyChanged(ref _showSet1, value); }
        }

        public bool ShowSet2
        {
            get { return _showSet2; }
            set { OnPropertyChanged(ref _showSet2, value); }
        }

        public bool ShowSet3
        {
            get { return _showSet3; }
            set { OnPropertyChanged(ref _showSet3, value); }
        }

        public bool ShowSet4
        {
            get { return _showSet4; }
            set { OnPropertyChanged(ref _showSet4, value); }
        }

        public PlaceData ActivePlace
        {
            get { return _activePlace; }
            set { OnPropertyChanged(ref _activePlace, value); }
        }

        public MainViewModel()
        {          
            RefreshList();
            PopulateSelectPositionSet();
        }

        public void SelectActiveSet()
        {            
            ShowSet1 = false;
            ShowSet2 = false;
            ShowSet3 = false;
            ShowSet4 = false;

           switch (TheSelectedIndex)
            {
                case 0:
                    ShowSet1 = true;
                    break;

                case 1:
                    ShowSet2 = true;
                    break;

                case 2:
                    ShowSet3 = true;
                    break;

                case 3:
                    ShowSet4 = true;
                    break;
            }
        }       

        public void SaveList()
        {
            WriteFile writeFile = new WriteFile();
            writeFile.SaveData(ListOfPlaces);
            writeFile.ExportToViz(ListOfPlaces);
            RefreshList();
        }

        public void ImportData()
        {
            ListOfPlaces.Clear();
            ListOfPlaces = ReadFile.ImportData();            
        }

        public void AddPlace()
        {
            PlaceData.AddPlace(ListOfPlaces);
        }

        public void RefreshList()
        {
            ListOfPlaces.Clear();
            ReadFile readFile = new ReadFile();
            readFile.LoadData(ListOfPlaces);
        }

        public void PopulateSelectPositionSet()
        {
            int max = Properties.Settings.Default.NumberOfPositionSets;
            for (int i = 1; i <= max; i++)
            {
                PositionListForDisplay.Add(i + ". Kf Set");
            }
        }

        public void AddPositionSetToList()  // add a new new set of position-data to list of places
        {
            PlaceData.AddPositionSetToList(ListOfPlaces);
        }

    }
}

