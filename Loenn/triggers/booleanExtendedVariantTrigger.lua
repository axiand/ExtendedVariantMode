local trigger = {}

trigger.name = "ExtendedVariantMode/BooleanExtendedVariantTrigger"
trigger.placements = {
    name = "trigger",
    data = {
        variantChange = "DisableNeutralJumping",
        newValue = true,
        revertOnLeave = false,
        revertOnDeath = true,
        delayRevertOnDeath = false,
        withTeleport = false,
        coversScreen = false,
        flag = "",
        flagInverted = false,
        onlyOnce = false
    }
}

trigger.fieldInformation = {
    variantChange = {
        options = {
            "AffectExistingChasers",
            "AllStrawberriesAreGoldens",
            "AllowLeavingTheoBehind",
            "AllowThrowingTheoOffscreen",
            "AlternativeBuffering",
            "AlwaysFeather",
            "AlwaysInvisible",
            "BadelineBossesEverywhere",
            "BadelineChasersEverywhere",
            "BounceEverywhere",
            "BufferableGrab",
            "ChangePatternsOfExistingBosses",
            "CornerboostProtection",
            "CorrectedMirrorMode",
            "DashTrailAllTheTime",
            "DisableClimbJumping",
            "DisableDashCooldown",
            "DisableJumpingOutOfWater",
            "DisableKeysSpotlight",
            "DisableMadelineSpotlight",
            "DisableNeutralJumping",
            "DisableOshiroSlowdown",
            "DisableRefillsOnScreenTransition",
            "DisableSeekerSlowdown",
            "DisableSuperBoosts",
            "DisableWallJumping",
            "DisplayDashCount",
            "DontRefillStaminaOnGround",
            "EveryJumpIsUltra",
            "EverythingIsUnderwater",
            "FirstBadelineSpawnRandom",
            "ForceDuckOnGround",
            "FriendlyBadelineFollower",
            "HeldDash",
            "InvertDashes",
            "InvertGrab",
            "InvertHorizontalControls",
            "InvertVerticalControls",
            "LegacyDashSpeedBehavior",
            "LiftboostProtection",
            "NoFreezeFrames",
            "OshiroEverywhere",
            "PermanentBinoStorage",
            "PermanentDashAttack",
            "PreserveExtraDashesUnderwater",
            "RefillJumpsOnDashRefill",
            "ResetJumpCountOnGround",
            "RestoreDashesOnRespawn",
            "RisingLavaEverywhere",
            "SnowballsEverywhere",
            "TheoCrystalsEverywhere",
            "TrueNoGrabbing",
            "UltraProtection",
            "UpsideDown",
            "WalllessWallbounce"
        },
        editable = false
    }
}

return trigger
