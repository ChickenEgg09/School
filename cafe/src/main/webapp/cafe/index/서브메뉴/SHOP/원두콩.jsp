<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String islogin = (String)session.getAttribute("islogin");	
	String loginid = (String)session.getAttribute("loginid");
%>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../../../css/쇼핑.css">
    <link rel="stylesheet" type="text/css" href="../../../css/Footer.css">
    <link rel="stylesheet" type="text/css" href="../../../css/Header.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../../../js/shop.js"></script>
</head>

<body>
    <header>
        <div class="top">
            <ul>
                <li>
                    <div class="logo">
                        <a href="../home.jsp">
                            <img src="../../../images/logo.png" alt="로고">
                        </a>
                    </div>
                </li>
                <li>
                    <nav class="menu" style="width: 1040px;">
                        <ul class="navi">
                            <li style="width: 200px;"><a href="../인사말.jsp" onMouseOver='this.innerHTML="ABOUT"' onMouseOut='this.innerHTML="인사말"'>인사말</a></li>
                            <li style="width: 200px;" class="active"><a href="쇼핑.jsp" onMouseOver='this.innerHTML="SHOP"' onMouseOut='this.innerHTML="쇼핑"'>쇼핑</a></li>
                            <li style="width: 40px;"><a href="장바구니/basket.jsp" style="width: 40px; height: 40px; margin: 0 20px;"><img style="width: 40px; height: 40px" src="../../../images/장바구니.jpg"></a>
                            <li style="width: 200px;"><a href="../메뉴판.jsp" onMouseOver='this.innerHTML="MENU"' onMouseOut='this.innerHTML="메뉴"'>메뉴</a></li>
                            <li style="width: 200px;"><a href="../게시판.jsp" onMouseOver='this.innerHTML="COMMUNITY"' onMouseOut='this.innerHTML="커뮤니티"'>커뮤니티</a></li>
                            <li style="width: 200px;"><a href="../오시는 길.jsp" onMouseOver='this.innerHTML="WAY TO COME"' onMouseOut='this.innerHTML="오시는 길"'>오시는 길</a></li>
                        </ul>
                    </nav>
                </li>
                <li class="login">
                <%
                if(islogin == null) {
               		out.println("<a href='../../가입/login.jsp'>로그인/회원가입</a>");
                }else{
                	String cmp = "ok";
                	if(islogin.compareTo(cmp) == 0){                
                		out.println("<a href='../../가입/logout.jsp'>로그아웃</a>");
                	}else{ 
                		out.println("<a href='../../가입/logout.jsp'>로그인/회원가입</a>");
                	}
                }
                %>
                </li>
            </ul>
        </div>
    </header>
    <div class="wrap" style="margin-top: 30px">
        <div class="contents-shop">
            <div class="imgshop">
                <img src="../../../images/원두콩.png">
            </div>
            <div class="detail">
                <div class="infoArea">
                    <h2 class="title">[갤러리 앨리스] 10월 원두콩</h2>
                    <span class="notes">
                        <em class="noteTit">
                            "500g 31,000원"
                        </em>
                    </span>
                    <em class="price">31,000원</em>
                </div>
                <div class="subInfo">
                    <dl class="infoList togType2">
                        <dt class>로스팅</dt>
                        <dd class>2023.10.04</dd>
                        <dt class>배송안내</dt>
                        <dd>
                            <p class="fs">예약 배송 상품과 일반 상품을 같이 구매하는 경우 예약 발송일에 함께 발송됩니다.</p>
                        </dd>
                        <dd>
                            <p class="fs">상품별 출고예정일이 다를시 가장 늦은 상품 기준으로 모두 함께 배송됩니다.</p>
                        </dd>
                        <div class="optionList togType2">
                            <dt class="sltTitle">분쇄</dt>
                            <dd>
                                <div id="crushOptionWrapper">
                                    <select id="crushOptionSelect" class="select-option">
                                        <option hidden>선택</option>
                                        <option value="갈지않음">갈지않음</option>
                                        <option value="에스프레소">에스프레소</option>
                                        <option value="모카포트&더치">모카포트&더치</option>
                                        <option value="드립&커피메이커">드립&커피메이커</option>
                                        <option value="프렌치프레소">프렌치프레소</option>
                                    </select>
                                </div>
                            </dd>
                            <dt class="sltBody"  id="weightText" style="display: none;"><br>중량</dt>
                            <dd>
                                <div id="weightOptionWrapper" style="display: none;">
                                    <select id="weightOption" class="select-option">
                                        <option hidden>선택</option>
                                        <option value="500g">500g</option>
                                    </select>
                                </div>
                            </dd>
                        </div>
                    </dl>
                    <div id="slt" style="display: none;">
                        <div class="sltft">
                        </div>
                        <div class="slt-but">
                            <button id="decrementCount">-</button>
                            <span class="count">0</span>
                            <button id="incrementCount">+</button>
                        </div>
                        <a href class="slt-btn">
                            X
                        </a>
                        <div class="slt-price">
                            <span>31,000</span>원
                        </div>
                    </div>
                    <div id="shop-mon">
                        <div class="shop-money">
                            총 상품금액 <span>0</span> 원
                        </div>
                    </div>
                    <a href class="shop-pay">
                        구매하기
                    </a>
                    <a href class="shop-bask" id="shop-btn">
                        장바구니
                    </a>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="bottom">
            <div class="btlogo">
                <img src="../../../images/ftlogo.png" alt="하단로고">
            </div>
            <div class="copy">
                <ul>
                    <li>상호 : Gallery Alice | 대표 : Cute | 주소 : 광명시 경기도 광명시 <br>
                        사업자등록번호 : 123-45-67890 | 전화번호 : 전화번호 : 02-1234-1234 | 이메일 : qwer1234@naver.com
                    </li>
                    <div class="sns">
                        <li><a href="https://www.facebook.com/people/%EA%B0%A4%EB%9F%AC%EB%A6%AC%EC%95%A8%EB%A6%AC%EC%8A%A4/100069607637396/"
                                target="_blank">
                                <img src="../../../images/sns1.jpg" alt="sns1"></a></li>
                        <li><a href="https://cafegalleryalice.modoo.at/" target="_blank">
                                <img src="../../../images/sns2.png" alt="sns2"></a></li>
                        <li><a href="https://www.instagram.com/galleryalice_cafe/" target="_blank">
                                <img src="../../../images/sns3.jpg" alt="sns3"></a></li>
                    </div>
                </ul>
            </div>
            <div class="copye">
                Copyright ⓒ Gallery Alice All rights 20503 kim
            </div>
        </div>
    </footer>
</body>
</html>