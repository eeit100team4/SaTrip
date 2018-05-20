<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
						<a href="/Traveler" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href=""><i class="icon-airplane"></i>Traveler</a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a href="/Traveler"><i class="fas fa-plane"></i><font color="orange">機票</font></a></li>
							<li><a href="/Traveler/_Hotel/DisplayHotel"><i class="fas fa-home"></i><font color="orange">飯店</font></a></li>
								<li><a href="/Traveler/theme/themeTitles" class="fh5co-sub-ddown"><i class="fas fa-globe"></i><font color="orange">主題旅遊</font></a>
									<!-- 下面這塊ul以後會刪掉 -->
									<ul class="fh5co-sub-menu">
										<li><a href="/Traveler/theme/titles">抓title</a></li>
										<li><a href="/Traveler/theme/allProducts">顯示全產品</a></li>
										<li><a href="/Traveler/theme/allJourneys">顯示全行程</a></li>
										<li><a href="/Traveler/theme/applications">顯示全報名表</a></li>
									</ul>
									</li>
								
								<li><a href="/Traveler/commlistfront"><i class=	"fas fa-cart-arrow-down"></i><font color="orange">紅利商品</font></a></li>
								<li><a href="/Traveler/contactus/contactusopinion"><i class="fas fa-phone-square"></i><font color="orange">客服中心</font></a></li>
							
								<li><a href='/Traveler/member/login'><i class="far fa-user-circle"></i><font color="orange">登入/註冊</font></a>
							<!--	<c:choose>
									<c:when test="${userName!=null}">您好，${userName}  <a href='member/logout.do'> 登出</a>
									</c:when>
								<c:otherwise><a href='member/register'>註冊</a>/<a href='member/login'>登入</a></c:otherwise>
								</c:choose>-->
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</header>