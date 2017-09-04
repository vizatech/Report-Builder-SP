using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.Office.Word.Server.Conversions;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;

namespace DocumentConversion.SubmitConversion
{
    public partial class SubmitConversionUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            ConversionJob myJob = new ConversionJob("Word Automqtion Service");

            myJob.Settings.OutputFormat = SaveFormat.PDF;
            myJob.Settings.OutputSaveBehavior = SaveBehavior.AlwaysOverwrite;

            myJob.UserToken = SPContext.Current.Web.CurrentUser.UserToken;

            SPWeb myWebSite = SPContext.Current.Web;
            SPList inputLibrary = myWebSite.Lists["Entrance"];
            SPList outputLibrary = myWebSite.Lists["Transformed"];
            myJob.AddLibrary(inputLibrary, outputLibrary);

            myJob.Start();
        }
    }
}
