<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="accordion" id="accordionExample">
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseOne">
				Ch01. 개발 한경 구축 
			</button>
		</h2>
		<div id="collapseOne" class="accordion-collapse collapse show"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="/springframework/ch01/content">content</a></li>
					<li>Item02</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseTwo"
				aria-expanded="false" aria-controls="collapseTwo">
				Ch02.
			</button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li>Item01</li>
					<li>Item02</li>
				</ul>				
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseThree"
				aria-expanded="false" aria-controls="collapseThree">
				Ch03.
			</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li>Item01</li>
					<li>Item02</li>
				</ul>
			</div>
		</div>
	</div>
</div>
