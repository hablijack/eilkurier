$(document).ready( function() {
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
    dragula(
            [ document.querySelector('#usercategories ul'), document.querySelector('#categories ul') ]
    );
}

function initCategorySort() {
    var options = {
            valueNames : [ 'name' ]
    };
    var userList = new List('categories', options);
}

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}