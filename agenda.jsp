<%@ page import="com.restfb.*,java.text.SimpleDateFormat,java.util.ArrayList,java.util.*,com.restfb.*,com.restfb.types.*,com.restfb.json.JsonArray,com.restfb.json.JsonObject,com.restfb.types.Page,com.restfb.types.Post,com.restfb.types.Url,com.restfb.types.User" %>
<%
// https://developers.facebook.com/tools/explorer/180146635389202?method=GET&path=once.pearljam%2Fevents&version=v2.8
// 180146635389202|KC0LiOq6j-5rQyqgcLPEToONkUs
FacebookClient.AccessToken accessToken = new DefaultFacebookClient().obtainAppAccessToken("180146635389202", "5f71764816c5c5c95a920a935bbc9f2f");
String token=accessToken.getAccessToken();
FacebookClient facebookClient = new DefaultFacebookClient(token, Version.VERSION_2_3);

Connection<Event> eventList =
  facebookClient.fetchConnection("once.pearljam/events", Event.class, Parameter.with("fields", "start_time,name,ticket_uri,place"));
    
class Item {
  String myDay = "";
  String myDate = "";
  String myTime = "";
  String myLocation = "";
  String myInfo = "";

  public Item(String day, String date, String time, String location, String info) {
    myDay = day;
    myDate = date;
    myTime = time;
    myLocation = location;
    myInfo = info;
  }
};

List<Item> items = new ArrayList<Item>();
List<Item> pastItems = new ArrayList<Item>();

for (Event e : eventList.getData()) {
  Date now = new Date();
  SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
  date.setTimeZone(TimeZone.getTimeZone("GMT+2:00"));
  SimpleDateFormat time = new SimpleDateFormat("kk:mm");
  time.setTimeZone(TimeZone.getTimeZone("GMT+2:00"));
  SimpleDateFormat day = new SimpleDateFormat("E");
  day.setTimeZone(TimeZone.getTimeZone("GMT+2:00"));
  String ticketURI = "";
  if (e.getTicketUri() != null && !e.getTicketUri().equals("")) {
    ticketURI = "<a target=\"_new\" href=" + e.getTicketUri() + ">Info</a>";
  }
  
  String city = e.getPlace() == null || e.getPlace().getLocation() == null ? "" : " / " + e.getPlace().getLocation().getCity();
  String name = e.getName() + (e.getPlace() == null ? "" : " / " + e.getPlace().getName() + city);
  
  Item item = new Item(day.format(e.getStartTime()), date.format(e.getStartTime()), time.format(e.getStartTime()), name, ticketURI);
  if (now.before(e.getStartTime())) {
    items.add(0, item);
  } else {
    pastItems.add(item);
  }
}

//items.add(new Item("saturday", "30-01-2016", "20.00 hours", "Rockfabrik - &Uuml;bach-Palenberg", "<a href=\"http://rockfabrik.com/\" target=\"_new\">info</a>"));
//items.add(new Item("saturday", "27-02-2016", "20.00 hours", "De Bosuil - Weert", "<a href=\"http://www.debosuil.nl/\" target=\"_new\">info</a>"));
//items.add(new Item("friday", "19-03-2016", "20.00 hours", "De Piek - Boxmeer", "<a href=\"http://www.depiek.com//\" target=\"_new\">info</a>"));
//items.add(new Item("saturday", "26-03-2016", "18.30 hours", "Paaspop - Schijndel", "<a href=\"http://www.paaspop.nl\" target=\"_new\">info</a>"));
//items.add(new Item("thursday", "05-05-2016", "20.00 hours", "Coverland - Ulft", "<a href=\"http://coverland.nl\" target=\"_new\">info</a>"));
//items.add(new Item("saturday", "01-10-2016", "20.00 hours", "Kleppentreffen (private)", ""));
%>

<div id="agenda" class="section">

  <h3 class="uk-text-center title">- 2017 -</h3>

  <br />

  <table class="my-table">

<%
for (Item item : items) {
%>
      <tr>
        <td><%= item.myDay %></td>
        <td><%= item.myDate %></td>
        <td><%= item.myTime %></td>
        <td><%= item.myLocation %></td>
        <td><%= item.myInfo %></td>
      </tr>
      <tr class="sep">
        <td><hr /></td>
      </tr>
<%
}
%>
<tr style="height:150px">
  <td colspan="5" class="uk-text-center"><h3 class="uk-text-center title" style="width:100%">- Past -</h3></td>
</tr>  
<%
for (Item item : pastItems) {
%>
      <tr>
        <td><%= item.myDay %></td>
        <td><%= item.myDate %></td>
        <td><%= item.myTime %></td>
        <td><%= item.myLocation %></td>
        <td><%= item.myInfo %></td>
      </tr>
      <tr class="sep">
        <td><hr /></td>
      </tr>
<%
}
%>
  </table>
  
</div>
