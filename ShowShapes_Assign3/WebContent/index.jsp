<!-- Coding by Pingyi Chen -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="/ShowShapes_Assign3/Style/index.css">
  <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="https://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.4.2.js"></script>
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <title>ShowShapes</title>
</head>
<script type="text/javascript">
  $(document).ready(function(){
    $(".Mark").click(function(){
      $(".sidebar").show(1000);
      $(".Mark").hide();
      $(".applet").css("width","70%");
    });
  });

  
 
</script>
<body>

  <div style="height:100%;width:100%">
    
      <div class="Mark" id="blink"></div>
      <script type="text/javascript">
      function changeColor(){
        var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray";
        color=color.split("|");
        document.getElementById("blink").style.backgroundColor=color[parseInt(Math.random() * color.length)];
      }
      setInterval("changeColor()",200);
      </script>
    <div class="applet" style="position:relative z-index: -100;float: right;width: 100%;height:100%">
    <%
	String MSG="ShowYourMSGHere";
	String Shape="Oval";
	int X = 400;
	int Y = 400;
	String BGColor="black";
	String FGColor="red";
	String FTStyle = "BOLD";
	int FTSize = 20;
	String test1 = (String)request.getAttribute("Shape");
	String test2 = (String)request.getAttribute("MSG");
	String test3 = (String)request.getAttribute("BGColor");
	String test4 = (String)request.getAttribute("FGColor");
	String test5 = (String)request.getAttribute("X");
	String test6 = (String)request.getAttribute("Y");
	String test7 = (String)request.getAttribute("FTStyle");
	String test8 = (String)request.getAttribute("FTSize");

	//System.out.println(test5);
	
	if(test1!=null){
		Shape=test1;
	}
	if(test2!=null){
		MSG=test2;
	}
	if(test3!=null){
		BGColor=test3;
	}
	if(test4!=null){
		FGColor=test4;
	}
	if(test5!=null){
		X=Integer.valueOf(test5);
	}
	if(test6!=null){
		Y=Integer.valueOf(test6);
	}
	if(test7!=null){
		FTStyle=test7;
	}
	if(test8!=null){
		FTSize=Integer.valueOf(test8);
	}
	//System.out.println(FTStyle);
