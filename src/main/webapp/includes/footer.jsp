<footer>
	<div class='multi-action'>
		<button class='action-button'>
			<span class='fa fa-plus'></span>
		</button>
		<ul class='actions'>
			<li>
				<a href="../../">
					<span class="fa fa-solid fa-user"></span>
				</a>
			</li>
<!-- 			<li>
				<a>
					<span class='fa fa-solid fa-arrow-right'></span>
				</a>
			</li>
			<li>
				<a>
					<span class='fa fa-solid fa-arrow-left'></span>
				</a>
			</li>		 -->	
			<li>
				<a >
					<span id="previousPage" class='fa fa-solid fa-chevron-left'></span>
				</a>
			</li>
		</ul>
	</div>
<script type="text/javascript">
	console.log("History aa: ", history)
	const actionButton = document.querySelector('.action-button');
	
	//Add a click event listener to the button
	actionButton.addEventListener('click', function() {
	 // Toggle the 'active' class when the button is clicked
	 if (this.classList.contains('active')) {
	     this.classList.remove('active');
	 } else {
	     this.classList.add('active');
	 }
	});
	
	document.getElementById("previousPage").addEventListener("click", function() {
	    history.back();
	    console.log("History: ", history)
	  });
	
</script>
</footer>