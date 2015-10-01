var tiptype, possitip, randomerror;

tiptype = argument0;

switch(global.shipselect)
{
    case 1:
        possitip[1] = "Alphastar is a ship that will specialize depending on what weapon you hotkey. It's important to base your other weapons around this.";
        possitip[2] = "Using Alphastar's Spacial Drift will allow you to face your ship in a completely different direction that you're facing. This can help fight off chasers and more.";
    break;
    case 2:
        possitip[1] = "Swiftwing is very fragile, but between its speed and Warp Drive ability, it's possible to avoid almost all attacks on you.";     
        possitip[2] = "Swiftwing will go beserk when very low on armor. When beserk, energy weapons can be used endlessly very almost no penalty.";    
    break;
    case 3:
        possitip[1] = "Goliath is a very durable ship, but slow, making you vulnerable to sustained damage. Utilizing its Shield Pulse ability is crucial to sustaining in long fights.";        
        possitip[2] = "Goliath's Weaponsmith Bay causes deploys to regenerate when exhausted, making you able to use Deploy Secondaries extensively."   
    break;
}

switch(tiptype)
{
    case "primary":
        possitip[3] = "Primaries help create bullet clutter, making it harder for enemies to get away with no damage.";    
        possitip[4] = "Primaries will fire slightly toward the cursor from the front of your ship. Different primaries have different limits on this.";   
    break;
    case "secondary":
        switch(global.secondary)
        {
            case 1:
            case 2:
            case 5:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                possitip[3] = "Energy Secondaries create unique bullet patterns. Each one has its own use. Try finding ones that suit your playstyle.";        
                possitip[4] = "Since Energy Secondaries run off of energy, you should not hesitate to use them as much as possible.";   
            break;
            default:
                possitip[3] = "Deploy Secondaries are the strongest type of weapons, but have limited uses. Use them only when you are sure of a hit.";      
                possitip[4] = "Most Deploy Secondaries will do some damage that ignores the shield. This makes them good for finishing off low armor targets that have regained shield.";    
            break;
        }
    break;
    case "hotkey":
        switch(global.spacesecond)
        {
            case 1:
            case 2:
            case 5:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                possitip[3] = "Energy Secondaries create unique bullet patterns. Each one has its own use. Try finding ones that suit your playstyle.";        
                possitip[4] = "Since Energy Secondaries run off of energy, you should not hesitate to use them as much as possible.";   
            break;
            default:
                possitip[3] = "Deploy Secondaries are the strongest type of weapons, but have limited uses. Use them only when you are sure of a hit.";      
                possitip[4] = "Most Deploy Secondaries will do some damage that ignores the shield. This makes them good for finishing off low armor targets that have regained shield.";    
            break;
        }
    break;
}    
switch(tiptype)
{
    case "primary":
        switch(global.primary)
        {
            case 1:
                possitip[5] = "Needle can be used for a very long time before causing your ship to overheat. Don't forget to fire your primary when fighting!";        
                possitip[6] = "Needle is hardly ever a bad choice for a primary, due to how little you have to pay attention to your heat when using it.";    
            break;
            case 2:
                possitip[5] = "Sonic is great for ensuring damage on targets to stop their shields from regenrating.";        
                possitip[6] = "Sonic creates a lot of heat fast, so be cautious when firing.";    
            break;
            case 3:
                possitip[5] = "Wave is slow, but hits hard. Don't underestimate its damage.";        
                possitip[6] = "It's almost possible to keep up with Wave shots, so you can create lines of wave bullets to help ensure hits.";    
            break;
            case 4:
                possitip[5] = "Seeker shots will only redirect if they get close to the enemy. Don't shoot blindly!";        
                possitip[6] = "Seeker is very good for causing confusion, due to the very irregular nature of the shots.";    
            break;
            case 5:
                possitip[5] = "Stasis is very weak damage-wise, but the slowing effect is incredible in combination with other weapons.";        
                possitip[6] = "Stasis can be used to set up attacks with weapons that would otherwise be hard to hit with, such as Beam and Layer Missiles.";    
            break;
            case 6:
                possitip[5] = "Helix is a fast primary that covers a lot of area as it moves, making it great for ensuring damage.";        
                possitip[6] = "Helix is very strong when you hit with both shots at the same time. The more accurate you are, the stronger Helix will be.";
            break;
            case 7:
                possitip[5] = "Siphon is the only weapon that has a healing effect. Because of this it synchronizes very well with Swiftwing's passive ability.";        
                possitip[6] = "Siphon is great for chasing enemies slower than you, because you can stay behind them while constantly healing from damage they do to you.";    
            break;
            case 8:
                possitip[5] = "You can discourage enemies from chasing you using Double, because of it firing behind you as well.";        
                possitip[6] = "Double is another primary that can fire indirectly, meaning you don't have to run through enemies' primary fire to fire back.";    
            break;
            case 9:
                possitip[5] = "Pierce discourages enemies from doing hit-and-runs, because its damage is permanent. This makes is very strong against Swiftwing.";       
                possitip[6] = "It's important to keep in mind that Pierce's actual damage is very low. You will be at a disadvantage if enemies don't plan to retreat.";   
            break;
            case 10:
                possitip[5] = "Spread becomes stronger with more enemies. The area the bullets cover is large, so you can fire at many enemies at once.";        
                possitip[6] = "Spread is very good at making bullet clutter. Using it in combination with other high-clutter weapons like Solus, Formation, and Burst is strong.";    
            break;
        }
    break;
    case "secondary":
        switch(global.secondary)
        {
            case 0:
                possitip[5] = "Dual Missiles are a very standard missile Deploy Secondary.They do decent damage and has average homing, making it a good pick for most setups.";
                possitip[6] = "Dual Missiles are good penetration damage for a missile. This helps make damage stick to enemies who run a lot.";
            break;
            case 1:
                possitip[5] = "Fusion moves very fast and erratic. Its damage can be easily underestimated.";
                possitip[6] = "Fusion is very strong when closer to enemies- you can easily run over the top of enemies while using Fusion to deal a lot of damage.";
            break;
            case 2:
                possitip[5] = "Stardust is great for making enemies back off because of how large the spray of bullets it creates is. This is also good for stopping shields from recharging.";
                possitip[6] = "Stardust's damage lowers on each target the more times it hits over a short period of time, making close-range bursts deceivingly weak.";
            break;
            case 3:
                possitip[5] = "Hunter Mines are persistent threats to enemies. They will continue chasing the closest enemy until they expire.";
                possitip[6] = "Hunter Mines can be used to play agaisnt enemies who like going in very close range of you, since the homing is stronger the closer an enemy is to it.";
            break;
            case 4:
                possitip[5] = "Layer Missiles are the strongest weapon in the game, doing a total of 90 damage on a direct hit. The damage is considerably lower on inaccurate hits.";
                possitip[6] = "Layer Missiles are very hard to land hits with by itself. Using other weapons such as Hacker Mines or Chain can hand land hits, though.";
            break;
            case 5:
                possitip[5] = "Barrier is the only defensive weapon in the game, making it a good choice for players that want to draw out fights.";
                possitip[6] = "Barrier is great for wasting enemy missiles. Using it against an enemy with many missile Deploy Secondaries will easily win you fights.";
            break;
            case 6:
                possitip[5] = "Locust Missiles have the highest homing of any weapon, making them incredibly hard to dodge.";
                possitip[6] = "Locust Missiles are very good for finishing off targets- they do higher damage against shield-less targets and are hard to dodge, making them able to easily ensure kills.";
            break;
            case 7:
                possitip[5] = "Phantom Mines are best used when the enemy can't see you placing it. After, staying close to them will increase the chance of an enemy hitting one.";
                possitip[6] = "Phantom Mines can be used to block paths on the map without enemies noticing. Leading enemies through these paths can deal a lot of damage.";
            break;
            case 8:
                possitip[5] = "Solus can deal a lot of damage to many enemies at once. Use them only when you can hit multiple enemies with it.";
                possitip[6] = "Solus will cause smart enemies to back off very quickly. Trapping enemies with walls and other weapons can help assure damage.";
            break;
            case 9:
                possitip[5] = "Formation is only usable when you are locked on to an enemy, making random shots with Formation impossible.";
                possitip[6] = "Formation can cover a lot of area, which is useful for ensuring damage on tricky targets.";
            break;
            case 10:
                possitip[5] = "Beam is very good for dealing high damage to distant targets. This and the fact that it can hit through walls can make you a threat even when far away.";
                possitip[6] = "Beam greatly increases you ship's heat when used. If you aren't careful, you can be caught off guard after using it.";
            break;
            case 11:
                possitip[5] = "Sparkline can be used to block off paths on the map, or to directly attack by placing traps in front of enemies.";
                possitip[6] = "Using Sparkline with Alphastar's passive ability allows you to make triangle traps with a third node. Enemies caught in these trap take hgih damage, making it extremely powerful.";
            break;
            case 12:
                possitip[5] = "Burst can be fired to explode directly on an enemy, making many bullets hit them immediately.";
                possitip[6] = "Burst is harder for enemies to dodge when they are closer the the explosion of bullets.";
            break;
            case 13:
                possitip[5] = "Trident Missiles have very high penetration, making them strong against Swiftwing and players who try draw fights out with shield regeneration.";
                possitip[6] = "Trident Missiles depend on the missile missile hitting its target. If it does, the other missiles will hit as well. ";
            break;
            case 14:
                possitip[5] = "Slash can be used for precision attacks- since all bullets cross the cursor at the same time, you can deal very high damage, if you land the hit.";
                possitip[6] = "Slash creates a wave of bullets after crossing the cursor. Having the cursor closer to your ship makes this wave spread faster.";
            break;
            case 15:
                possitip[5] = "Horizon is very powerful against Swiftwing. Since the ship is very fast, it has little time to react to the weapon.";
                possitip[6] = "Horizon is best used when the targeted enemy is moving away from you. If the enemy isn't, the weapon most likely will not hit.";
            break;
            case 16:
                possitip[5] = "Hacker Mines have low damage and stock, but their immobilize effect is very strong. Use them to set up high damage weapons.";
                possitip[6] = "Hacker Mines are great for playing defensively. Staying close to your Hacker Mines will keep enemies away, or make them easy kills.";
            break;
            case 17:
                possitip[5] = "While dealing low-end damage for a Deploy Secondary, Shock Missiles give a crippling debuff to targets that can make them extremely vulnerable.";
                possitip[6] = "Using high-damage weapons after landing a Shock Missile is very effective, as some of this damage will ignore the shield.";
            break;
            case 18:
                possitip[5] = "Counter Missiles are great against targets with weapons that fire out many bullets, such as Whip, Trail, Stardust, Solus, and more.";
                possitip[6] = "Counter Missiles have relatively low damage before gaining bonus damage. Make sure to make each use worth it.";
            break;
            case 19:
                possitip[5] = "Strike Missiles have low homing and damage, but since you hold a lot of them, you can potentially deal a low of damage using them.";
                possitip[6] = "Using Stasis with Strike Missiles can help Strike Missile hit their target repeatedly.";
            break;
            case 20:
                possitip[5] = "While Strike Mines are very easy to avoid, the fact that they can be picked back up makes them a persistent threat to enemies.";
                possitip[6] = "Utilizing a speed advantage you have over enemies can let you place mines directly on top of slower enemies for easy damage.";
            break;
            case 21:
                possitip[5] = "Paladin Turrets are very strong defensive weapons. They can protect your entire team from damage-not just you!";
                possitip[6] = "Taking advantage of enemies targeting your Paladin Turrets can help both you and your turrets land more hits than you normally would.";
            break;
            case 22:
                possitip[5] = "While similar to Burst, Spiral has very different uses. The bullets will linger longer, making it very strong for area control.";
                possitip[6] = "Spiral can be fired near enemies to cause the spiraling bullets to hit quicker.";
            break;
            case 23:
                possitip[5] = "Whip will fire all bullets at where the cursor was when the weapon was first used. You can use this to create many different patterns.";
                possitip[6] = "Whip is great for creating walls of bullets on the map. This will limit where enemies can go without taking damage.";
            break;
            case 24:
                possitip[5] = "Trail will create bullets until the main shot is destroyed. Avoid aiming directly at enemies or walls to create as many bullets as possible.";
                possitip[6] = "Trail can be used to fight from a distance, since its duration is high. ";
            break;
            case 25:
                possitip[5] = "Serpent should never be fired directly at an enemy, since it will attempt to arc around enemies.";
                possitip[6] = "Serpent is easily one of the best weapons to finish off an retreating enemy with, since it will automatically cut off possible escape routes for you.";
            break;
            case 26:
                possitip[5] = 'Storm is meant to be used multiple times at once, to create a "Storm" of bullets. Only you can see the walls that Storm creates.';
                possitip[6] = "Storm will also bounce against normal walls. Use the map to your advantage to make Storm more potent.";
            break;
            case 27:
                possitip[5] = "Direct can be used to indirectly fight enemies, regardless of the area around you. For example, you can damage them with a wall in the way.";
                possitip[6] = "try not to concentrate too much on how you're positioning Direct. You can easily neglect yourself in the process.";
            break;
            case 28:
                possitip[5] = "Split Missiles becomes much stronger when more and more enemies are nearby. Try saving them for when multiple enemies are close to you.";
                possitip[6] = "Split Missiles will go through walls and split, making walls a very good thing for you when using them.";
            break;
            case 29:
                possitip[5] = "Cluster Mines are incredible area control weapons, since they cover such a large area and remain there for a long time.";
                possitip[6] = "Cluster Mines are great when used against chasers. Chasers will either have to slow down or hit many mines in order to stay on you.";
            break;
        }
    break;
    case "hotkey":
        switch(global.spacesecond)
        {
            case 0:
                possitip[5] = "Dual Missiles are a very standard missile Deploy Secondary.They do decent damage and has average homing, making it a good pick for most setups.";
                possitip[6] = "Dual Missiles are good penetration damage for a missile. This helps make damage stick to enemies who run a lot.";
            break;
            case 1:
                possitip[5] = "Fusion moves very fast and erratic. Its damage can be easily underestimated.";
                possitip[6] = "Fusion is very strong when closer to enemies- you can easily run over the top of enemies while using Fusion to deal a lot of damage.";
            break;
            case 2:
                possitip[5] = "Stardust is great for making enemies back off because of how large the spray of bullets it creates is. This is also good for stopping shields from recharging.";
                possitip[6] = "Stardust's damage lowers on each target the more times it hits over a short period of time, making close-range bursts deceivingly weak.";
            break;
            case 3:
                possitip[5] = "Hunter Mines are persistent threats to enemies. They will continue chasing the closest enemy until they expire.";
                possitip[6] = "Hunter Mines can be used to play agaisnt enemies who like going in very close range of you, since the homing is stronger the closer an enemy is to it.";
            break;
            case 4:
                possitip[5] = "Layer Missiles are the strongest weapon in the game, doing a total of 90 damage on a direct hit. The damage is considerably lower on inaccurate hits.";
                possitip[6] = "Layer Missiles are very hard to land hits with by itself. Using other weapons such as Hacker Mines or Chain can hand land hits, though.";
            break;
            case 5:
                possitip[5] = "Barrier is the only defensive weapon in the game, making it a good choice for players that want to draw out fights.";
                possitip[6] = "Barrier is great for wasting enemy missiles. Using it against an enemy with many missile Deploy Secondaries will easily win you fights.";
            break;
            case 6:
                possitip[5] = "Locust Missiles have the highest homing of any weapon, making them incredibly hard to dodge.";
                possitip[6] = "Locust Missiles are very good for finishing off targets- they do higher damage against shield-less targets and are hard to dodge, making them able to easily ensure kills.";
            break;
            case 7:
                possitip[5] = "Phantom Mines are best used when the enemy can't see you placing it. After, staying close to them will increase the chance of an enemy hitting one.";
                possitip[6] = "Phantom Mines can be used to block paths on the map without enemies noticing. Leading enemies through these paths can deal a lot of damage.";
            break;
            case 8:
                possitip[5] = "Solus can deal a lot of damage to many enemies at once. Use them only when you can hit multiple enemies with it.";
                possitip[6] = "Solus will cause smart enemies to back off very quickly. Trapping enemies with walls and other weapons can help assure damage.";
            break;
            case 9:
                possitip[5] = "Formation is only usable when you are locked on to an enemy, making random shots with Formation impossible.";
                possitip[6] = "Formation can cover a lot of area, which is useful for ensuring damage on tricky targets.";
            break;
            case 10:
                possitip[5] = "Beam is very good for dealing high damage to distant targets. This and the fact that it can hit through walls can make you a threat even when far away.";
                possitip[6] = "Beam greatly increases you ship's heat when used. If you aren't careful, you can be caught off guard after using it.";
            break;
            case 11:
                possitip[5] = "Sparkline can be used to block off paths on the map, or to directly attack by placing traps in front of enemies.";
                possitip[6] = "Using Sparkline with Alphastar's passive ability allows you to make triangle traps with a third node. Enemies caught in these trap take hgih damage, making it extremely powerful.";
            break;
            case 12:
                possitip[5] = "Burst can be fired to explode directly on an enemy, making many bullets hit them immediately.";
                possitip[6] = "Burst is harder for enemies to dodge when they are closer the the explosion of bullets.";
            break;
            case 13:
                possitip[5] = "Trident Missiles have very high penetration, making them strong against Swiftwing and players who try draw fights out with shield regeneration.";
                possitip[6] = "Trident Missiles depend on the missile missile hitting its target. If it does, the other missiles will hit as well. ";
            break;
            case 14:
                possitip[5] = "Slash can be used for precision attacks- since all bullets cross the cursor at the same time, you can deal very high damage, if you land the hit.";
                possitip[6] = "Slash creates a wave of bullets after crossing the cursor. Having the cursor closer to your ship makes this wave spread faster.";
            break;
            case 15:
                possitip[5] = "Horizon is very powerful against Swiftwing. Since the ship is very fast, it has little time to react to the weapon.";
                possitip[6] = "Horizon is best used when the targeted enemy is moving away from you. If the enemy isn't, the weapon most likely will not hit.";
            break;
            case 16:
                possitip[5] = "Hacker Mines have low damage and stock, but their immobilize effect is very strong. Use them to set up high damage weapons.";
                possitip[6] = "Hacker Mines are great for playing defensively. Staying close to your Hacker Mines will keep enemies away, or make them easy kills.";
            break;
            case 17:
                possitip[5] = "While dealing low-end damage for a Deploy Secondary, Shock Missiles give a crippling debuff to targets that can make them extremely vulnerable.";
                possitip[6] = "Using high-damage weapons after landing a Shock Missile is very effective, as some of this damage will ignore the shield.";
            break;
            case 18:
                possitip[5] = "Hermit Missiles are strongest when used from afar. When used from maximum range, their damage comes close to a direct hit Layer Missile's.";
                possitip[6] = "Hermit Missiles are a good counter to enemies using Beam, since they rely more on accuracy than you do while wanting to stay at the same range as you want to.";
            break;
            case 19:
                possitip[5] = "Strike Missiles have low homing and damage, but since you hold a lot of them, you can potentially deal a low of damage using them.";
                possitip[6] = "Using Chain with Strike Missiles can help Strike Missile hit their target repeatedly.";
            break;
            case 20:
                possitip[5] = "While Strike Mines are very easy to avoid, the fact that they can be picked back up makes them a persistent threat to enemies.";
                possitip[6] = "Utilizing a speed advantage you have over enemies can let you place mines directly on top of slower enemies for easy damage.";
            break;
            case 21:
                possitip[5] = "Turrets can be used defensively or offensively. Staying close to a group of your turrets will keep enemies away. Spreading out your turrets will help you control the map.";
                possitip[6] = "Taking advantage of enemies targeting your turrets can help both you and your turrets land more hits than you normally would.";
            break;
            case 22:
                possitip[5] = "While similar to Burst, Spiral has very different uses. The bullets will linger longer, making it very strong for area control.";
                possitip[6] = "Spiral can be fired near enemies to cause the spiraling bullets to hit quicker.";
            break;
            case 23:
                possitip[5] = "Whip will fire all bullets at where the cursor was when the weapon was first used. You can use this to create many different patterns.";
                possitip[6] = "Whip is great for creating walls of bullets on the map. This will limit where enemies can go without taking damage.";
            break;
            case 24:
                possitip[5] = "Trail will create bullets until the main shot is destroyed. Avoid aiming directly at enemies or walls to create as many bullets as possible.";
                possitip[6] = "Trail can be used to fight from a distance, since its duration is high. ";
            break;
            case 25:
                possitip[5] = "Serpent should never be fired directly at an enemy, since it will attempt to arc around enemies.";
                possitip[6] = "Serpent is easily one of the best weapons to finish off an retreating enemy with, since it will automatically cut off possible escape routes for you.";
            break;
            case 26:
                possitip[5] = 'Storm is meant to be used multiple times at once, to create a "Storm" of bullets. Only you can see the walls that Storm creates.';
                possitip[6] = "Storm will also bounce against normal walls. Use the map to your advantage to make Storm more potent.";
            break;
            case 27:
                possitip[5] = "Trigger has a lot of intimidation to it. As long as you have bombs in an area, it makes that area unsafe for enemies to be near.";
                possitip[6] = "Trigger's burst is based off the nearest enemy. One bullet will always be shot at the enemy nearest to each bomb.";
            break;
            case 28:
                possitip[5] = "Split Missiles becomes much stronger when more and more enemies are nearby. Try saving them for when multiple enemies are close to you.";
                possitip[6] = "Split Missiles will go through walls and split, making walls a very good thing for you when using them.";
            break;
            case 29:
                possitip[5] = "Cluster Mines are incredible area control weapons, since they cover such a large area and remain there for a long time.";
                possitip[6] = "Cluster Mines are great when used against chasers. Chasers will either have to slow down or hit many mines in order to stay on you.";
            break;
        }
    break;
}    
    



if(random(3) <= 1)
    return possitip[floor(random(4))+1];
else
{
    if(random(2) <= 1)
        return possitip[5];
    else
        return possitip[6];
}
