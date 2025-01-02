using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace spoonacular.Model
{
    public class Nutrients
    {
        public string Name { get; set; }

        public decimal Amount { get; set; }

        public string Unit { get; set; }

        public double PercentOfDailyNeeds { get; set; }

    }
}
