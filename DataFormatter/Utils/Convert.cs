using DataFormatter.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFormatter.Utils
{
    public static class Convert
    {
        public static Vertex ConvertStringToVertex(this string input)
        {
            Vertex vertex;
            double posX, posY, posZ;

            string[] data = input.Split(',');

            string convertedX = data[0].Replace('.', ',');
            string convertedY = data[1].Replace('.', ',');
            string convertedZ = data[2].Replace('.', ',');

            posX = double.Parse(convertedX);
            posY = double.Parse(convertedY);
            posZ = double.Parse(convertedZ);

            vertex = new Vertex(posX, posY, posZ);

            return vertex;
        }

        public static string ConvertVertexToString(this Vertex vertex)
        {            
            string output = "";

            output += vertex.PosX.ToString().Replace(',', '.') + ",";
            output += vertex.PosY.ToString().Replace(',', '.') + ",";
            output += vertex.PosZ.ToString().Replace(',', '.');

            return output;
        }
    }

    /* string testNumber = "12.56";
            string converted = testNumber.Replace('.', ',');
            double test = double.Parse(converted);
*/
}
