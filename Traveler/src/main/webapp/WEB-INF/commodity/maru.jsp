<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="/js/lib/jquery-1.8.3.min.js" type='text/javascript'></script>  
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/js/flot/excanvas.min.js"></script><![endif]-->
     
    <script type="text/javascript" src="/js/flot/jquery.flot.min.js"></script>    
    <script type="text/javascript" src="/js/flot/jquery.flot.symbol.js"></script>
    <script type="text/javascript" src="/js/flot/jquery.flot.axislabels.js"></script>
     
    <script>
      function a(){
        	var json=${json};
        	console.log(json);

        	console.log(json[0].commodityBean.name);
        	console.log(json[0].cliquantity);
   }       
        
        
</script>
<script>


function test(){
	var json=${json};
	var a=json[0].commodityBean.name;
	var b=json[0].cliquantity;
	
	$("#total").html("<h3  style='color:#CC0000; margin:0px;padding:0px;'>五月份總搜尋數："+totalClick+"</h3>");
	d3.select("body").append("div").attr("id", "mydiv");
	//設定欲顯示的資料。
	
	var data = [{
	values: [HND,KIX,SEL,BKK,SIN],
	labels: ['東京羽田', '大阪關西','韓國首爾','泰國曼谷','新加坡', '東京成田'],
	type: 'pie'
	}];
	//設定框架大小。 
	var frame = {
	height: 700,
	width: 700};
	//使用Plotly畫出圓餅圖。 
	Plotly.newPlot('mydiv', data, frame);
}
</script>    
    
</head>
<body>
 

    <div style="margin:0px auto; width:800px;" class="content text-center">
			<div id="total"></div>
			<div id="mydiv"></div>
			<button class="btn-info" onclick="test()">五月統計</button> 
			<button class='btn' onclick='showTooltip()'>Q</button>
		</div>

    
    
</body>
</html>




