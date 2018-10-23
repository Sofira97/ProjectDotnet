using System;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    [Serializable]
    public class Animal : ISerializable
    {
        public string Name { get; set; }
        public double Weight { get; set; }
        public double Height { get; set; }
        public int AnimalID { get; set; }

        public Animal() { }

        public Animal(string name ="No Name",
            double weight = 0,
            double height = 0)
        {
            Name = name;
            Weight = weight;
            Height = height;
        
        }

        public override string ToString()
        {
            return string.Format("{0} weighs {1} lbs and is {2} inches tell",
                Name, Weight, Height);

        }


        //serialization functio (Stores Object Data in Fie)
        //serialization holds the key value pairs
        //streaming can hold additional info
        //but we are'nt use it here
        public void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            //assign key value pair for your data
            info.AddValue("Name", Name);
            info.AddValue("Weight", Weight);
            info.AddValue("Height", Height);
            info.AddValue("AnimalID", AnimalID);
        }

        //the deserialize function (Removes Object Data from File)
        public Animal(SerializationInfo info, StreamingContext context)
        {
            Name = (string)info.GetValue("Name", typeof(string));
            Weight = (double)info.GetValue("Weight", typeof(double));
            Height = (double)info.GetValue("Height", typeof(double));
            AnimalID = (int)info.GetValue("AnimalID", typeof(int));
        }
    }
}