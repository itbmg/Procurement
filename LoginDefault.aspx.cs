﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using YaBu.MessageBox;
using System.Net.NetworkInformation;
using System.Net;
using System.Xml;
using System.Net.Sockets;

public partial class LoginDefault : System.Web.UI.Page
{
    string decryptpassword;
    string dd;
    DbHelper DBclass = new DbHelper();
    BLLuser Bllusers = new BLLuser();
    public string companycode, companyname;
    public string plantcode;
    public string managmobNo;
    public string pname;
    public string cname;
    string getid;
    string sessname;
    string sesspass;
    string message;
    SqlConnection con = new SqlConnection();
    string IPHost;
    string IP;
    string MAC;
    DateTime dtm = new DateTime();
    string ptcode;
    string ptname;
    string procuimp;
    string stockClosing;
    string timemaintanance;
    string Datime12hours1;
    string Datime24hours1;
    string Datime12hours2;
    string Datime24hours2;
    string cash;
    string Garcbertesting;
    string sessions;
    string Monthdate;
    DataSet COLLECT2 = new DataSet();
  
    DataTable getlockfun = new DataTable();
    int datasetcount = 0;
    AccessControldbmanger Accescontrol_db = new AccessControldbmanger();
    int proc;
    int close;
    int route;
    int cashb;
    int garb;
    int compress;
    int milkrechil;
    int Genset;
    string tempplant;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            program.Guser_role = 0;
            if (Session["userid"] != null)
            {
                Session.Abandon();
            }
            Loadcompanycode();
            txtLoginId.Text = "";
            txtPassword.Text = "";
            //  LoadPlantcode();
            txtLoginId.Focus();



            getplantdetails();
            //string getrole = Session["branchname"].ToString();
            //if (getrole > 2)
            //{
            //    Response.Redirect("home.aspx");
            //}
           // Response.Redirect("home.aspx");
            if (!String.IsNullOrEmpty(Request.Params["logout"]))
            {
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Redirect("./");

                Session.Abandon();
                Session.Clear();
                Session.RemoveAll();
                System.Web.Security.FormsAuthentication.SignOut();
                Response.Redirect("frmLogin.aspx", false);

            }
            else
            {
                txtLoginId.Focus();
            }

