WMPVP = CreateFrame("Frame", nil, nil)  
WMPVP:RegisterEvent("PLAYER_TARGET_CHANGED")

WMPVP:SetScript("OnEvent", function()
      if not IsInInstance() then
         if UnitIsPlayer("target") then
            if UnitIsPVP("target") then
               wrmpvpmsg = (UnitName("target") .. "is PVP flagged!")
               UIErrorsFrame:AddMessage(wrmpvpmsg, 1.0, 0.0, 0.0, 53, 5)
			   PlaySoundFile("Sound/Character/Gnome/GnomeVocalMale/GnomeMaleNo03.wav")
            end
		 elseif  not UnitIsFriend("player", "target") then
		    trgtisscry = UnitClassification("target")
			if trgtisscry == "worldboss" or trgtisscry == "rareelite" or trgtisscry == "elite" then
				wrmpvpmsg = (UnitName("target") .. " is " .. trgtisscry .."!")
				UIErrorsFrame:AddMessage(wrmpvpmsg, 1.0, 0.0, 0.0, 53, 5)
				PlaySoundFile("Sound/Character/Gnome/GnomeVocalMale/GnomeMaleFlee01.wav")	
			elseif trgtisscry == "rare" then
				wrmpvpmsg = (UnitName("target") .. " is " .. trgtisscry .."!")
				UIErrorsFrame:AddMessage(wrmpvpmsg, 1.0, 0.0, 1.0, 53, 5)
				PlaySoundFile("Sound/Character/Gnome/GnomeVocalMale/GnomeMaleCheer02.wav")
			end	
         end
      end  
end)
