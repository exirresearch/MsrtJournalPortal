<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="SearchResult.aspx.cs" Inherits="Forms_SearchResult" %>

<%@ Register Assembly="ARO.Controls" Namespace="ARO.Controls" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="search-detail">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="search-count">
                        <div class="row">
                            <div class="col-md-2">
                                <img class="" src="../assets/images/searchCount.png" alt="">
                            </div>
                            <div class="col-md-6">
                                <h4 class="search-count_title text-center">جستجو به دنبال</h4>
                                <h5 class="search-count_subtitle Violet-dark text-center">مجلات ایندکس نوع ۱</h5>
                            </div>
                            <div class="col-md-4 pr-0">
                                <h4 class="search-count_title text-center">تعداد نتایج</h4>
                                <h5 class="search-count_subtitle Violet-dark text-center">۲۳۴</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="search-again">
                        <div class="row">
                            <div class="col-md-2 pl-0">
                                <img class="img-responsive img-margin" src="../assets/images/journalList.png" alt="نشریات براساس وضعیت انتشار">
                            </div>
                            <div class="col-md-2 ph-0">
                                <h4 class="search-again-title text-center green">جستجوی مجدد</h4>
                                <p class="search-again-subtitle text-center">عنوان و محتوای <br> فیلتر را انتخاب کنید</p>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group text-center">
                                    <label class="search-again-filter_title Violet-dark">عنوان فیلتر</label>
                                    <select class="search-again-filter_select">
                                        <option value="" selected disabled>موضوع نشریات</option>
                                        <option value="1">2</option>
                                        <option value="2">3</option>
                                        <option value="3">4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group text-center">
                                    <label class="search-again-filter_title Violet-dark">محتوای فیلتر</label>
                                    <select class="search-again-filter_select">
                                        <option value="" selected>علوم انسانی</option>
                                        <option value="1">فنی مهندسی</option>
                                        <option value="2">پزشکی</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="up1">
        <ContentTemplate>
            <asp:Repeater ID="rptData" runat="server">
                <HeaderTemplate>                    
                    <section id="rank-evaluation" class="mt-20">
                        <div class="container">
                            <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                                <div class="col-md-3">
                                    <div class="rank-evaluation">
                                        <div class="rank-evaluation-top">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:Image runat="server" CssClass="rank-evaluaton-top-img img-responsive img-margin"ID="DefaultImage" ImageUrl='<%# Eval("CoverImage").ToString() %>' />
                                                </div>
                                                <div class="col-md-6 pr-0">
                                                    <h4 class="rank-evaluation-top_title text-center">رتبه در ارزشیابی:</h4>
                                                    <h2 class="rank-evaluation-top_subtitle text-center Violet-dark"><%#Eval("Rank").ToString()%></h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="rank-evaluation-bottom">
                                            <h3 class="rank-evaluation-bottom-titleFa text-center Violet-dark">
                                                <%#Eval("JO_FaTitle1").ToString()%>
                                            </h3>
                                            <h3 class="rank-evaluation-bottom-titleEn text-center">
                                                <%#Eval("JO_EnTitle").ToString()%>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">نوع نشریه:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("ListJournalType_Title").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">دوره انتشار:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("ListFrequency_Title").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">مدیر مسئول:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("ModirMasaul").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">سردبیر:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("SarDabir").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">تاریخ تصویب:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("TasvibDate").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">تاریخ اعتبار:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("StartDateValidity").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">موضوع:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("ListJournalSubject_Title").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row mb-10">
                                                <div class="col-md-5 pl-0 pr-30">
                                                    <span class="rank-evaluation-bottom-detailTitle Violet">زبان نشریه:</span>
                                                </div>
                                                <div class="col-md-7 pr-0">
                                                    <span class="rank-evaluation-bottom-detailDescription"><%#Eval("ListLanguage_Title").ToString()%></span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 pl-0 pr-30">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <i class="fa fa-link fa-2x fa-inverse mt-5"></i>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <a href="<%#Eval("JO_WebSite").ToString()%>" class="rank-evaluation-bottom-link green">لینک <br /> وب سایت</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 pr-0">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <i class="fa fa-info-circle fa-2x fa-inverse mt-5"></i>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <asp:HyperLink NavigateUrl="#" CssClass="rank-evaluation-bottom-link green" runat="server" Target="_blank" />مشاهده اطلاعات بیشتر</asp:HyperLink>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                </ItemTemplate>
                <FooterTemplate>
                            </div>
                        </div>
                    </section>
                </FooterTemplate>
            </asp:Repeater>
            <table class="FormTable" dir="rtl" runat="server" id="divPager">
                <tr class="tr-o">
                    <td class="content-td">
                        <div class="FormPage">
                            <cc2:LinkButtonPager ID="lbPager" runat="server" PageSize="5" PageIndex="0" CausesValidation="false"
                                NextPageText="»" PrevPageText="«" GoEndPageText="»»" GoFirstPageText="««" OnIndexChanged="lbPager_IndexChanged"></cc2:LinkButtonPager>
                        </div>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <section id="services" class="mt-20">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-12">
                    <div class="row">
                        <img class="img-responsive img-margin" src="assets/images/mapfa.png" alt="مدیریت پژوهش و فنآوری ایران" />
                    </div>
                    <div class="row">
                        <h3 class="JournalPortal-service_title fa-Entezar1 text-center mt-5">خدمات دولت الکترونیک <br /> در پرتال نشریات</h3>
                    </div>
                </div>
                <div class="col-md-2 col-xs-12">
                    <div class="row">
                        <ul class="list-unstyled">
                            <li>
                                <a class="JournalPortal-notification_bodyLink black" href="#">
                                    <i class="fa fa-circle Violet"></i> اخذ موافقت اصولی
                                </a>
                            </li>
                            <li>
                                <a class="JournalPortal-notification_bodyLink black" href="#">
                                    <i class="fa fa-circle Violet"></i> اخذ موافقت قطعی
                                </a>
                            </li>
                            <li>
                                <a class="JournalPortal-notification_bodyLink black" href="#">
                                    <i class="fa fa-circle Violet"></i> اخذ اعتبار علمی
                                </a>
                            </li>
                            <li>
                                <a class="JournalPortal-notification_bodyLink black" href="#">
                                    <i class="fa fa-circle Violet"></i> شرکت در ارزشیابی نشریات
                                </a>
                            </li>
                            <li>
                                <a class="JournalPortal-notification_bodyLink black" href="#">
                                    <i class="fa fa-circle Violet"></i> داوری نشریات
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-xs-12">
                    <div class="row">
                        <img class="img-responsive img-margin" src="assets/images/journalList.png" alt="نشریات براساس وضعیت انتشار" />
                    </div>
                    <div class="row">
                        <h3 class="JournalPortal-service_title fa-Entezar1 text-center mt-5">نشریات براساس <br /> وضعیت انتشار</h3>
                    </div>
                </div>
                <div class="col-md-2 col-xs-12 ph-0">
                    <div class="JournalPortal-publicList">
                        <a class="JournalPortal-notification_bodyLink black" href="#">
                            <img class="" src="assets/images/journalList-green.png" alt="نشریات براساس در انشار بروز" />
                            <span class="JournalPortal-publicList_title">فهرست نشریات در انتشار بروز</span>
                        </a>
                    </div>
                    <div class="JournalPortal-publicList">
                        <a class="JournalPortal-notification_bodyLink black" href="#">
                            <img class="" src="assets/images/journalList-yellow.png" alt="نشریات براساس در وضعیت هشدار" />
                            <span class="JournalPortal-publicList_title">فهرست نشریات در وضعیت هشدار</span>
                        </a>
                    </div>
                    <div class="JournalPortal-publicList">
                        <a class="JournalPortal-notification_bodyLink black" href="#">
                            <img class="" src="assets/images/journalList-red.png" alt="نشریات براساس در وضعیت بحران" />
                            <span class="JournalPortal-publicList_title">فهرست نشریات در وضعیت بحران</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-xs-12">
                    <div class="row">
                        <img class="img-responsive img-margin" src="assets/images/journalQuestion.png" alt="اعلام وضعیت اعتبار نشریات علمی و پژوهشی"/>
                    </div>
                    <div class="row">
                        <h3 class="JournalPortal-service_title fa-Entezar1 text-center mt-5">اعلام وضعیت اعتبار <br /> نشریات علمی و پژوهشی</h3>
                    </div>
                </div>
                <div class="col-md-2 col-xs-12">
                    <div class="JournalPortal-valid">
                        <a class="JournalPortal-notification_bodyLink black" href="#">
                            <img class="JournalPortal-valid_img" src="assets/images/journalValid.png" alt="نشریات معتبر وزارت علوم" />
                            <h5 class="JournalPortal-valid_title">فهرست <br /> نشریات معتبر <br /> وزارت علوم</h5>
                        </a>
                    </div>
                    <div class="JournalPortal-valid">
                        <a class="JournalPortal-notification_bodyLink black" href="#">
                            <img class="JournalPortal-valid_img" src="assets/images/journalInValid.png" alt="فهرست نشریات غیر معتبر وزارت علوم" />
                            <h5 class="JournalPortal-valid_title">فهرست <br /> نشریات غیر معتبر <br /> وزارت علوم</h5>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="news" class="mt-20">
        <div class="container">
            <div class="row">
                <div class="JournalPortal-newsEvent">
                    <div class="col-md-9">
                        <div class="JournalPortal-news itemmatchHeight">
                            <h3 class="JournalPortal-newsTitle fa-Entezar1  Violet-dark">
                                <i class="fa fa-globe pl-5"></i> اخبار و تازه ها
                            </h3>
                            <div class="JournalPortal-news_body">
                                <ul class="list-unstyled pr-10 mt-20 mb-20">
                                    <li class="JournalPortal-newLink_title">
                                        <a class="JournalPortal-news_bodyLink black" href="#">
                                            <i class="fa fa-circle Violet"></i> کارگاه مجازی«آموزشی استاندارد سازی نشریات
                                            بر اساس معیار های بین المللی» 25 مهر ماه با حضور الکترونیکی بسیاری از دست
                                            اندر کاران نشریات کشور برگزار گردید
                                        </a>
                                    </li>
                                    <li class="JournalPortal-newLink_title">
                                        <a class="JournalPortal-news_bodyLink black" href="#">
                                            <i class="fa fa-circle Violet"></i> کارگاه مجازی« استاندارد سازی نشریات معتبر
                                            علمی بر اساس معیارهای بین المللی»
                                        </a>
                                    </li>
                                    <li class="JournalPortal-newLink_title">
                                        <a class="JournalPortal-news_bodyLink black" href="#">
                                            <i class="fa fa-circle Violet"></i> گزارش اولیه رتبه بندی نشریات
                                        </a>
                                    </li>
                                    <li class="JournalPortal-newLink_title">
                                        <a class="JournalPortal-news_bodyLink black" href="#">
                                            <i class="fa fa-circle Violet"></i> طرح رتبه بندی نشریات علمی کشور
                                        </a>
                                    </li>
                                    <li class="JournalPortal-newLink_title">
                                        <a class="JournalPortal-news_bodyLink black" href="#">
                                            <i class="fa fa-circle Violet"></i> ثبت اطلاعات نشریات علمی
                                        </a>
                                    </li>
                                </ul>
                                <span class="pull-left">
                                <a href="#" class="fa-Vaziri green bold ">کل مطالب ...</a>
                            </span>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="JournalPortal-eCommerce Violetbg itemmatchHeight">
                            <h3 class="JournalPortal-eCommerce_title fa-Entezar1 Violet-dark">
                                <i class="fa fa-user Violet pl-5"></i> آموزش الکترونیک
                            </h3>
                            <div class="JournalPortal-eCommerce_body mt-20">
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> نمایه سازی مجلات (14)
                                        </a>
                                    </li>
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> خدمات الکترونیک دفتر (2)
                                        </a>
                                    </li>
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> دریافت اعتبار علمی نشریات (2)
                                        </a>
                                    </li>
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> ارزشیابی آنلاین نشریات(6)
                                        </a>
                                    </li>
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> وبومتریکس نشریات (13)
                                        </a>
                                    </li>
                                    <li>
                                        <a class="JournalPortal-eCommerce_bodyLink Violet" href="#">
                                            <i class="fa fa-pencil Violet pl-10"></i> منابع مفید (32)
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <span class="pull-left">
                            <a href="#" class="fa-Vaziri green bold ">کل مطالب ...</a>
                        </span>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
