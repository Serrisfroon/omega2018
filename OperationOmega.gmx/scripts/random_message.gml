//This script picks a message at random as a death message
//argument0 = killer
//argument1 = defeated
//argument2 = weapon
///////////////////////////////////////////////////////////
var killer, defeated, weapon, choosemessage;
killer = argument0;
defeated = argument1;
weapon = argument2;
choosemessage = floor(random(54))

switch(choosemessage)
{
 case 0:
      obj_player.message = killer+" defeated "+defeated+".("+weapon+")";
 break;
 case 1:
      obj_player.message = killer+" owned "+defeated+".("+weapon+")";
 break;
 case 2:
      obj_player.message = killer+" destroyed "+defeated+".("+weapon+")";
 break;
 case 3:
      obj_player.message = killer+" dominated "+defeated+".("+weapon+")";
 break;
 case 4:
      obj_player.message = killer+" killed "+defeated+".("+weapon+")";
 break;
 case 5:
      obj_player.message = killer+" beat "+defeated+".("+weapon+")";
 break;
 case 6:
      obj_player.message = killer+" pwnt "+defeated+".("+weapon+")";
 break;
 case 7:
      obj_player.message = defeated+" can't beat "+killer+".("+weapon+")";
 break;
 case 8:
      obj_player.message = defeated+" now hates "+killer+".("+weapon+")";
 break;
 case 9:
      obj_player.message = killer+" annihilated "+defeated+".("+weapon+")";
 break;
 case 10:
      obj_player.message = killer+" eradicated "+defeated+".("+weapon+")";
 break;
 case 11:
      obj_player.message = killer+" came at "+defeated+".("+weapon+")";
 break;
 case 12:
      obj_player.message = killer+" violated "+defeated+".("+weapon+")";
 break;
 case 13:
      obj_player.message = defeated+" decided it'd be a good idea to fly into "+killer+"'s "+weapon+".";
 break;
 case 14:
      obj_player.message = defeated+" thinks "+killer+"'s "+weapon+" is OP.";
 break;
 case 15:
      obj_player.message = killer+" left no remains of "+defeated+".("+weapon+")";
 break;
 case 16:
      obj_player.message = defeated+" is raging thanks to "+killer+".("+weapon+")";
 break;
 case 17:
      obj_player.message = killer+" slaughtered "+defeated+".("+weapon+")";
 break;
 case 18:
      obj_player.message = killer+" trashed "+defeated+".("+weapon+")";
 break;
 case 19:
      obj_player.message = killer+" smashed "+defeated+".("+weapon+")";
 break;
 case 20:
      obj_player.message = killer+" finished off "+defeated+".("+weapon+")";
 break;
 case 21:
      obj_player.message = killer+" butchered "+defeated+".("+weapon+")";
 break;
 case 22:
      obj_player.message = defeated+" likes the taste of "+killer+"'s "+weapon+".";
 break;
 case 23:
      obj_player.message = defeated+" sucked on "+killer+"'s "+weapon+".";
 break;
 case 24:
      obj_player.message = killer+" totaled "+defeated+".("+weapon+")";
 break;
 case 25:
      obj_player.message = killer+" thinks "+defeated+"should QQ moar.("+weapon+")";
 break;
 case 26:
      obj_player.message = defeated+" is gonna need some cream for "+killer+"'s "+weapon+".";
 break;
 case 27:
      obj_player.message = defeated+" thinks "+killer+" got lucky.("+weapon+")";
 break;
 case 28:
      obj_player.message = defeated+" needs more practice to beat "+killer+".("+weapon+")";
 break;
 case 29:
      obj_player.message = defeated+" will have nightmares over "+killer+".("+weapon+")";
 break;
 case 30:
      obj_player.message = killer+"'s "+weapon+" > "+defeated+".";
 break;
 case 31:
      obj_player.message = defeated+" wants "+killer+"to come to Manmathan.("+weapon+")";
 break;
 case 32:
      obj_player.message = killer+" spammed "+defeated+" to death with "+weapon+".";
 break;
 case 33:
      obj_player.message = defeated+" should try dodging "+killer+"'s "+weapon+".";
 break;
 case 34:
      obj_player.message = "The only reason "+killer+" beat "+defeated+" is lag.("+weapon+")";
 break;
 case 35:
      obj_player.message = defeated+" should stop sucking when fighting "+killer+".("+weapon+")";
 break;
 case 36:
      obj_player.message = defeated+" can't beleive how cheap "+killer+" is with "+weapon+".";
 break;
 case 37:
      obj_player.message = defeated+" is going to rage over "+killer+"'s "+weapon+" after the game.";
 break;
 case 38:
      obj_player.message = killer+" is using hacks against "+defeated+".("+weapon+")";
 break;
 case 39:
      obj_player.message = defeated+" is quietly wishing for "+killer+"'s death.("+weapon+")";
 break;
 case 40:
      obj_player.message = defeated+" can't stand "+killer+".("+weapon+")";
 break;
 case 41:
      obj_player.message = killer+" crushed "+defeated+".("+weapon+")";
 break;
 case 42:
      obj_player.message = killer+" decimated "+defeated+".("+weapon+")";
 break;
 case 43:
      obj_player.message = killer+" made "+defeated+" go boom.("+weapon+")";
 break;
 case 44:
      obj_player.message = killer+" wonders if "+defeated+" even lifts.("+weapon+")";
 break;
 case 45:
      obj_player.message = killer+" dunked "+defeated+".("+weapon+")";
 break;
 case 46:
      obj_player.message = killer+" thought what "+defeated+" did was cute.("+weapon+")";
 break;
 case 47:
      obj_player.message = killer+" rekt "+defeated+".("+weapon+")";
 break;
 case 48:
      obj_player.message = killer+" shrekt "+defeated+".("+weapon+")";
 break;
 case 49:
      obj_player.message = killer+" did a speedrun of "+defeated+".("+weapon+"%)";
 break;
 case 50:
      obj_player.message = killer+" bodied "+defeated+".("+weapon+")";
 break; 
 case 51:
      obj_player.message = killer+" deleted "+defeated+".("+weapon+")";
 break;
 case 52:
      obj_player.message = killer+" removed "+defeated+".("+weapon+")";
 break; 
 case 53:
      obj_player.message = killer+" noscoped "+defeated+".("+weapon+")";
 break;
 case 54:
      obj_player.message = killer+" crushed "+defeated+".("+weapon+")";
 break;
}
