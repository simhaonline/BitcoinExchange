window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    barNum = 6
    labels = new Array(barNum)
    bgColors = new Array(barNum)
    bdColors = new Array(barNum)
    for i in [0...barNum]
        labels[i] = 'data' + i
        bgColors[i] = 'rgba(135, 206, 250, 0.5)'
        bdColors[i] = 'rgba(255, 255, 255, 1)'
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            datasets: [{
                label: '# of Votes',
                data: gon.bardata,
                backgroundColor: bgColors,
                borderColor: bdColors,
                borderWidth: 1
            }],
            labels: labels,
        },
        options: {
            scales: {
                yAxes: [{
                    scaleLabel: {
                        fontColor: "white"
                    },
                    gridLines: {
                        color: "rgba(255, 255, 255, 0.4)",
                        zeroLineColor: "white"
                    },
                    ticks: {
                        fontColor: "white",
                        beginAtZero: true,
                        suggestedMax: 250,
                        stepSize: 50
                    }
                }]
                xAxes: [{
                    scaleLabel: {
                        fontColor: "white"
                    },
                    gridLines: {
                        color: "rgba(255, 255, 255, 0.4)",
                        zeroLineColor: "white"
                    },
                    ticks: {
                        fontColor: "white"
                    }
                }]
            }
        }
    })
