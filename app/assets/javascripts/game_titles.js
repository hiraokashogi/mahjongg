
$(function(){
  max_length = $('.point_table').find("tr").length - 2;
 
  user1 = 0;
  user2 = 0;
  user3 = 0;
  user4 = 0;

  for( i = 1 ; i < max_length; i++ )
  {

    user1 += parseInt($($($('.point_table').find("tr")[i]).children()[0]).text())
    user2 += parseInt($($($('.point_table').find("tr")[i]).children()[1]).text())
    user3 += parseInt($($($('.point_table').find("tr")[i]).children()[2]).text())
    user4 += parseInt($($($('.point_table').find("tr")[i]).children()[3]).text())
  }
  $($(".user_totalpoint")[0]).text(user1)
  $($(".user_totalpoint")[1]).text(user2)
  $($(".user_totalpoint")[2]).text(user3)
  $($(".user_totalpoint")[3]).text(user4)
});


