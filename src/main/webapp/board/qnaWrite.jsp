<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MakUSwag</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="xans-element- xans-board xans-board-writepackage board ">
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">Q&A</font>
						</h3>
					</div>
					<form id="boardWriteForm" name=""
						action="/exec/front/Board/write/5" method="post" target="_self"
						enctype="multipart/form-data">
						<input id="board_no" name="board_no" value="5" type="hidden" />
						<input id="product_no" name="product_no" value="0" type="hidden" />
						<input id="move_write_after" name="move_write_after"
							value="/board/free/list.html?board_no=5" type="hidden" /> <input
							id="cate_no" name="cate_no" value="" type="hidden" /> <input
							id="bUsePassword" name="bUsePassword" value="" type="hidden" />
						<input id="order_id" name="order_id" value="" type="hidden" /> <input
							id="is_post_checked" name="is_post_checked" value=""
							type="hidden" /> <input id="isExceptBoardUseFroalaImg"
							name="isExceptBoardUseFroalaImg" value="" type="hidden" /> <input
							id="isGalleryBoard" name="isGalleryBoard" value="" type="hidden" />
						<input id="a5de8f588ce99" name="a5de8f588ce99"
							value="90c5c2c59257572aaad9896dc0760aa1" type="hidden" />
						<div
							class="xans-element- xans-board xans-board-write post-editor ">
							<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
							<div class="form-group">
								<div class="form-row">
									<div class="form-block">
										<div class="form-field subject">
											<div class="field-label">제목</div>
											<select id="board_category" name="qnaCategory" value ="${qnaCategory }"
												fw-filter="" fw-label="" fw-msg="">
												<option value="1">입급/결제관련 문의</option>
												<option value="2">배송관련 문의</option>
												<option value="3">배송 전 변경/취소 문의</option>
												<option value="4">교환/반품 문의</option>
												<option value="5">상품관련 문의</option>
												<option value="6">기타 문의</option>
											</select><input id="subject" name="qnaTitle" fw-filter="isFill"
												fw-label="제목" fw-msg="" class="inputTypeText" placeholder="제목을 입력하세요"
												maxLength="125" value="${qnaTitle }" type="text" />
											<div class="checkbox"></div>
											<div class="checkbox"></div>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-block">
										<div class="form-field post-textarea">
											<div class="field-label">내용</div>

											<!-- CSS -->
											<link rel="stylesheet"
												href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css?vs=2402071282">
											<link rel="stylesheet"
												href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css?vs=2402071282">

											<!-- HTML -->
											<textarea style="width: 100%;" name="qnaContent" id="content" value = "${qnaContent }"
												class="ec-fr-never-be-duplicated"></textarea>
											<input type="hidden" id="content_hidden"
												fw-filter="isSimplexEditorFill" fw-label="내용"
												value="EC_FROALA_INSTANCE" />

											<!-- JavaScript -->
											<script type="text/javascript"
												src="//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js?vs=2402071282"></script>
											<script type="text/javascript"
												src="//img.echosting.cafe24.com/editors/froala/3.2.2/js/froala_editor.pkgd.min.js?vs=2402071282"></script>
											<script type="text/javascript"
												src="//img.echosting.cafe24.com/editors/froala/js/i18n/ko_KR.js?vs=2402071282"></script>

											<script>
												if (FroalaEditor.PLUGINS
														&& FroalaEditor.PLUGINS.url)
													delete FroalaEditor.PLUGINS.url; // ECHOSTING-518735
											</script>

											<!-- Run Froala Script -->
											<script type="text/javascript" src="./js/write.js"></script>

											</script>
										</div>
										<div class="field-label">첨부파일</div>
										<input name="qnaImage" type="file">
									</div>
								</div>
								<div class="form-block">
									<div class="form-field">
										<input name="attach_file[]" type="file">
									</div>
								</div>
								<div class="form-block">
									<div class="form-field">
										<input name="attach_file[]" type="file">
									</div>
								</div>
							</div>
						</div>
						</form>
						<div class="form-action">
							<a href="./qnaWriteSubmit.do"
								class="button primary-button"><span>SUBMIT</span></a>
						</div>
				</div>
				<!-- 여기까지 Swag~ -->

					<!-- ============================== [[ Body  section]] ==============================-->

					<!-- =============================  [[ Footer section ]]  ============================= -->

					<%@ include file="../include/footer.jsp"%>

				</div>
			</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>
