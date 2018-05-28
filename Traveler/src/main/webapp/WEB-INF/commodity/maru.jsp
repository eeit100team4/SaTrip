<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="/js/lib/jquery-1.8.3.min.js" type='text/javascript'></script>  
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/js/flot/excanvas.min.js"></script><![endif]-->
     
  
    
    <!-- D3 函式庫 --> 
<script src=https://d3js.org/d3.v3.min.js charset="utf-8"></script>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script src="/Traveler/js/airplain/backLeft.js"></script>
     
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
	
	var a1=json[1].commodityBean.name;
	var a2=json[2].commodityBean.name;
	var a3=json[3].commodityBean.name;
	var a4=json[4].commodityBean.name;
	var a5=json[5].commodityBean.name;
	var a6=json[6].commodityBean.name;
	var a7=json[7].commodityBean.name;
	var a8=json[8].commodityBean.name;
	
	var b1=json[1].cliquantity;
	var b2=json[2].cliquantity;
	var b3=json[3].cliquantity;
	var b4=json[4].cliquantity;
	var b5=json[5].cliquantity;
	var b6=json[6].cliquantity;
	var b7=json[7].cliquantity;
	var b8=json[8].cliquantity;
	
	
	
	
// 	$("#total").html("<h3  style='color:#CC0000; margin:0px;padding:0px;'>五月份總搜尋數："+totalClick+"</h3>");
	d3.select("body").append("div").attr("id", "mydiv");
	//設定欲顯示的資料。
	
	var data = [{
	values: [b,b1,b2,b3,b4,b5,b6,b7],
	labels: [a,a1,a2,a3,a4,a5,a6,a7],
	type: 'pie'
	}];
	//設定框架大小。 
	var frame = {
	height: 600,
	width: 600};
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
		</div>

    
    
</body>
</html>




