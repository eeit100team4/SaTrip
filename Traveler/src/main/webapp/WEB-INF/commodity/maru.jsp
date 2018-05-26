<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Insert title here</title>

<style>



</style>

</head>
<body>

<button class='btn' onclick='a()'>QQQ</button>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script>
function a(){
	var json=${json};
	console.log(json);

	console.log(json[0].commodityBean.name);
}




Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '兌換的物品數量'
    },
    tooltip: {
        pointFormat: '{json.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{json.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [
        {
            name: 'Chrome',
            y: 61.41,
            sliced: true,
            selected: true
        }, 
        {
            name: 'Internet Explorer',
            y: 11.84
        }, 
      
       
       
       
        
       ]
    }]
});


// function load(){
// 	var xmlHttp=new XMLHttpRequest();
	
// 		if(xmlHttp.status==200){
	
// 			xmlHttp.open("get","json",false);
// 			xmlHttp.send();

// 		}
// 	});







</script>


	<div class="container">

<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto">


</div>

</div>



</body>
</html>