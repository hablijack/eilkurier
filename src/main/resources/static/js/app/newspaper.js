var layoutReady = false;

var $grid = $('.collumns').imagesLoaded(function() {
	$grid.isotope({
		itemSelector : '.collumn',
		layoutMode : 'packery',
		percentPosition : true,
		masonry : {
			columnWidth : '.collumn-small'
		}
	});
	layoutReady = true;
});

var PageRendered = function() {
	return layoutReady;
};