            dtm = System.DateTime.Now;
            sessions = dtm.ToString("tt");
            Monthdate = dtm.ToString("MM/dd/yyyy");
          //  getgrid();
            Datime12hours1 = dtm.AddDays(-1).ToString();
            Datime24hours1 = Datime12hours1 + "23:59:59";
            Datime12hours2 = dtm.AddDays(-2).ToString();
            Datime24hours2 = Datime12hours2 + "23:59:59";
            //AKBAR CODE ADDING 3-2-2017
            var Empid = Request.QueryString["id"];
            try
            {
                //SqlDataReader dr;
           
                //string sqlstr = null;
                //SqlCommand cmd = new SqlCommand();
                //cmd = new SqlCommand("SELECT  sno, emp_refno, userid, Name, Role, Pass, plant_code, empname, leveltype, branch, branchname, usersno, username, title, address, tinno, doe, emp_id FROM procurement_login  WHERE (emp_id = @empid)");
                //cmd.Parameters.Add("@empid", Empid);
                //DataTable dtprocurelogin = Accescontrol_db.SelectQuery(cmd).Tables[0];
                ////sqlstr = "SELECT    userid,username,password,Role,plant_code   FROM newusers     where username   COLLATE Latin1_general_CS_AS='" + txtLoginId.Text + "' and	password  COLLATE Latin1_general_CS_AS     ='" + txtPassword.Text + "' and status=1";
                ////dr = DBclass.GetDatareader(sqlstr);
                //if (dtprocurelogin.Rows.Count > 0)
                //{

                //    Session["userid"] = dtprocurelogin.Rows[0]["userid"].ToString();
                //    string sss = Session["userid"].ToString();
                //    Session["Name"] = dtprocurelogin.Rows[0]["username"].ToString();
                //    Session["Role"] = dtprocurelogin.Rows[0]["Role"].ToString();
                //    //Session["pass"] = dtprocurelogin.Rows[0]["empid"].ToString(); 
                //    Session["plant_code"] = dtprocurelogin.Rows[0]["plant_code"].ToString();
                //    //////////..............By ravindra..................////////////
                //    Session["TitleName"] = "SRI VYSHNAVI DAIRY SPECIALITIES (P) LTD";
                //    Session["Address"] = "R.S.No:381/2,Punabaka village Post,Pellakuru Mandal,Nellore District -524129., ANDRAPRADESH (State).Phone: 9440622077, Fax: 044 – 26177799.";
                //    Session["TinNo"] = "37921042267";
                //    //Session["TitleName"] = "SRI VYSHNAVI FOODS (P) LTD";
                //    //Session["Address"] = " Near Ayyappa Swamy Temple, Shasta Nagar, WYRA-507165,KHAMMAM (District), TELANGANA (State).Phone: 08749 – 251326, Fax: 08749 – 252198.";
                //    //Session["TinNo"] = "36550160129";
                //    Session["UserSno"] = dtprocurelogin.Rows[0]["userid"].ToString();
                //    Session["EmpName"] = dtprocurelogin.Rows[0]["empname"].ToString();
                //    Session["UserName"] = dtprocurelogin.Rows[0]["username"].ToString();
                //    Session["LevelType"] = dtprocurelogin.Rows[0]["leveltype"].ToString();
                //    Session["branch"] = dtprocurelogin.Rows[0]["plant_code"].ToString();
                //    Session["branchname"] = dtprocurelogin.Rows[0]["username"].ToString();
                //    getplantdetails();
                //}

            }
            catch (Exception ex)
            {

            }
        }
        else
        {
            program.Guser_role = 0;
            if (Session["userid"] != null)
            {
                Session.Abandon();
            }
            Loadcompanycode();
            txtLoginId.Focus();
            if (!String.IsNullOrEmpty(Request.Params["logout"]))
            {
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Redirect("./");
            }
            else
            {

                txtLoginId.Focus();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {



            getuserId();
            int getrole = Convert.ToInt16(Session["Role"]);

            //if (getrole < 3)
            //{
                getentryfunction();

            //}

        }
        catch (Exception EE)
        {
            Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(EE.Message) + "')</script>");

        }
    }

    public void insertsession()
    {
        con = DBclass.GetConnection();
        string stt = "";
        stt = "Insert Into SessionLogin(UserName,logintime,Mac,Ip,Sysname) values('" + Session["Name"].ToString() + "','" + System.DateTime.Now + "','" + MAC + "','" + IP + "','" + IPHost + "')";
        SqlCommand cmd = new SqlCommand(stt, con);
        cmd.ExecuteNonQuery();
    }
    protected void LoginStatus2_LoggingOut(object sender, LoginCancelEventArgs e)
    {
    }
    private void Loadcompanycode()
    {
        try
        {
            SqlDataReader dr = null;
            dr = Bllusers.Loadcompanycode();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    companycode = dr["Company_Code"].ToString();
                    companyname = dr["Company_Name"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.ToString());
        }
    }
    private void getuserId()
    {
        try
        {
            SqlDataReader dr;
            string sqlstr = null;
            sqlstr = "SELECT    userid,username,password,Role,plant_code   FROM newusers     where username   COLLATE Latin1_general_CS_AS='" + txtLoginId.Text + "' and	password  COLLATE Latin1_general_CS_AS     ='" + txtPassword.Text + "' and status=1";
            dr = DBclass.GetDatareader(sqlstr);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["userid"] = (dr["userid"].ToString());
                    string sss = Session["userid"].ToString();
                    Session["Name"] = (dr["username"].ToString());
                    Session["Role"] = Convert.ToInt32((dr["Role"].ToString()));
                    Session["pass"] = (dr["password"].ToString());
                    Session["plant_code"] = (dr["plant_code"].ToString());
                    try
                    {
                        GETIP();
                        insertsession();
                    }
                    catch
                    {


                    }



                    //////////..............By ravindra..................////////////
                    Session["TitleName"] = "SRI VYSHNAVI DAIRY SPECIALITIES (P) LTD";
                    Session["Address"] = "R.S.No:381/2,Punabaka village Post,Pellakuru Mandal,Nellore District -524129., ANDRAPRADESH (State).Phone: 9440622077, Fax: 044 – 26177799.";
                    Session["TinNo"] = "37921042267";
                    //Session["TitleName"] = "SRI VYSHNAVI FOODS (P) LTD";
                    //Session["Address"] = " Near Ayyappa Swamy Temple, Shasta Nagar, WYRA-507165,KHAMMAM (District), TELANGANA (State).Phone: 08749 – 251326, Fax: 08749 – 252198.";
                    //Session["TinNo"] = "36550160129";
                    Session["UserSno"] = (dr["userid"].ToString());
                    Session["EmpName"] = (dr["username"].ToString());
                    Session["UserName"] = (dr["username"].ToString());
                    Session["LevelType"] = (dr["Role"].ToString());
                    Session["branch"] = (dr["plant_code"].ToString());
                    Session["branchname"] = (dr["username"].ToString());
                    getplantdetails();
                }
                int getrole = Convert.ToInt16(Session["Role"]);
                if (getrole > 2)
                {
                    Response.Redirect("home.aspx");
                }
            }
            else
            {
                message = "Please Check your UserName or Password";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.ToString());
        }
    }
    private void getplantdetails()
    {
        try
        {
            SqlDataReader dr;
            string sqlstr = null;
            sqlstr = "select    *    from  plant_master    where  plant_code='" + Session["plant_code"] + "'";
            dr = DBclass.GetDatareader(sqlstr);
            if (dr.HasRows)
            {

                while (dr.Read())
                {
                    Session["Plant_Code"] = dr["plant_code"].ToString();
                    Session["cname"] = "1_Sri Vyshnavi Dairy Specialities pvt ltd";
                    Session["pname"] = dr["plant_name"].ToString();
                    Session["Company_code"] = "1";
                    Session["mana_phoneno"] = dr["mana_phoneno"].ToString();
                    string STT = Session["Plant_Code"].ToString();

                }
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.ToString());
        }
    }
    public void GETIP()
    {
        try
        {

            NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
            String sMacAddress = string.Empty;
            foreach (NetworkInterface adapter in nics)
            {
                if (sMacAddress == String.Empty)// only return MAC Address from first card  
                {
                    IPInterfaceProperties properties = adapter.GetIPProperties();
                    sMacAddress = adapter.GetPhysicalAddress().ToString();
                }
            }

            MAC = sMacAddress.ToString();
            IPHost = Dns.GetHostName();

            IP = System.Net.Dns.GetHostEntry(Request.ServerVariables["REMOTE_HOST"]).HostName;
         //   string clientMachineName;
            IP = (Dns.GetHostEntry(Request.ServerVariables["remote_addr"]).HostName);
          //  IP = Dns.GetHostByName(IPHost).AddressList[0].ToString();

        }
        catch
        {


        }
    }
    public void getentryfunction()
    {
        dtm = System.DateTime.Now;
        sessions = dtm.ToString("tt");
        Monthdate = dtm.ToString("MM/dd/yyyy");
        //  getgrid();
        Datime12hours1 = dtm.AddDays(-1).ToString("MM/dd/yyyy");
        Datime24hours1 = Datime12hours1 + " " + "23:59:59";
        Datime12hours2 = dtm.AddDays(-2).ToString("MM/dd/yyyy");
        Datime24hours2 = Datime12hours2 + " " + "23:59:59";
        plantname();

     //   tempplant = Session["plant_code"].ToString();


          //Response.Redirect("home.aspx");

        //if ((tempplant != "139") && (tempplant != "170"))
        //{
        //    getlock();
        //    if (getlockfun.Rows.Count > 0)
        //    {
        //        string GETSTS = getlockfun.Rows[0][0].ToString();
        //        if (GETSTS == "1")
        //        {
                    Response.Redirect("home.aspx");

                //}

                //else
                //{
                //    procurementimport();
                //    ClosingStock();
                //    RouteTimeMaintanance();
                //    cashcollections();
                //    garbertes();
                //    comprresss();
                //    Rechilll();
                //    genseee();
                //    try
                //    {
                //        if (COLLECT2.Tables[1].Rows.Count > 0)
                //        {
                //            proc = 1;
                //        }
                //        else
                //        {

                //            proc = 0;

                //        }


                //        if (COLLECT2.Tables[2].Rows.Count > 0)
                //        {
                //            close = 1;
                //        }
                //        else
                //        {

                //            close = 0;

                //        }


                //        if (COLLECT2.Tables[3].Rows.Count > 0)
                //        {
                //            route = 1;
                //        }
                //        else
                //        {

                //            route = 0;

                //        }


                //        if (COLLECT2.Tables[4].Rows.Count > 0)
                //        {
                //            cashb = 1;
                //        }
                //        else
                //        {

                //            cashb = 0;

                //        }


                //        if (COLLECT2.Tables[5].Rows.Count > 0)
                //        {
                //            garb = 1;
                //        }
                //        else
                //        {

                //            garb = 0;

                //        }


                //        //if (COLLECT2.Tables[5].Rows.Count > 0)
                //        //{
                //        //    garb = 1;
                //        //}
                //        //else
                //        //{

                //        //    garb = 0;

                //        //}

                //        if (COLLECT2.Tables[6].Rows.Count > 0)
                //        {
                //            compress = 1;
                //        }
                //        else
                //        {

                //            compress = 0;

                //        }

                //        if (COLLECT2.Tables[7].Rows.Count > 0)
                //        {
                //            milkrechil = 1;
                //        }
                //        else
                //        {

                //            milkrechil = 0;

                //        }

                //        if (COLLECT2.Tables[8].Rows.Count > 0)
                //        {
                //            Genset = 1;
                //        }
                //        else
                //        {

                //            Genset = 0;

                //        }

                //    //    if ((proc == 1) && (close == 1) && (route == 1) && (cashb == 1) && (garb == 1))
                //            if ((proc == 1) && (close == 1) && (route == 1) && (cashb == 1) && (garb == 1) && (compress == 1) && (milkrechil == 1) && (Genset == 1))
                //        {
                //            Session["LKC"] = "1";
                //            Response.Redirect("home.aspx");

                //        }
                //        else
                //        {
                //            if (getlockfun.Rows.Count > 0)
                //            {
                //                updatelock();
                //            }
                //            else
                //            {
                //                INSERTlock();

                //            }


                //            Session["LKC"] = "0";
                //            Response.Redirect("PlantDataDashBoard.aspx");

                //        }
                    //}
                    //catch
                    //{

                    //}


    ////}
    //        }
    //        else
    //        {

    //            procurementimport();
    //            ClosingStock();
    //            RouteTimeMaintanance();
    //            cashcollections();
    //            garbertes();
    //            comprresss();
    //            Rechilll();
    //            genseee();
    //            try
    //            {
    //                if (COLLECT2.Tables[1].Rows.Count > 0)
    //                {
    //                    proc = 1;
    //                }
    //                else
    //                {

    //                    proc = 0;

    //                }


    //                if (COLLECT2.Tables[2].Rows.Count > 0)
    //                {
    //                    close = 1;
    //                }
    //                else
    //                {

    //                    close = 0;

    //                }


    //                if (COLLECT2.Tables[3].Rows.Count > 0)
    //                {
    //                    route = 1;
    //                }
    //                else
    //                {

    //                    route = 0;

    //                }


    //                if (COLLECT2.Tables[4].Rows.Count > 0)
    //                {
    //                    cashb = 1;
    //                }
    //                else
    //                {

    //                    cashb = 0;

    //                }


    //                if (COLLECT2.Tables[5].Rows.Count > 0)
    //                {
    //                    garb = 1;
    //                }
    //                else
    //                {

    //                    garb = 0;

    //                }


    //                if (COLLECT2.Tables[5].Rows.Count > 0)
    //                {
    //                    garb = 1;
    //                }
    //                else
    //                {

    //                    garb = 0;

    //                }

    //                if (COLLECT2.Tables[6].Rows.Count > 0)
    //                {
    //                    compress = 1;
    //                }
    //                else
    //                {

    //                    compress = 0;

    //                }

    //                if (COLLECT2.Tables[7].Rows.Count > 0)
    //                {
    //                    milkrechil = 1;
    //                }
    //                else
    //                {

    //                    milkrechil = 0;

    //                }

    //                if (COLLECT2.Tables[8].Rows.Count > 0)
    //                {
    //                    Genset = 1;
    //                }
    //                else
    //                {

    //                    Genset = 0;

    //                }

    //                if ((proc == 1) && (close == 1) && (route == 1) && (cashb == 1) && (garb == 1) && (compress == 1) && (milkrechil == 1) && (Genset==1))
    //                {
    //                    Session["LKC"] = "1";
    //                    Response.Redirect("home.aspx");

    //                }
    //                else
    //                {
    //                    if (getlockfun.Rows.Count > 0)
    //                    {
    //                        updatelock();
    //                    }
    //                    else
    //                    {
    //                        INSERTlock();

    //                    }
    //                    Session["LKC"] = "0";
    //                    Response.Redirect("PlantDataDashBoard.aspx");

    //                }


    //            }
    //            catch
    //            {


    //            }
    //        }

    //    }
    //    else
    //    {
    //        Response.Redirect("home.aspx");

    //    }

         
    }

    public void INSERTlock()
    {
        con = DBclass.GetConnection();
        string INSERT;
        INSERT = "INSERT INTO Unlock(Plant_code,Status,Lock,UnlockUser,Date,Sessions)VALUES('" + tempplant + "','0','','','" + Monthdate + "','" + sessions + "')";
        SqlCommand cmd = new SqlCommand(INSERT, con);
        cmd.ExecuteNonQuery();

    }

    public void updatelock()
    {
        con = DBclass.GetConnection();
        string update;
        update = "update Unlock set Lock='0'  where plant_code='" + tempplant + "'  AND  Date='" + Monthdate + "'   AND  Sessions='" + sessions + "'";
        SqlCommand cmd = new SqlCommand(update, con);
        cmd.ExecuteNonQuery();

    }
    public void getlock()
    {
        con = DBclass.GetConnection();
        string update;
        update = "Select  Lock from   Unlock  where plant_code='" + tempplant + "'  AND  Date='" + Monthdate + "'   AND  Sessions='" + sessions + "'";
        SqlCommand cmd = new SqlCommand(update, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        getlockfun.Rows.Clear();
        da.Fill(getlockfun);


    }

    public void plantname()
    {
        try
        {
            con = DBclass.GetConnection();
            string loanamt = "Select  Plant_Code as Plantcode,Plant_Name  as PlantName,milktype  from Plant_Master where Plant_Code > 154 and Plant_Code not in (160)  order by milktype";
            SqlCommand sc = new SqlCommand(loanamt, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "PCODE");
            datasetcount = datasetcount + 1;

        }
        catch
        {

          //  Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }

    public void procurementimport()
    {
        try
        {
            con = DBclass.GetConnection();
            string procu;
            if (sessions == "AM")
            {
                procu = "SELECT * FROM (SELECT COUNT(*) as ss FROM (Select Plant_Code,Sessions  from  Procurementimport  where Plant_Code = '" + tempplant + "'    and  Prdate= DATEADD(day,-2,'" + Monthdate + "')  group by Plant_Code,Sessions )as ff  ) AS DD  WHERE ss > 1";
            }
            else
            {
                procu = "SELECT * FROM (SELECT COUNT(*) as ss FROM (Select Plant_Code,Sessions  from  Procurementimport  where  Plant_Code = '" + tempplant + "'    and  Prdate= DATEADD(day,-1,'" + Monthdate + "')  group by Plant_Code,Sessions )as ff  ) AS DD  WHERE ss > 1";

            }
            SqlCommand sc = new SqlCommand(procu, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "PROCU");
            datasetcount = datasetcount + 1;

        }
        catch
        {

          //  Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }

    public void ClosingStock()
    {
        try
        {
            con = DBclass.GetConnection();
            string procu;
            if (sessions == "AM")
            {
                procu = "SELECT  Date,Sum(MilkKg) as agg from  Stock_Milk  where   Plant_Code='" + tempplant + "'  and  Date = DATEADD(day, -2,'" + Monthdate + "') group by  Date";
            }
            else
            {
                procu = "SELECT  Date,Sum(MilkKg) as agg from  Stock_Milk  where  Plant_Code='" + tempplant + "'  and  Date = DATEADD(day, -1,'" + Monthdate + "') group by  Date";

            }
            SqlCommand sc = new SqlCommand(procu, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "CLOSING");
            datasetcount = datasetcount + 1;

        }
        catch
        {

          //  Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }
    public void RouteTimeMaintanance()
    {
        try
        {
            con = DBclass.GetConnection();
            string procu;
            if (sessions == "AM")
            {

                procu = "sELECT Date  FROM RouteTimeMaintain WHERE Plant_code='" + tempplant + "'   and  Date = DATEADD(day, -2,'" + Monthdate + "') group by  Date";
            }
            else
            {
                procu = "sELECT Date  FROM RouteTimeMaintain WHERE Plant_code='" + tempplant + "'   and  Date = DATEADD(day, -1,'" + Monthdate + "') group by  Date";

            }
            SqlCommand sc = new SqlCommand(procu, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);

            da1.Fill(COLLECT2, "Route");
            datasetcount = datasetcount + 1;

        }
        catch
        {

          //  Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }

    public void cashcollections()
    {
        try
        {
            con = DBclass.GetConnection();
            string Cash;
            if (sessions == "AM")
            {

                Cash = "select  COUNT(*)   from collections    where  Branchid='" + tempplant + "' and   PaidDate BETWEEN '" + Datime12hours1 + "' and '" + Datime24hours1 + "' ";
            }
            else
            {
                Cash = "select  COUNT(*)   from collections     where  Branchid='" + tempplant + "' and  PaidDate BETWEEN '" + Datime12hours2 + "' and '" + Datime24hours2 + "' ";

            }
            SqlCommand sc = new SqlCommand(Cash, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "cash");
            datasetcount = datasetcount + 1;

        }
        catch
        {

            //Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }
    public void garbertes()
    {
        try
        {
            con = DBclass.GetConnection();
            string Cash;
            if (sessions == "AM")
            {

                Cash = "select *  from (SELECT COUNT(*) as new FROM  Garbartest  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -2,'" + Monthdate + "')) as sam where new > 1";
            }
            else
            {
                Cash = "select *  from (SELECT COUNT(*) as new FROM  Garbartest  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -1,'" + Monthdate + "')) as sam where new > 1";

            }
            SqlCommand sc = new SqlCommand(Cash, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "gar");
            datasetcount = datasetcount + 1;

        }
        catch
        {

         //   Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }



    public void comprresss()
    {
        try
        {
            con = DBclass.GetConnection();
            string str;
            if (sessions == "AM")
            {
                str = " Select *   from (  select  COUNT(*) as sno   from  cmpruntime     WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -2,'" + Monthdate + "')) as gg where sno > 1";


            }
            else
            {
                str = " Select *   from (  select  COUNT(*) as sno   from  cmpruntime     WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -1,'" + Monthdate + "')) as gg where sno > 1";

            }
            SqlCommand sc = new SqlCommand(str, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "compress");
            datasetcount = datasetcount + 1;

        }
        catch
        {

         //   Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }

    public void Rechilll()
    {
        try
        {
            con = DBclass.GetConnection();
            string Cash;
            if (sessions == "AM")
            {

                Cash = "select *  from (SELECT COUNT(*) as new FROM  milkrechilling  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -2,'" + Monthdate + "')) as sam where new > 1";
            }
            else
            {
                Cash = "select *  from (SELECT COUNT(*) as new FROM  milkrechilling  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -1,'" + Monthdate + "')) as sam where new > 1";

            }
            SqlCommand sc = new SqlCommand(Cash, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "rechill");
            datasetcount = datasetcount + 1;

        }
        catch
        {

           // Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }

    public void genseee()
    {
        try
        {
            con = DBclass.GetConnection();
            string Cash;
            if (sessions == "AM")
            {

                Cash = "select *  from (SELECT COUNT(*) as new FROM  GensetPowerDiesel  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -2,'" + Monthdate + "')) as sam where new > 0";
            }
            else
            {
                Cash = "select *  from (SELECT COUNT(*) as new FROM  GensetPowerDiesel  WHERE Plant_code='" + tempplant + "' AND Date = DATEADD(day, -1,'" + Monthdate + "')) as sam where new > 0";

            }
            SqlCommand sc = new SqlCommand(Cash, con);
            SqlDataAdapter da1 = new SqlDataAdapter(sc);
            da1.Fill(COLLECT2, "gencet");
           

        }
        catch
        {

          //  Response.Write("<script language='javascript'>alert('" + Server.HtmlEncode(getclass.Check) + "')</script>");
        }

    }



}





