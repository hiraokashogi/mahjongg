
$(function(){
//  max_length = $('.point_table').find("tr").length - 2;
  max_length = $('.point').length;
  
  dpoint = parseInt($(".default_point").text())
  bpoint = parseInt($(".back_point").text())
  status_column = 5;
  user_count = 4;
  user = [0,0,0,0];
  user_t = [0,0,0,0];
  user_r = [0,0,0,0];

  for(i = 0 ; i < max_length ; i++ )
  {
    obj = $($(".point")[i])
    obj_num = parseInt( obj.text() )
    user_num = i % user_count;
    count_row = Math.floor( i / user_count + 1 );

    if( !isNaN( obj_num ) )
    {
      user[ user_num ] += obj_num;
    }
    if( obj_num > 0 )
    {
      user_t[ user_num ]++;
    }
    if( obj_num < 0 && $($($('.point_table').find("tr")[ count_row ] ).children()[ status_column ]).text() == "ロン"  )
    {
      user_r[ user_num ]++;
    }
  }




//  for( i = 1 ; i < max_length; i++ )
//  {
//    for( j = 0 ; j < user_count ; j++ )
//    {
//      if( !isNaN(parseInt($($($('.point_table').find("tr")[i]).children()[j]).text())))
//      {   
//        user[j] += parseInt($($($('.point_table').find("tr")[i]).children()[j]).text())
//      }
//      if( parseInt($($($('.point_table').find("tr")[i]).children()[j]).text()) > 0 )
//      {
//        user_t[j]++
//      }
//      if( parseInt($($($('.point_table').find("tr")[i]).children()[j]).text()) < 0 && $($($('.point_table').find("tr")[i]).children()[4]).text() == "ロン" )
//      {
//        user_r[j]++
//      }
//    user[i]2 += parseInt($($($('.point_table').find("tr")[i]).children()[1]).text())
//    user[i]3 += parseInt($($($('.point_table').find("tr")[i]).children()[2]).text())
//    user[i]4 += parseInt($($($('.point_table').find("tr")[i]).children()[3]).text())
//    }
//  }
  for( j = 0 ; j < user_count ; j++ )
  {
    if(  user[j] != 0 )
    {
      $($(".user_totalpoint")[j]).text(user[j] + dpoint )
    }
    $($(".user_sta")[j]).text(user_t[j] + "/" + user_r[j])
//  $($(".user_totalpoint")[1]).text(user2)
//  $($(".user_totalpoint")[2]).text(user3)
//  $($(".user_totalpoint")[3]).text(user4)
  }








});


