using DataFormatter.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace DataFormatter.Models
{
    public class PlaceData : ObservableObject
    {
        private int _placeIndex;
        private int _placeId;
        private string _placeName;
        private List<PositionSet> _positionList = new List<PositionSet>();

        public int PlaceIndex
        {
            get { return _placeIndex; }
            set { _placeIndex = value; }
        }

        public int PlaceId
        {
            get { return _placeId; }
            set { OnPropertyChanged(ref _placeId, value); }
        }

        public string PlaceName
        {
            get { return _placeName; }
            set { OnPropertyChanged(ref _placeName, value); }
        }

        public string DisplayEntry { get { return PlaceIndex + " - " + PlaceName + " - " + PlaceId; } } // PlaceId   PlaceName

        public List<PositionSet> PositionList
        {
            get { return _positionList; }
            set { OnPropertyChanged(ref _positionList, value); }
        }

        public static void AddPlace(ObservableCollection<PlaceData> listOfPlaces)
        {
            PlaceData newPlace;
            PositionSet newPositionSet;
            int numberOfActivePositionSets = Properties.Settings.Default.NumberOfPositionSets;

            int newId = 0;

            if (listOfPlaces.Count > 0)
            {
                newId = listOfPlaces.OrderByDescending(x => x.PlaceIndex).First().PlaceIndex + 1;
            }

            newPlace = new PlaceData { PlaceIndex = newId };

            for (int i = 0; i < numberOfActivePositionSets; i++)
            {
                newPositionSet = new PositionSet(new Vertex(), new Vertex());                
                newPlace.PositionList.Add(newPositionSet); 
            }

            listOfPlaces.Add(newPlace);
        }

        public static void AddPositionSetToList(ObservableCollection<PlaceData> listOfPlaces)
        {
            var checkCount = listOfPlaces.First();
            if (checkCount.PositionList.Count >= Properties.Settings.Default.NumberOfPositionSets)
            {
                MessageBox.Show("Operation will exceed maximum number number of position sets!", "Operation Stopped!", MessageBoxButton.OK, MessageBoxImage.Hand);
                return;
            }

            foreach (PlaceData place in listOfPlaces)
            {
                PositionSet newPositionSet = new PositionSet(new Vertex(), new Vertex());
                place.PositionList.Add(newPositionSet);
            }
        }
    }

    public class Vertex : ObservableObject
    {
        private double _posX;
        private double _posY;
        private double _posZ;

        public double PosX
        {
            get { return _posX; }
            set { OnPropertyChanged(ref _posX, value); }
        }

        public double PosY
        {
            get { return _posY; }
            set { OnPropertyChanged(ref _posY, value); }
        }

        public double PosZ
        {
            get { return _posZ; }
            set { OnPropertyChanged(ref _posZ, value); }
        }

        public Vertex(double x, double y, double z)
        {
            this.PosX = x;
            this.PosY = y;
            this.PosZ = z;
        } 
        
        public Vertex()
        {
            // empty, parameterless constructor
        }       
    }

    public class PositionSet : ObservableObject
    {
        private Vertex _positionStart;
        private Vertex _positionEnd;

        public Vertex PositionStart
        {
            get { return _positionStart; }
            set { OnPropertyChanged(ref _positionStart, value); }
        }
        
        public Vertex PositionEnd
        {
            get { return _positionEnd; }
            set { OnPropertyChanged(ref _positionEnd, value); }
        }

        public PositionSet(Vertex positionStart, Vertex positionEnd)
        {
            this.PositionStart = positionStart;
            this.PositionEnd = positionEnd;
        }

        //public PositionSet()
        //{
        //    // empty constructor
        //}
    }
}
