<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="helpquestion_form" name="helpquestion_form"
		action="helpquestion" method="post" enctype="multipart/form-data"
		role="form" data-parsley-validate="true">

		<div class="vc_row wpb_row vc_row-fluid">
			<div
				class="wpb_column vc_column_container vc_col-sm-6 sc_layouts_column_icons_position_left">
				<div class="vc_column-inner ">
					<div class="wpb_wrapper">
						<div id="sc_content_667201783"
							class="sc_content color_style_default sc_content_default sc_content_width_90p sc_float_center">
							<div class="sc_content_container">
								<div id="sc_title_1101794633"
									class="sc_title color_style_default sc_title_default">
									<h6
										class="sc_item_subtitle sc_title_subtitle sc_align_left sc_item_title_style_default">FAQ</h6>
									<h3
										class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default">자주
										묻는 질문</h3>
									<div class="sc_item_descr sc_title_descr sc_align_left">
										<p>웹 어플리케이션 개발에 관하여 자주 묻는 질문들입니다.</p>
									</div>
								</div>
								<!-- /.sc_title -->
								<div class="vc_empty_space" style="height: 1em">
									<span class="vc_empty_space_inner"></span>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 프로그래밍 언어</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>쿠빌은 웹 어플리케이션 개발 시 PHP 언어만을 이용합니다. 리뉴얼 개발 시 Spring/JSP로
											작성된 코드는 참고 가능합니다.</p>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 웹 프레임워크</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>
											쿠빌은 웹 어플리케이션 개발 시 <a href="/phalcon-php/" target="_blank"
												rel="noopener">팔콘 PHP 프레임워크</a>를 사용합니다. 리뉴얼 개발 시 기존 코드 바탕에서
											개발하는 경우가 아닌 이상 다른 PHP 프레임워크는 사용하지 않습니다.
										</p>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 통합개발환경</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>
											쿠빌은 웹 어플리케이션 개발을 위해 특별한 통합개발환경을 사용을 요구하지 않습니다. 다만, <a
												href="https://ko.wikipedia.org/wiki/%EB%84%B7%EB%B9%88%EC%A6%88"
												target="_blank" rel="noopener">넷빈즈</a> 사용을 선호합니다.
										</p>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 웹 서버</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<ul class="trx_addons_list_success">
											<li><a href="https://httpd.apache.org/">Apache</a></li>
											<li><a href="https://nginx.org/">Nginx</a></li>
										</ul>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 데이터베이스</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>
											쿠빌은 웹 어플리케이션 개발 시 <a href="/postgresql/" target="_blank"
												rel="noopener">포스트그레스큐엘 데이터베이스</a>를 우선적으로 사용합니다. 리뉴얼 개발 시 기존
											코드 바탕에서 개발하는 경우가 아닌 이상 다른 데이터베이스는 사용하지 않습니다.
										</p>
										<ul class="trx_addons_list_success">
											<li><a href="https://www.postgresql.org/"
												target="_blank" rel="noopener">PostgreSQL</a></li>
											<li><a href="https://www.mysql.com/" target="_blank"
												rel="noopener">MySQL</a> / <a href="https://mariadb.com/"
												target="_blank" rel="noopener">MariaDB</a></li>
										</ul>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>데이터 마이그레이션 가능 여부</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>
											리뉴얼 개발 시 <a href="https://www.postgresql.org/"
												target="_blank" rel="noopener">PostgreSQL</a> 또는&nbsp;<a
												href="https://www.mysql.com/" target="_blank" rel="noopener">MySQL</a>
											/ <a href="https://mariadb.com/" target="_blank"
												rel="noopener">MariaDB</a> 이 아닌 데이터베이스로부터의 데이터 마이그레이션(이전)
											가능합니다. 경우에 따라 일부 데이터는 이전이 불가능 할 수 있습니다.
										</p>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>지원하는 서버 운영체제</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>RedHat, Debian 리눅스 계열의 운영체제</p>
										<ul class="trx_addons_list_success">
											<li><a
												href="https://aws.amazon.com/ko/amazon-linux-ami/"
												target="_blank" rel="noopener">Amazon Linux AMI</a></li>
											<li><a href="https://namu.wiki/w/CentOS" target="_blank"
												rel="noopener">CentOS</a></li>
											<li><a
												href="https://namu.wiki/w/%EC%9A%B0%EB%B6%84%ED%88%AC"
												target="_blank" rel="noopener">Ubuntu</a></li>
										</ul>
									</div>
								</div>
								<div
									class="vc_toggle vc_toggle_default vc_toggle_color_default  vc_toggle_size_md">
									<div class="vc_toggle_title">
										<h4>신규 개발이 아닌 리뉴얼 개발 가능 여부</h4>
										<i class="vc_toggle_icon"></i>
									</div>
									<div class="vc_toggle_content">
										<p>기존 웹 어플리케이션의 문제점을 개선하거나 기능을 추가하는 리뉴얼 개발도 가능합니다. 고객사에서
											기존에 개발된 코드를 활용하기를 원할지라도, 리뉴얼의 범위와 기존 코드의 상태에 따라 기존 소스 코드를
											사용하지 못할 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>