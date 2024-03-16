## Gentler RaceMenu AKA EnableRaceMenu-Unborked: The-Mod
---

~ Coded by Grey (Clavernever), and made possible by Kartoffels's generosity.

---

What this mod does:

  - Recovers all your stats (skills, level and abilities) after using StatReviewMenu or any of it's sub-menus (Name, Race, Class and Birthsign)
  - Recovers all your spells after changing your Name, Race, Class or Birthsign, including any diseases, curses or abilities you had.
  - Accounts for racial stats, abilities and skill bonuses, correctly replacing them with the new race's values.
    > This can be disabled or made to respect stat caps via the mod's settings.
  - Sets the correct PCRace value so you'll get the proper dialogue after changing races.
  - Allows migration between any two compatible race/birthsign mods (and with vanilla).

---

#### What it currently requires:
  - OpenMW 0.49 nightly

#### Compatible with any combination among the following:
  - Vanilla Morrowind's Races/Birthsigns
  - Reincarnate - Birthsigns of Morrowind v1.09
  - Sensible Races and Birthsigns
  - Any Race and Birthsign mods that don't rely on scripts:
      Moonlight - Birthsigns of Morrowind  
      Expanded Birthsigns for Purists  
      Written in the Stars  
      Birthsigns Are More Fun (BAMF)  
     >.. and literally anything so long as it only uses powers/abilities/spells to achieve it's effects.  
        It's even compatible with your own custom birthsigns, so long as you keep to that rule.

---
#### How to use it:

1. Open the console and type or copy-paste the following command:  
   `  EnableStatReviewMenu  `  
3. Edit anything you want: Name, Race, Birthsign, Class or any combination thereof.
4. Close all UI and wait half a second. You'll notice all your stuff is back.
5. You can reopen _Stat Review_ all the times you want, just make sure to unpause the game in between them.
6. Once you're done make a new save, quit the game and launch it again.  
   > Not strictly necessary, but a good thing to do.

#### Some notes:

  - Yes, while the _Stat Review Menu_ is open your spells may be gone or your stats look like they've been reset.
    Worry not, they **have** been reset, but will get **restored** when you close the menu and unpause the game.
    
  - Note that choosing a new custom class will give you the default template.  
    It's up to you to replicate any choices you want to keep the same from your previous class.
    
  - **DON'T** click _'Back'_ on the StatReviewMenu.  
    Do click _'Back'_ if you get into Class Menu by accident.  
    It will send you to Race Menu, and from there you can click 'Next' to go straight to Stat Review Menu and dodge the class reset.
    
  - I **STRONGLY** suggest you DON'T use the following:
    > They're just shortcuts that become goofy and annoying if you don't save and quit the *game* in between using them.
    > They don't provide anything that isn't in EnableStatReviewMenu.  
    
    ` D | EnableNameMenu  |`  
    ` O | EnableRaceMenu  |`  
    ` N | EnableBirthMenu |`  
    ` T | EnableClassMenu |`  

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

#### What it does not have/support, but will eventually:

> All of the following is stuff I know is possible and *want* to make happen, but it's subject to me having the time to happen the making.
> NO DEADLINES, NO PROMISES. | Features are most likely to be implemented in the presented order.

  - [ ] Support any combination of race/birthsign mods
  - [x] Birthsigns are recognised automatically from your load order
  - [x] Races are recognised automatically from your load order.
  - [x] Compatibility modules are recognised and enabled automatically based on your load order, so long as you didn't change their addon file names.
  - [ ] Opening Racemenu from a custom UI window.
  - [ ] Storing a history, accessible via said UI, of all races and classes your character went through.

  - [x] Allow you to switch between any of the supported race/birthign mods mid-run, via the following steps:
    1. Initiate migration by clicking a button in GRO's Settings Menu  
       This will automatically save and then quit your game a second after you resume the game.
    2. Swap your birthign/race/both mod(s), launch the game and load your save (ignoring the missing content warnings).
    3. Pick your desired race from the new mod via the (automatically opened) vanilla racemenu.
    4. Save your game.

#### What it will not do, probably ever:

  - Be 100% bug free insofar as scripted events are concerned.  
    I STRONGLY suggest you finish any on-going quests that smell of scripted events BEFORE racemenu-ing all over the place... even more-so if the quest has anything to do with your race and you intend to change said race.  
    I have not tested, nor do I have an easy way to test, whether racemenu-ing your character causes ill effects on specific quests, especially modded ones.  
      All this mod does is manage your spells, stats and racial/birthsign stuff when racemenu resets your character.  
      It doesn't change the journal, but again no promises on scripted things that were ongoing when you did said racemenu-ing.  
    If you do notice a specific bug and can provide detailed info on the mod/quest/script in question.  
    I *can* look into it and patch it so long as it's not a truckload of complications to do so.
