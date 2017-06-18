$(function () {
    $('.itemmatchHeight, .item').matchHeight();
    $('.search-again-filter_select2').select2({
        language: {
            noResults: function (params) {
                return "موردی یافت نشد.";
            }
        }
    });
});