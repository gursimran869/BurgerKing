using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BurgerKing.Models
{
    public class Contact
    {
        public String Name { get; set; }
        public String Email { get; set; }
        public String Phone { get; set; }
        public String Subject { get; set; }
        public String Message { get; set; }


        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-G2UGPMF\\SQLEXPRESS;Initial Catalog=BurgerKing;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //this statement is related to insert delete update query that is the main statement of any database record 
        public void sendMessage(String Query)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();


            sqlCmd = new SqlCommand(Query, sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();

        }

        public DataTable Login(String query)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand(query, sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();
            return tbl;

        }


    }
}