%>
	<applet code="applet.ShowShapes.class" codebase ="/ShowShapes_Assign3/applet/" width="100%" height="100%">
			<param name = "Message" value = "<%=MSG%>">
			<param name = "Shape" value = "<%=Shape%>">
			<param name = "Color" value ="<%=FGColor%>">
			<param name = "BGColor" value = "<%=BGColor%>">
			<param name = "X" value = "<%=X%>">
			<param name = "Y" value = "<%=Y%>">
			<param name = "FTStyle" value = "<%=FTStyle%>">
			<param name = "FTSize" value = "<%=FTSize%>">
	</applet>
    
    </div>
	<div style="z-index: -100;float: left;width: 30%;height:100%;">
	<form action="testServlet" method="get" id="dataFrom" style="height: 100%;">
      <div class="sidebar">
        <div class="sliderPages">
          <div class="ShapePage">
            <script type="text/javascript">
              $(function(){
                $('.Oval').hover(function(){
                  $(this).removeClass('Oval').addClass('OvalOn');
                }, function(){
                  $(this).removeClass('OvalOn').addClass('Oval');
                });
                $('.Oval').click(function(){
                  $('.Rectangle').hide(1000);
                  $('.RoundRectangle').hide(1000);
                  $('.Shape_Size').show(1000);
                  $('.BGColor').show(1000);
                  $("#Shape").val("Oval");

                });
                $('.RoundRectangle').hover(function(){
                  $(this).removeClass('RoundRectangle').addClass('RoundRectangleOn');
                }, function(){
                  $(this).removeClass('RoundRectangleOn').addClass('RoundRectangle');
                });
                $('.RoundRectangle').click(function(){
                  $('.Rectangle').hide(1000);
                  $('.Oval').hide(1000);
                  $('.Shape_Size').show(1000);
                  $('.BGColor').show(1000);
                  $("#Shape").val("RoundRectangle");
                });
                $('.Rectangle').hover(function(){
                  $(this).removeClass('Rectangle').addClass('RectangleOn');
                }, function(){
                  $(this).removeClass('RectangleOn').addClass('Rectangle');
                });
                $('.Rectangle').click(function(){
                  $('.Oval').hide(1000);
                  $('.RoundRectangle').hide(1000);
                  $('.Shape_Size').show(1000);
                  $('.BGColor').show(1000);
                  $("#Shape").val("Rectangle");
                });
                $('#Color1').click(function(){
                    $(this).css("backgroundColor","black");
                    $('#BGColor').val("black");
                  });
                $('#Color2').click(function(){
                    $(this).css("backgroundColor","blue");
                    $('#BGColor').val("blue");
                  });
                $('#Color3').click(function(){
                    $(this).css("backgroundColor","red");
                    $('#BGColor').val("red");
                  });
                $('#Color4').click(function(){
                    $(this).css("backgroundColor","orange");
                    $('#BGColor').val("orange");
                  });
                $('#Color5').click(function(){
                    $(this).css("backgroundColor","rgb(255,255,0)");
                    $('#BGColor').val("meganta");
                  });
                $('#Color6').click(function(){
                    $(this).css("backgroundColor","white");
                    $('#BGColor').val("white");
                  });
                $('#Color7').click(function(){
                    $(this).css("backgroundColor","yellow");
                    $('#BGColor').val("yellow");
                  });
                $('#Color8').click(function(){
                    $(this).css("backgroundColor","green");
                    $('#BGColor').val("green");
                  });
                $('#Color9').click(function(){
                    $(this).css("backgroundColor","pink");
                    $('#BGColor').val("pink");
                  });
                $('#Color10').click(function(){
                    $(this).css("backgroundColor","gray");
                    $('#BGColor').val("gray");
                  });
                
                $('#Color11').click(function(){
                    $(this).css("backgroundColor","darkGray");
                    $('#BGColor').val("darkGray");
                  });
                $('#Color12').click(function(){
                    $(this).css("backgroundColor","lightGray");
                    $('#BGColor').val("lightGray");
                  });
                $('#Color13').click(function(){
                    $(this).css("backgroundColor","cyan");
                    $('#BGColor').val("cyan");
                  });
                  
              });
              
              function ChangeColor(a){
            	  var color =a;
                var en = document.getElementById('BGColor');
                en.value = color;
              }
              
              
            </script>
            <p class="FollowingInfo">Set up your Shape</p>
            <div style="height:200px">
              <div class = "Oval"></div>
              <div class="RoundRectangle"></div>
              <div class="Rectangle"></div>
              <input style="display:none" name="Shape" id="Shape"/>
            </div>

            <div class="Shape_Size">
              <input type="text" name="X" placeholder="ShapeWidth(1-500)" onfocus="if (value =='ShapeWidth(1-500)' ){value =''}" onblur="if (value ==''){value='ShapeWidth(1-500)'}">
              <input type="text" name="Y" placeholder="ShapeHeight(1-500)" onfocus="if (value =='ShapeHeight(1-500)' ){value =''}" onblur="if (value ==''){value='ShapeHeight(1-500)'}">
            </div>
            <div class="BGColor">
              <p style="font-family:arial; font-size: 18px;text-align: center;">Choose the BackgroudColor</p>
              <button type="button" class="BGColorBlack" id="Color1" style="border-color:black" onclick="ChangeColor('black')"></button>
                  <button type="button" class="BGColorBlack" id="Color2" style="border-color:blue" onclick="ChangeColor('blue')"></button>
                  <button type="button" class="BGColorBlack" id="Color3" style="border-color:red" onclick="ChangeColor('red')"></button>
                  <button type="button"class="BGColorBlack" id="Color4"style="border-color:orange" onclick="ChangeColor('orange')"></button>
                  <button type="button"class="BGColorBlack" id="Color5"style="border-color:rgb(255,255,0)" onclick="ChangeColor('meganta')"></button>
                  <button type="button"class="BGColorBlack" id="Color6"style="border-color:white" onclick="ChangeColor('white')"></button>
                  <button type="button"class="BGColorBlack" id="Color7"style="border-color:yellow" onclick="ChangeColor('yellow')"></button>
                  <button type="button"class="BGColorBlack" id="Color8"style="border-color:green" onclick="ChangeColor('green')"></button>
                  <button type="button"class="BGColorBlack" id="Color9"style="border-color:pink" onclick="ChangeColor('pink')"></button>
                  <button type="button"class="BGColorBlack" id="Color10"style="border-color:gray" onclick="ChangeColor('gray')"></button>
                  <button type="button"class="BGColorBlack" id="Color11"style="border-color:darkGray" onclick="ChangeColor('darkGray')"></button>
                  <button type="button"class="BGColorBlack" id="Color12"style="border-color:LightGray" onclick="ChangeColor('lightGray')"></button>
                  <button type="button"class="BGColorBlack" id="Color13"style="border-color:cyan" onclick="ChangeColor('cyan')"></button>
              	<input  name="BGColor" id="BGColor" type="text" style="display:none"/>
            </div>
            <div class="Forward">
              <img src="/ShowShapes_Assign3/Style/icons/right.png" class="RightIcon">
              <img src="/ShowShapes_Assign3/Style/icons/left.png" class="LeftIcon" id="FirstLeft">
            </div>
          </div>
            <script type="text/javascript">
              $(function(){
                $('.RightIcon').click(function(){
                  $('.ShapePage').hide(500);
                  //$(this).hide();
                  $('.FontPage').show(1000);
                })
                $('#FirstLeft').click(function(){
                	$('.Oval').show(1000);
                    $('.RoundRectangle').show(1000);
                    $('.Rectangle').show(1000);
                    $('.Shape_Size').hide(1000);
                    $('.BGColor').hide(1000);
                });
              });
            </script>
            <div class="FontPage">
              <p class="FollowingInfo">Font SetUp</p>
              <div class="OtherInput">
                <div class="FGColor1" id="FGColor"></div>
                <div class="AllColor">
                  <input type="text" name="FGColor" id="ColorCount" class = "ColorCount" >
                  <button type="button" class="ColorCountButton" id="FGColor" style="background-color:black" onclick="Change('black')"></button>
                  <button type="button" class="ColorCountButton" id="FGColor" style="background-color:blue" onclick="Change('blue')"></button>
                  <button type="button" class="ColorCountButton" id="FGColor" style="background-color:red" onclick="Change('red')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:orange" onclick="Change('orange')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:rgb(255,255,0)" onclick="Change('meganta')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:white" onclick="Change('white')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:yellow" onclick="Change('yellow')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:green" onclick="Change('green')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:pink" onclick="Change('pink')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:gray" onclick="Change('gray')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:darkGray" onclick="Change('darkGray')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:LightGray" onclick="Change('LightGray')"></button>
                  <button type="button"class="ColorCountButton" id="FGColor"style="background-color:cyan" onclick="Change('cyan')"></button>
				</div>
            	<script type="text/javascript">
                    $(function(){
                      $('#FGColor').click(function(){
                        $('.AllColor').hide(500);
                      });
                      $('.FGColor1').click(function(){
                        $('.Font_Style').hide(500);
                        $('.Font_Size').hide(500);
                        $('.AllColor').show(500);
                       

                      });
                      $('.ColorCountButton').click(function(){
                        $('.Font_Style').show(500);
                        $('.Font_Size').show(500);
                        $('.AllColor').hide(500);
                        
                      });
                    });

                    function Change(a){
                      var color =a ;
                      var Elem = document.getElementById('FGColor');
                      console.log(color);
                      Elem.style.backgroundColor=color;
                      var en = document.getElementById('ColorCount');
                      en.value = color;
                      
                    }
                  </script>
                <div class="Font_Style">
					<input type="text" name="FTStyle" id="FTStyle" style="display: none"/>
                  	<select class="thisSelect" id="fontstyle">
                     <option class="thisOption" value="BOLD">BOLD</option>
                     <option class="thisOption" value="ITALIC">ITALIC</option>
                     <option class="thisOption" value="BOLD ITALIC">BOLD ITALIC</option>
                     <option class="thisOption" value="REGULAR">REGULAR</option>
                 	</select>
                 	<script type="text/javascript">
                  $(function(){
                    $("#fontstyle").change(function(){
                      var test = $("#fontstyle").val();
                      $('#FTStyle').val(test);
                    });
                  });

                </script>
                	
                </div>
                <div class="Font_Size">
                	
                  <input class="FTSize" name="FTSize" value="15"/>
               
					
					<script>
						
					</script>
                </div>

              </div>
              <div class="MSG">
                <input type="text" name="MSG" class ="FontInput" placeholder="Input center Message" onfocus="if (value =='Input center Message' ){value =''}" onblur="if (value ==''){value='Input center Message'}">
              </div>
              <div class="Submit">
                <img src="/ShowShapes_Assign3/Style/icons/check.png" class="RightIcon" id="Check">
                <img src="/ShowShapes_Assign3/Style/icons/left.png" class="LeftIcon" id="SecondLeft">
              </div>


              <script type="text/javascript">

                $(function(){
                  $('#SecondLeft').click(function(){
                    $('.ShapePage').show(1000);
                    //$(this).hide();
                    $('.FontPage').hide(500);
                  });
                  $('.FontInput').click(function(){
                    $('.OtherInput').show(1000);

                  });
                  
                  
                  $('#Check').click(function(){
                	  $('#dataFrom').submit();
                  });
                });
                function ChangeColor(){
                  var styleEle = document.getElementById('FGColor');
                  var value = document.getElementById('ColorCount').value;
                  //console.log(value);
                  styleEle.style.backgroundColor = value;
                }
              </script>

            </div>
          </div>
      </div>
    </form>
		
	</div>
   
</div>

 
</body>
</html>