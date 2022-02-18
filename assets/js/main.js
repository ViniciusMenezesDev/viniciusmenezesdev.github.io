function random_number(first, last) {
    return Math.floor((Math.random() * (last - first + 1))) + first;
}

$(document).ready(function(){
    $('#fab').click(function(){
        var enterDesignMode = ($('#fab button i').text() == "visibility");
        $('#fab button i').text(enterDesignMode ? "edit" : "visibility");
        document.designMode = enterDesignMode ? "on" : "off";
    });

    // Bootstrap's tables are opt-in
    // https://stackoverflow.com/a/39703599/1657502
    $('table:not(.rouge-table)').addClass('table');
});
