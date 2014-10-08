//Flot Pie Chart
$(function() {

    var data = [{
        label: "Word",
        data: 1
    }, {
        label: "Excel",
        data: 1
    }, {
        label: "Pics",
        data: 1
    }, {
        label: "Movies",
        data: 1
    }, {
        label: "Others",
        data: 1
    }];

    var plotObj = $.plot($("#flot-pie-chart"), data, {
        series: {
            pie: {
                show: true
            }
        },
        grid: {
            hoverable: true
        },
        tooltip: true,
        tooltipOpts: {
            content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
            shifts: {
                x: 20,
                y: 0
            },
            defaultTheme: false
        }
    });

});
