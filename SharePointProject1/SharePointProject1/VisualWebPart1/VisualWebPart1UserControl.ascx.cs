using System;
using System.Web.UI;                       
using Microsoft.SharePoint;               
using System.Collections.Generic; 
using System.IO;
using System.Linq;
using System.Web.Script.Serialization;


using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace SharePointProject1.VisualWebPart1
{
    public partial class VisualWebPart1UserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }  
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            
            CreateDocument();
        }
        protected void CreateDocument()
        {
            string SelectedItem = SelectedIdField.Text;
            Dictionary<string, string> AddElementsDictionary = new JavaScriptSerializer().Deserialize<Dictionary<string, string>>(SelectedItem);
           
            String sharePointSite = "http://vizatech.westeurope.cloudapp.azure.com/sites/dev/";
            String documentLibraryName = "Archive";   
            using (SPSite oSite = new SPSite(sharePointSite))
            {
                using (SPWeb oWeb = oSite.OpenWeb())
                {                                                       
                    string sourceFile = "~/DocTemplate.dotx";

                    oWeb.AllowUnsafeUpdates = true;
                    SPFolder myLibrary = oWeb.Folders[documentLibraryName];
                    SPFile file = myLibrary.Files["DocTemplate.dotx"];

                    int size = 10 * 1024;
                    using (Stream stream = file.OpenBinaryStream())
                    {
                        using (FileStream fs = new FileStream(Server.MapPath(sourceFile), FileMode.Create, FileAccess.Write))
                        {
                            byte[] buffer = new byte[size];
                            int bytesRead;
                            while ((bytesRead = stream.Read(buffer, 0, buffer.Length)) > 0)
                            {
                                fs.Write(buffer, 0, bytesRead);
                            }
                        }
                    }
                    string targetFile = "~/" + AddElementsDictionary.Values.ElementAt(0) + ".docx";
                    if (System.IO.File.Exists(Server.MapPath(targetFile)))
                    {

                        System.IO.File.SetAttributes(Server.MapPath(targetFile), FileAttributes.Normal);
                        System.IO.File.Delete(Server.MapPath(targetFile));
                    }
                    System.IO.File.Copy(Server.MapPath(sourceFile), Server.MapPath(targetFile), true);
                    System.IO.File.SetAttributes(Server.MapPath(targetFile), FileAttributes.Normal);

                    using (WordprocessingDocument wordDoc = WordprocessingDocument.Open(Server.MapPath(targetFile), true))
                    {
                        wordDoc.ChangeDocumentType(DocumentFormat.OpenXml.WordprocessingDocumentType.Document);
                        MainDocumentPart mainPart = wordDoc.MainDocumentPart;
                        int CurrentBookMarkId = 0;
                        foreach (BookmarkStart bookmarkStart in mainPart.RootElement.Descendants<BookmarkStart>())
                        {
                            if (CurrentBookMarkId < AddElementsDictionary.Count)
                            {
                                if (AddElementsDictionary.ElementAt(CurrentBookMarkId).Key == bookmarkStart.Name)
                                {
                                    RunProperties rPr = new RunProperties(new RunFonts() { Ascii = "Arial" }, new Bold(), new Color() { Val = "green" });
                                    Run InsertToBookmarkOperation = new Run(new Text(AddElementsDictionary.ElementAt(CurrentBookMarkId).Value));
                                    InsertToBookmarkOperation.PrependChild<RunProperties>(rPr);
                                    bookmarkStart.Parent.InsertAfter(InsertToBookmarkOperation, bookmarkStart);
                                    CurrentBookMarkId++;
                                }
                            }
                        }

                        mainPart.Document.Save();
                    }
                    Stream str = new FileStream(Server.MapPath(targetFile), FileMode.Open);
                    MemoryStream st = new MemoryStream();
                    str.CopyTo(st);

                    string folderName = AddElementsDictionary.Values.ElementAt(0) + "_" + AddElementsDictionary.Values.ElementAt(1);
                    string linkFileName = folderName + ".docx";
                    myLibrary.SubFolders.Add(folderName);
                    file.ParentFolder.SubFolders[folderName].Files.Add(linkFileName, st, true);
                }
            }
        }  
    }
}
