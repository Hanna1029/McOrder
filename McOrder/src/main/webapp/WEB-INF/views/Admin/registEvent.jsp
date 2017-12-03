<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="content">

	<form action="" method="post" enctype="multipart/form-data">
		<div id="notice-article-detail" class="article-detail margin-large">
			<dl class="article-detail-row">
				<dt class="article-detail-title">제목</dt>
				<dd class="article-detail-data">
					&nbsp;<input name="eventTitle" />
				</dd>
			</dl>

			<dl class="article-detail-row">
				<dt class="article-detail-title">첨부파일</dt>
				<dd class="article-detail-data">
					&nbsp;<input type="file" id="file" name="file" />
				</dd>
			</dl>


			<div class="article-content">
				<textarea id="txtContent" class="eventContent" name="eventContent"></textarea>
			</div>

		</div>
		<p class="article-comment margin-small">
			<input class="btn-save button" type="submit" value="저장" /> <a
				class="btn-cancel button" href="manageEvent.htm">취소</a>
		</p>
	</form>
</div>
