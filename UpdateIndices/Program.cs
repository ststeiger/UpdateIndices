
namespace UpdateIndices
{


    static class Program
    {


        public static string MapVisualStudioPath(string fileName)
        {
            string dir = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
            dir = System.IO.Path.Combine(dir, "../..");
            dir = System.IO.Path.GetFullPath(dir);
            dir = System.IO.Path.Combine(dir, fileName);

            return dir;
        }


        /// <summary>
        /// Der Haupteinstiegspunkt für die Anwendung.
        /// </summary>
        [System.STAThread]
        static void Main()
        {

            if (false)
            {
                // Suspend the screen.
                System.Windows.Forms.Application.EnableVisualStyles();
                System.Windows.Forms.Application.SetCompatibleTextRenderingDefault(false);
                System.Windows.Forms.Application.Run(new Form1());
            }


            int counter = 0;
            string line;

            using (System.IO.StreamReader file = new System.IO.StreamReader(MapVisualStudioPath("AllMissingIndices.sql")))
            {
                while ((line = file.ReadLine()) != null)
                {
                    if (line == null)
                        continue;

                    line = line.Trim();

                    if (line == string.Empty)
                        continue;

                    if(System.StringComparer.InvariantCultureIgnoreCase.Equals(line, "GO"))
                        continue;


                    System.Console.WriteLine(line);
                    int retVal = SQL.ExecuteNonQuery(line);
                    if(retVal == -1)
                        System.Console.WriteLine("Failed");
                    else
                        System.Console.WriteLine("Succeeded");

                    System.Console.WriteLine(System.Environment.NewLine);

                    counter++;
                }

                file.Close();
            }
            
            System.Console.WriteLine(" === Press any key to continue === ");
            System.Console.ReadKey();
        }


    }


}
