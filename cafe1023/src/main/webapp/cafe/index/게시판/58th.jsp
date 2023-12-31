<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String islogin = (String)session.getAttribute("islogin");	
	String loginid = (String)session.getAttribute("loginid");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../css/nt.css">
    <link rel="stylesheet" type="text/css" href="../../css/Footer.css">
    <link rel="stylesheet" type="text/css" href="../../css/Header.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>6대 다류 차회</title>
</head>
<body>
    <header>
        <div class="top">
            <ul>
                <li>
                    <div class="logo">
                       <a href="../home.jsp">
                            𝓖𝓪𝓵𝓵𝓮𝓻𝔂 𝓐𝓵𝓲𝓬𝓮
                        </a>
                    </div>
                </li>
                <li>
                    <nav class="menu" style="width: 1040px;">
                        <ul class="navi">
                            <li style="width: 200px;"><a href="../서브메뉴/인사말.jsp" onMouseOver='this.innerHTML="ABOUT"' onMouseOut='this.innerHTML="인사말"'>인사말</a></li>
                            <li style="width: 200px;"><a href="../서브메뉴/쇼핑.jsp" onMouseOver='this.innerHTML="SHOP"' onMouseOut='this.innerHTML="쇼핑"'>쇼핑</a></li>
                            <li style="width: 40px;"><a href="../서브메뉴/SHOP/장바구니/basket.jsp" style="width: 40px; height: 40px; margin: 0 20px;"><img src="../../images/장바구니.jpg"></a>
                            <li style="width: 200px;"><a href="../서브메뉴/메뉴판.jsp" onMouseOver='this.innerHTML="MENU"' onMouseOut='this.innerHTML="메뉴"'>메뉴</a></li>
                            <li style="width: 200px;"><a href="../서브메뉴/게시판.jsp" onMouseOver='this.innerHTML="COMMUNITY"' onMouseOut='this.innerHTML="커뮤니티"'>커뮤니티</a></li>
                            <li style="width: 200px;"><a href="../서브메뉴/오시는 길.jsp" onMouseOver='this.innerHTML="WAY TO COME"' onMouseOut='this.innerHTML="오시는 길"'>오시는 길</a></li>
                        </ul>
                    </nav>
                </li>
                <li class="login">
                <%
                if(islogin == null) {
               		out.println("<a href='../가입/login.jsp'>로그인/회원가입</a>");
                }else{
                	String cmp = "ok";
                	if(islogin.compareTo(cmp) == 0){                
                		out.println("<a href='../가입/logout.jsp'>로그아웃</a>");
                	}else{ 
                		out.println("<a href='../가입/logout.jsp'>로그인/회원가입</a>");
                	}
                }
                %>
                </li>
            </ul>
        </div>
    </header>
    <div class="wrp">
        <div class="wrapp">
            <div class="noti-wrap">
                <div class="noti-view-wrap">
                    <div class="noti-view">
                        <div class="title">
                            58th 원더랜드콘서트
                        </div>
                        <div class="info">
                            <dl>
                                <dt>번호</dt>
                                <dd>주요공지</dd>
                            </dl>
                            <dl>
                                <dt>글쓴이</dt>
                                <dd>관리자</dd>
                            </dl>
                            <dl>
                                <dt>날짜</dt>
                                <dd>2023.02.11</dd>
                            </dl>
                            <dl>
                                <dt>조회</dt>
                                <dd>1057</dd>
                            </dl>
                        </div>
                        <div class="cont">
                            갤러리에서 즐기는 콘서트<br>
58회 원더랜드콘서트 "Pete Jung Trio" - '가지 각색 - All Sorts of Things'<br><br>

2017년, 2018년 앨리스에서 공연했던 피트정밴드는<br>
한국적 선율에 라틴재즈를 결합한 독특한 사운드를 선보여왔는데<br>
이번 공연에서는 어떤 새로운 음색을 보여줄 지 기대가 됩니다.<br><br>


2023. 3. 11(sat) 5pm<br>
갤러리앨리스<br>
                        </div>
                    </div>
                    <div class="nt-wrap">
                        <a href="../서브메뉴/공지사항.jsp" class="on">목록</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="bottom">
            <div class="btlogo">
                <img src="../../images/ftlogo.png" alt="하단로고">
            </div>
            <div class="copy">
                <ul>
                    <li>상호 : Gallery Alice | 대표 : Cute | 주소 : 광명시 경기도 광명시 <br>
                        사업자등록번호 : 123-45-67890 | 전화번호 : 전화번호 : 02-1234-1234 | 이메일 : qwer1234@naver.com
                    </li>
                    <div class="sns">
                        <li><a href="https://www.facebook.com/people/%EA%B0%A4%EB%9F%AC%EB%A6%AC%EC%95%A8%EB%A6%AC%EC%8A%A4/100069607637396/"
                                target="_blank">
                                <img src="../../images/sns1.jpg" alt="sns1"></a></li>
                        <li><a href="https://cafegalleryalice.modoo.at/" target="_blank">
                                <img src="../../images/sns2.png" alt="sns2"></a></li>
                        <li><a href="https://www.instagram.com/galleryalice_cafe/" target="_blank">
                                <img src="../../images/sns3.jpg" alt="sns3"></a></li>
                    </div>
                </ul>
            </div>
            <div class="copye">
                Copyright ⓒ Gallery Alice All rights 20503 kim
            </div>
        </div>
    </footer>
</div>
</body>
</html>