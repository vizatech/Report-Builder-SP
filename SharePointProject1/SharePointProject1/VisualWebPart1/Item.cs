using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharePointProject1.VisualWebPart1
{

    public static class Item

    {

        public static List<Dictionary<string, string>> GetItems()

        {

            List<Dictionary<string, string>> items = new List<Dictionary<string, string>>();



            Dictionary<string, string> AddElementsDictionary = new Dictionary<string, string>

            {

                { "DocID", "1526" },

                { "DocType", "Agreement" },

                { "DocNumber", "025-1" },

                { "DocRegDate", "22.04.2017" },

                { "DocDep", "Procurement" },

                { "DocSub", "Computers" },

                { "OurSide", "Пётр Васильев" },

                { "Contragent", "Compas, Ltd" },

                { "Manager", "Ирина Клеменчук" },

                { "DocSignDate", "22.06.2017" },

                { "Status", "Отказ" },

                { "Lower1", "Валентина Добронравская" },

                { "BookKeeper1", "Григорий Приходько" },

                { "Finance1", "Нинель Кредо" },

                { "FinDirector1", "Виктор Всегдада" },

                { "Lower2", "Светлана Вокруг" },

                { "BookKeeper2", "Григорий Бельский" },

                { "Finance2", "Никита Лещенко" },

                { "FinDirector2", "Татьяна Пельман" },

                { "CardCreatedDate", "28.07.2017" },

                { "Author", "Андрей Леоненко" },

                { "Project", "New lists and boxes" },

                { "ArchDate", "10.08.2017" },

                { "ArchBy", "Андрей Леоненко" }

            };

            items.Add(AddElementsDictionary);



            AddElementsDictionary = new Dictionary<string, string>

            {

                { "DocID", "1677" },

                { "DocType", "Additionl Agreement" },

                { "DocNumber", "1325-1" },

                { "DocRegDate", "14.05.2017" },

                { "DocDep", "Purchase" },

                { "DocSub", "Software" },

                { "OurSide", "Пётр Васильев" },

                { "Contragent", "1+1, Ltd" },

                { "Manager", "Ирина Клеменчук" },

                { "DocSignDate", "22.05.2017" },

                { "Status", "Согласовано" },

                { "Lower1", "Валентина Добронравская" },

                { "BookKeeper1", "Григорий Приходько" },

                { "Finance1", "Нинель Кредо" },

                { "FinDirector1", "Виктор Всегдада" },

                { "Lower2", "Светлана Вокруг" },

                { "BookKeeper2", "Григорий Бельский" },

                { "Finance2", "Никита Лещенко" },

                { "FinDirector2", "Татьяна Пельман" },

                { "CardCreatedDate", "4.08.2017" },

                { "Author", "Андрей Леоненко" },

                { "Project", "New lists and boxes" },

                { "ArchDate", "23.08.2017" },

                { "ArchBy", "Андрей Леоненко" }

            };

            items.Add(AddElementsDictionary);



            AddElementsDictionary = new Dictionary<string, string>

            {

                { "DocID", "2054" },

                { "DocNumber", "025-1" },

                { "DocType", "Agreement" },

                { "DocRegDate", "7.06.2017" },

                { "DocDep", "Procurement" },

                { "DocSub", "Furniture" },

                { "OurSide", "Пётр Васильев" },

                { "Contragent", "SKMU, Ltd" },

                { "Manager", "Ирина Клеменчук" },

                { "DocSignDate", "18.06.2017" },

                { "Status", "Согласовано" },

                { "Lower1", "Валентина Добронравская" },

                { "BookKeeper1", "Григорий Приходько" },

                { "Finance1", "Нинель Кредо" },

                { "FinDirector1", "Виктор Всегдада" },

                { "Lower2", "Светлана Вокруг" },

                { "BookKeeper2", "Григорий Бельский" },

                { "Finance2", "Никита Лещенко" },

                { "FinDirector2", "Татьяна Пельман" },

                { "CardCreatedDate", "30.07.2017" },

                { "Author", "Андрей Леоненко" },

                { "Project", "New lists and boxes" },

                { "ArchDate", "20.08.2017" },

                { "ArchBy", "Андрей Леоненко" }

            };

            items.Add(AddElementsDictionary);



            return items;

        }

    }
}
