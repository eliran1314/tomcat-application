<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "2012"); map.put("y", 19200); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2013"); map.put("y", 24500); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2014"); map.put("y", 19500); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2015"); map.put("y", 15000); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2016"); map.put("y", 14700); list.add(map);
 
String dataPoints1 = gsonObj.toJson(list);
 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "2012"); map.put("y", 20000); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2013"); map.put("y", 18400); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2014"); map.put("y", 22300); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2015"); map.put("y", 19700); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2016"); map.put("y", 7580); list.add(map);
 
String dataPoints2 = gsonObj.toJson(list);
 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "2012"); map.put("y", 39000); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2013"); map.put("y", 35900); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2014"); map.put("y", 41000); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2015"); map.put("y", 35900); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "2016"); map.put("y", 29300); list.add(map);
 
String dataPoints3 = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,	
	title: {
		text: "Abrasives Exports in US"
	},
	axisX: {
		title: "Year"
	},
	axisY: {
		title: "Exports (in tons)",
		labelFormatter: addSymbols
	},
	toolTip: {
		shared: true,
		reversed: true
	},
	legend: {
		verticalAlign: "center",
		horizontalAlign: "right",
		reversed: true,
		cursor: "pointer",
		itemclick: toggleDataSeries
	},
	data: [{
		type: "stackedArea",
		name: "Fused Aluminum Oxide",      
		showInLegend: true,
		yValueFormatString: "#,### tons",
		dataPoints: <%out.print(dataPoints1);%>
	},{
		type: "stackedArea",
		name: "Silicon Carbide",
		showInLegend: true,
		yValueFormatString: "#,### tons",
		dataPoints: <%out.print(dataPoints2);%>
	},{
		type: "stackedArea",
		name: "Metallic Abrasives",
		showInLegend: true,
		yValueFormatString: "#,### tons",
		dataPoints: <%out.print(dataPoints3);%>
	}]
});
chart.render();
 
function addSymbols(e) {
	var suffixes = ["", "K", "M", "B"];
	var order = Math.max(Math.floor(Math.log(e.value) / Math.log(1000)), 0);
 
	if (order > suffixes.length - 1)
		order = suffixes.length - 1;
 
	var suffix = suffixes[order];
	return CanvasJS.formatNumber(e.value / Math.pow(1000, order)) + suffix;
}
 
function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else {
		e.dataSeries.visible = true;
	}
	e.chart.render();
}
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>   
