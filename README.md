# Overview #
This repo contains a configuration for using the Icon Platform Nano controller with the Reaper DAW. This uses the [CSI](https://forum.cockos.com/showthread.php?t=183143 "Reaper Forums") project for customizable controller integration. For documentation on CSI customization, reference the [CSI project wiki](https://github.com/GeoffAWaddington/reaper_csurf_integrator/wiki).

# Installation #
1. Install CSI per [documentation](https://github.com/GeoffAWaddington/reaper_csurf_integrator/wiki/Installation)
2. Copy the `Surfaces`and `Zones` into the `CSI` directory in the Reaper resource directory. 
2. Add a control surface in Reaper. 
	1. Options->Preferences
	2. `Control/OSC/Web` Menu
	3. Add a controller with Mode set to Control Surface Integrator
	4. Use the default homepage, and `Add Midi`
		1. Provide a name
		2. Channels, Sends, and FX Menu should be: `8`
		3. Set Midi In/Midi Out to the Icon Platform Nano
		4. Set the `Surface` to NAME!!!!
		5. Set the `Zone Folder` to IconPlatNano_KB_1.0

Note:
If you need to reconfigure or re-add your surface in Reaper, be sure to manually clear the csi.ini file. Removing the configuration in Reaper sometimes does not remove it from the csi.ini, and this can cause erratic behavior. 

# Customizing #
Action reference

How to find action id
SWS extension
custom actions
scripts