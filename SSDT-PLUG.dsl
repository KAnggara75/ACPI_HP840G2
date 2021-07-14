//Power Management
DefinitionBlock ("", "SSDT", 1, "ACDT", "freqdata", 0x00000001)
{
	External (_PR_.CPU0, DeviceObj)
	Scope (\_PR.CPU0)
	{
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero))
			{
				Return (Buffer (One)
				{
					0x03                                           
				})
			}

			Return (Package (0x04)
			{
				"plugin-type",
				One,
			})
		}
	}
}