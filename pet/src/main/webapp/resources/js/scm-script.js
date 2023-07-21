$(function() {
  $('.datepicker').datepicker({dateFormat: 'yy-mm-dd'});

  // Function to format date in "yyyy-MM-dd" format
  dateFormatter = function(date) {
      let year = date.getFullYear();
      let month = ("0" + (date.getMonth() + 1)).slice(-2);
      let day = ("0" + date.getDate()).slice(-2);
      return year + "-" + month + "-" + day;
  }

  // Function to update end date based on start date and button click
  updateEndDate = function(period) {
      let endDate = new Date($("#startDate").val());

      switch (period) {
          case 1:
              endDate.setDate(endDate.getDate() + 0);
              break;
          case 2:
              endDate.setDate(endDate.getDate() + 7);
              break;
          case 3:
              endDate.setMonth(endDate.getMonth() + 3);
              break;
              case 3:
                endDate.setMonth(endDate.getMonth() + 6);
                break;
      }

      $("#endDate").val(dateFormatter(endDate));
  }

  // Attach event listener to filterDate buttons
  $("button[name='filterDate']").click(function() {
      let period = parseInt($(this).val());
      updateEndDate(period);
  });
});


$(function(){
  $('.gnb>li').hover(function(){
      $(this).find('.lnb').stop().slideToggle();
  });
});

const ctx = document.getElementById('myChart');

new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    datasets: [{
      label: '2022 총 판매금액',
      data: [4600000, 9000000, 8000000, 7000000, 5260000, 6600000,2540000, 7590000, 6250000, 4650000, 8520000, 6910000],
      borderWidth: 1,
    }]
  },
  options: {
    scales: {
        y: {
            max: 10000000,
            ticks: {
                callback: value => `${value / 1000} 만`
            }
        }
    }
  }
});

