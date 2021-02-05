reaper.Undo_BeginBlock()

FX = "Chandler Limited Curve Bender"

TrackIdx = 0
TrackCount = reaper.CountSelectedTracks(0)
while TrackIdx < TrackCount do
  track = reaper.GetSelectedTrack(0, TrackIdx)
  fxIdx = reaper.TrackFX_GetByName (track, FX, 1)
  reaper.TrackFX_SetOpen(track, fxIdx, 1)
  TrackIdx =TrackIdx+1
end

reaper.Undo_EndBlock("Insert FX Plugin",-1)