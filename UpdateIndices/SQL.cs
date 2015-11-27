
namespace UpdateIndices
{


    class SQL
    {

        public static string GetConnectionString()
        {
            System.Data.SqlClient.SqlConnectionStringBuilder csb = new System.Data.SqlClient.SqlConnectionStringBuilder();
            csb.DataSource = System.Environment.MachineName;
            csb.InitialCatalog = "RoomPlanning";
            
            csb.IntegratedSecurity = true;

            return csb.ConnectionString;
        } // End Function GetConnectionString


        public static int ExecuteNonQuery(string strSQL)
        { 
            int retVal = 0;

            try
            {

                using (System.Data.Common.DbConnection con = new System.Data.SqlClient.SqlConnection(GetConnectionString()))
                {
                    using (System.Data.Common.DbCommand cmd = con.CreateCommand())
                    {
                        cmd.CommandText = strSQL;

                        if (cmd.Connection.State != System.Data.ConnectionState.Open)
                            cmd.Connection.Open();

                        retVal = cmd.ExecuteNonQuery();

                        if (cmd.Connection.State != System.Data.ConnectionState.Closed)
                            cmd.Connection.Close();
                    } // End Using cmd 
                }
            }
            catch (System.Exception ex)
            {
                // System.Console.WriteLine(ex.Message);
                retVal = -1;
            }

            return retVal;
        } // End FUnction ExecuteNonQuery 


    } // End Class SQL 


} // End Namespace UpdateIndices 
