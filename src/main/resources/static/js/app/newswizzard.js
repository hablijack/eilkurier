$(document).ready(function() {
	// Wizard
	$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
		var $target = $(e.target);
		if ($target.parent().hasClass('disabled')) {
			return false;
		}
	});
	$(".next-step").click(function(e) {
		var $active = $('.wizard .nav-tabs li.active');
		$active.next().removeClass('disabled');
		nextTab($active);
	});
	$(".prev-step").click(function(e) {
		var $active = $('.wizard .nav-tabs li.active');
		prevTab($active);
	});
	initCategoryDragNDrop();
	initCategorySort();
});

function initCategoryDragNDrop() {
	dragula([ document.querySelector('#usercategories ul'),
			document.querySelector('#categories ul') ]);
}

function initCategorySort() {
	var options = {
		valueNames : [ 'name' ]
	};
	var userList = new List('categories', options);
}

function nextTab(elem) {
	$(elem).next().find('a[data-toggle="tab"]').click();
	afterTabChanged();
}
function prevTab(elem) {
	$(elem).prev().find('a[data-toggle="tab"]').click();
	afterTabChanged()
}

function afterTabChanged() {
	if ($('.tab-pane:visible').attr('id') === 'step2') {
		var source = document.getElementById("feed-template").innerHTML;
		var template = Handlebars.compile(source);
		$('#feeds').html("");
		$.each($("#usercategories .categorydrop"), function(index, element) {
			var categoryId = $(element).data("categoryId");
			$.getJSON('/categories/' + categoryId + '/feeds.json', function(
					response) {
				$.each(response, function(index, element) {
					$('#feeds').append(template(element));
					$('[data-feedid=' + element.id + '] input')
							.bootstrapSwitch();
					$('[data-feedid=' + element.id + '] input').on(
							'switchChange.bootstrapSwitch',
							function(event, state) {
								if (state) {
									$('[data-feedid=' + element.id + ']')
											.addClass('active');
								} else {
									$('[data-feedid=' + element.id + ']')
											.removeClass('active');
								}
							});
				});
			});
		});
	} else if ($('.tab-pane:visible').attr('id') === 'step3') {
		var source = document.getElementById("feed-sorter-template").innerHTML;
		var template = Handlebars.compile(source);
		$('.feedsorter').html("");
		$.each($("#feeds .feedContainer.active"), function(index, element) {
			var id = $(element).data("feedid");
			$.getJSON('/feed/' + id + '.json', function(response) {
				$('.feedsorter').append(template(response));
			});
		});
		dragula([ document.querySelector('ul.feedsorter') ]);
	} else if ($('.tab-pane:visible').attr('id') === 'step4') {
		$.each($(".feedsorter li"), function(index, element) {
			var feedId = $(element).data('feedid');
			$.ajax({
				type : "POST",
				url : '/user/feed/' + feedId,
				data : 'index=' + index + '&' + $('#wizzardform').data('csrfName') + '=' + $('#wizzardform').data('csrfValue')
			});
		});
	}
}