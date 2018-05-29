using DataFormatter.Models;
using DataFormatter.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFormatter.Persist
{
    public class WriteFile
    {
        string pathData = Properties.Settings.Default.Path + Properties.Settings.Default.DataFileName; //@"C:\GoogleDrive\VS_PROJECTS\WORK\DataFormatter\OutData.txt" ; // @"C:\TEMP\DemoData.txt" @"F:\GoogleDrive\VS_PROJECTS\WORK\DataFormatter\DemoData.txt" //TODO: set path via settings
        string pathExportToViz = Properties.Settings.Default.Path + Properties.Settings.Default.ExportFileName; //@"C:\GoogleDrive\VS_PROJECTS\WORK\DataFormatter\Export.txt";
        string arrayName = Properties.Settings.Default.ArrayName;

        public void SaveData(ObservableCollection<PlaceData> listOfPlaces)
        {
            StringBuilder stringBuilder = new StringBuilder();

            foreach (PlaceData place in listOfPlaces)
            {
                stringBuilder.Append(place.PlaceIndex); 
                stringBuilder.Append("|");
                stringBuilder.Append(place.PlaceId);
                stringBuilder.Append("|");
                stringBuilder.Append(place.PlaceName);

                foreach (PositionSet set in place.PositionList)
                {
                    stringBuilder.Append("|");
                    stringBuilder.Append(set.PositionStart.ConvertVertexToString());
                    stringBuilder.Append("|");
                    stringBuilder.Append(set.PositionEnd.ConvertVertexToString());
                }
                stringBuilder.Append(Environment.NewLine);
            }
            using (StreamWriter outFile = new StreamWriter(pathData))
            {
                outFile.Write(stringBuilder.ToString());
            } 
            
        }

        public void ExportToViz(ObservableCollection<PlaceData> listOfPlaces)
        {
            // dataArray.Push("165|Albertslund|-72.0, 41.0, 150.0|-81.0, 48.0, 195.0|-98.0, 59.0, 122.0|-98.0, 59.0, 122.0") '0

            StringBuilder stringBuilder = new StringBuilder();

            foreach (PlaceData place in listOfPlaces)
            {
                stringBuilder.Append(arrayName + ".Push(\"");   // Append("\"DataArray.Push(\"");
               
                stringBuilder.Append(place.PlaceId);
                stringBuilder.Append("|");
                stringBuilder.Append(place.PlaceName);
                //stringBuilder.Append("|");

                foreach (PositionSet set in place.PositionList)
                {
                    stringBuilder.Append("|");
                    stringBuilder.Append(set.PositionStart.ConvertVertexToString());
                    stringBuilder.Append("|");
                    stringBuilder.Append(set.PositionEnd.ConvertVertexToString());                    
                }
                stringBuilder.Append(@""") '");    // .Append("\"\\)");      .Append(@"\) '");                                                   
                stringBuilder.Append(place.PlaceIndex);
                stringBuilder.Append(Environment.NewLine);
            }
            using (StreamWriter outFile = new StreamWriter(pathExportToViz))
            {
                outFile.Write(stringBuilder.ToString());
            }
        }
    }
}
