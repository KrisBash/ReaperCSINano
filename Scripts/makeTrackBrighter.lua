function main()
    local trackCount = reaper.CountSelectedTracks2(0, 1)
    for i = 0, trackCount - 1, 1 do
      local track = reaper.GetSelectedTrack2(0, i, 1)
      local prevColorNative = reaper.GetTrackColor(track)
      local prevColorR, prevColorG, prevColorB = reaper.ColorFromNative(prevColorNative)
      local newColorR = math.min(prevColorR + 30, 255)
      local newColorG = math.min(prevColorG + 30, 255)
      local newColorB = math.min(prevColorB + 30, 255)
      local newColorNative = reaper.ColorToNative(newColorR, newColorG, newColorB)
      reaper.SetTrackColor(track, newColorNative)
    end
  end
  
  reaper.PreventUIRefresh(1)
  main()
  reaper.PreventUIRefresh(-1)
  reaper.UpdateArrange()
  