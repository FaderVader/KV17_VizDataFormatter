using DataFormatter.Models;
using DataFormatter.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace DataFormatter.Persist
{
    public class ReadFile
    {
        public void LoadData(ObservableCollection<PlaceData> listOfPlaces) 
        {
            string pathData = Properties.Settings.Default.Path + Properties.Settings.Default.DataFileName; 

            string[] lines = System.IO.File.ReadAllLines(pathData, UTF8Encoding.UTF8); //  , UTF8Encoding.UTF7         
            PositionSet positionSet;

            foreach (string line in lines)
            {
                PlaceData placeData = new PlaceData();
                string[] data = line.Split('|');

                placeData.PlaceIndex = Int32.Parse(data[0]);
                placeData.PlaceId = Int32.Parse(data[1]);
                placeData.PlaceName = data[2];

                for (int i = 3; i < data.GetUpperBound(0); i = i + 2)
                {
                    positionSet = new PositionSet(data[i].ConvertStringToVertex(), data[i + 1].ConvertStringToVertex());

                    placeData.PositionList.Add(positionSet);
                }
                listOfPlaces.Add(placeData);
            }
        }

        public static ObservableCollection<PlaceData> ImportData()
        {
            ObservableCollection<PlaceData> listOfData = new ObservableCollection<PlaceData>();
            PositionSet positionSet;
            string process;
            int startIndex;

            try
            {

                string pathData = Properties.Settings.Default.Path + Properties.Settings.Default.ImportFileName;
                string[] lines = System.IO.File.ReadAllLines(pathData, UTF8Encoding.UTF7);

                foreach (string line in lines)
                {
                    PlaceData place = new PlaceData();
                    process = line;
                    startIndex = line.IndexOf("(") ;

                    if (startIndex > 0)
                    {
                        process = process.Substring(startIndex + 2);
                    }
                    else
                    {
                        process = process.Substring(1);
                    } 

                    // check if line contain data formatted as expected
                    int indexPosition = process.IndexOf("\'");
                    if (indexPosition > 0)
                    {
                        // parse index at end of line
                        int index;
                        Int32.TryParse(process.Substring(indexPosition + 1), out index);
                        place.PlaceIndex = index;

                        // remove trailing 'x [index]
                        process = process.Substring(0, indexPosition - 1);

                        // remove trailing ")
                        indexPosition = process.IndexOf("\")");
                        process = process.Substring(0, indexPosition);


                        // data ready - parse to object
                        string[] data = process.Split('|');
                        place.PlaceId = Int32.Parse(data[0]);
                        place.PlaceName = data[1];

                        for (int i = 2; i < data.GetUpperBound(0); i = i + 2)
                        {
                            positionSet = new PositionSet(data[i].ConvertStringToVertex(), data[i + 1].ConvertStringToVertex());
                            place.PositionList.Add(positionSet);
                        }
                    }
                    if (indexPosition > 0)  // only add to collection if data is meaningfull
                    {
                        listOfData.Add(place);
                    }
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("Error while importing data: " + e.Message);
            }

            return listOfData;
        }
    }
}
