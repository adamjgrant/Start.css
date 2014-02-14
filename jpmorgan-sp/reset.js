// Removes all inline styles except for display: none

var $junk = $('div[style], td[style], img[style], table[style]');
var $hidden = $('div[style="display:none"], div[style="display: none"], div[style="display:none;"], div[style="display: none;"]');
var $unselectable = $('[unselectable]');
$($junk).attr('style', '');
$($unselectable).removeAttr('unselectable');
$($hidden).hide();
