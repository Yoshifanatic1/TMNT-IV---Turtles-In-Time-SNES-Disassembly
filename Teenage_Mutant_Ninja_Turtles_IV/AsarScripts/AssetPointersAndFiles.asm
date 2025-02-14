; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!TMNTIV_U = $0001
!TMNTIV_E = $0002
!TMNTIV_J = $0004
!TMNTIV_A = $0008

check bankcross off

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl DynamicSpritesPointersStart,(DynamicSpritesPointersEnd-DynamicSpritesPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl Map32PointersStart,(Map32PointersEnd-Map32PointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl PalettePointersStart,(PalettePointersEnd-PalettePointersStart)/$0C
	dl CompressedOAMDataPointersStart,(CompressedOAMDataPointersEnd-CompressedOAMDataPointersStart)/$0C
	dl SPC700EnginePointersStart,(SPC700EnginePointersEnd-SPC700EnginePointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $0DF132,$0DF194,GFX_Layer1_AnimatedTrainTiles1,GFX_Layer1_AnimatedTrainTiles1End
	dl $0DF194,$0DF1F4,GFX_Layer1_AnimatedTrainTiles2,GFX_Layer1_AnimatedTrainTiles2End
	dl $1AEEFA,$1AF2FA,GFX_Sprite_AprilONeilSayingFight,GFX_Sprite_AprilONeilSayingFightEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $06FFEB,$06FFF6,GFX_Layer3_ColonTile,GFX_Layer3_ColonTileEnd
	dl $078000,$078A92,GFX_Layer2_ContinueScreen,GFX_Layer2_ContinueScreenEnd
	dl $078A92,$078ED0,GFX_Sprite_TechnodromeAppearsSceneSprites2,GFX_Sprite_TechnodromeAppearsSceneSprites2End
	dl $078ED0,$07A56E,GFX_Sprite_StatueOfLibertyReturnedScene2,GFX_Sprite_StatueOfLibertyReturnedScene2End
	dl $07A56E,$07AB6A,GFX_Sprite_Hoverboard_FaceAway,GFX_Sprite_Hoverboard_FaceAwayEnd
	dl $07AB6A,$07AB87,GFX_Sprite_Unknown1,GFX_Sprite_Unknown1End
	dl $07AEF9,$07BA9C,GFX_Layer2_NeonNightRiders,GFX_Layer2_NeonNightRidersEnd
	dl $07BA9C,$07C493,GFX_Mode7_NeonNightRiders_Road,GFX_Mode7_NeonNightRiders_RoadEnd
	dl $07D859,$07DDCE,GFX_Sprite_StoneWarriorGun,GFX_Sprite_StoneWarriorGunEnd
	dl $07DDCE,$07E055,GFX_Sprite_StoneWarriorElectricGunTiles2,GFX_Sprite_StoneWarriorElectricGunTiles2End
	dl $07E055,$07E0C6,GFX_Sprite_StoneWarriorNapalmGunTiles1,GFX_Sprite_StoneWarriorNapalmGunTiles1End
	dl $07E0C6,$07E12D,GFX_Sprite_StoneWarriorBazookaTiles1,GFX_Sprite_StoneWarriorBazookaTiles1End
	dl $07E12D,$07E268,GFX_Sprite_UnknownStoneWarriorTiles1,GFX_Sprite_UnknownStoneWarriorTiles1End
	dl $07E268,$07E375,GFX_Sprite_UnknownStoneWarriorTiles2,GFX_Sprite_UnknownStoneWarriorTiles2End
	dl $07E3A1,$07E40A,GFX_Sprite_QuestionMarkPizzaBox_TopHalf,GFX_Sprite_QuestionMarkPizzaBox_TopHalfEnd
	dl $07E40A,$07E469,GFX_Sprite_QuestionMarkPizzaBox_BottomHalf,GFX_Sprite_QuestionMarkPizzaBox_BottomHalfEnd
	dl $07E469,$07E5D0,GFX_Sprite_StoneWarriorGirderTiles2,GFX_Sprite_StoneWarriorGirderTiles2End
	dl $07E5D0,$07EB0D,GFX_Sprite_QuestionMarkOrbAndMouser,GFX_Sprite_QuestionMarkOrbAndMouserEnd
	dl $07EB6A,$07EB75,GFX_Layer3_FlippedDigital1_TopHalf,GFX_Layer3_FlippedDigital1_TopHalfEnd
	dl $07EB75,$07EB80,GFX_Layer3_FlippedDigital1_BottomHalf,GFX_Layer3_FlippedDigital1_BottomHalfEnd
	dl $07EBC1,$07EBD6,GFX_Layer3_ContinueScreen_HugeNumberTiles,GFX_Layer3_ContinueScreen_HugeNumberTilesEnd
	dl $07EBD6,$07ECE1,GFX_Sprite_Hoverboard_SidewaysTiles1,GFX_Sprite_Hoverboard_SidewaysTiles1End
	dl $07ECE1,$07EDD4,GFX_Sprite_Hoverboard_SidewaysTiles2,GFX_Sprite_Hoverboard_SidewaysTiles2End
	dl $07EDD4,$07F07B,GFX_Sprite_NeonNightRiders_TextTiles,GFX_Sprite_NeonNightRiders_TextTilesEnd
	dl $07F07B,$07FC75,GFX_Layer1_EndScreen,GFX_Layer1_EndScreenEnd
	dl $08EE61,$08F54A,GFX_Mode7_TimeWarpScene_TrainIcon,GFX_Mode7_TimeWarpScene_TrainIconEnd
	dl $08F54A,$08FC0A,GFX_Mode7_TimeWarpScene_FutureCityIcon,GFX_Mode7_TimeWarpScene_FutureCityIconEnd
	dl $08FD40,$08FE60,GFX_Layer3_CreditsScene,GFX_Layer3_CreditsSceneEnd
	dl $0980C4,$09827C,GFX_Mode7_BlankFile,GFX_Mode7_BlankFileEnd
	dl $09A73B,$09AD2E,GFX_Sprite_TimeWarpScene_DinosaurIcon,GFX_Sprite_TimeWarpScene_DinosaurIconEnd
	dl $09AD2E,$09B38B,GFX_Sprite_TimeWarpScene_PirateShipIcon,GFX_Sprite_TimeWarpScene_PirateShipIconEnd
	dl $09B38B,$09BA1E,GFX_Sprite_TimeWarpScene_TrainIcon,GFX_Sprite_TimeWarpScene_TrainIconEnd
	dl $09BA1E,$09C099,GFX_Sprite_TimeWarpScene_FutureCityIcon,GFX_Sprite_TimeWarpScene_FutureCityIconEnd
	dl $09C099,$09C665,GFX_Sprite_TimeWarpScene_PlanetIcon,GFX_Sprite_TimeWarpScene_PlanetIconEnd
	dl $09C665,$09CCB2,GFX_Sprite_TimeWarpScene_TechnodromeIcon,GFX_Sprite_TimeWarpScene_TechnodromeIconEnd
	dl $09CCB2,$09CE1A,GFX_Sprite_TimeWarpParticles,GFX_Sprite_TimeWarpParticlesEnd
	dl $09CE1A,$09D409,GFX_Mode7_TimeWarpScene_DinosaurIcon,GFX_Mode7_TimeWarpScene_DinosaurIconEnd
	dl $09D409,$09DB64,GFX_Mode7_TimeWarpScene_PirateShipIcon,GFX_Mode7_TimeWarpScene_PirateShipIconEnd
	dl $09DB64,$09E0B0,GFX_Mode7_TimeWarpScene_PlanetIcon,GFX_Mode7_TimeWarpScene_PlanetIconEnd
	dl $09E17F,$09F315,GFX_FGBG_CreditsSceneTiles1,GFX_FGBG_CreditsSceneTiles1End
	dl $09F4CB,$09F92E,GFX_Sprite_FootClanGrunt_InHelicopterChairThing,GFX_Sprite_FootClanGrunt_InHelicopterChairThingEnd
	dl $09F92E,$09FDCA,GFX_Sprite_Shredder_BeforeSuperTransformation,GFX_Sprite_Shredder_BeforeSuperTransformationEnd
	dl $09FDCA,$09FE30,GFX_Mode7_NeonNightRiders_FakeParallaxLayer,GFX_Mode7_NeonNightRiders_FakeParallaxLayerEnd
	dl $0AFDC6,$0AFFFD,GFX_Sprite_TimeWarpLevelEntryAnimation,GFX_Sprite_TimeWarpLevelEntryAnimationEnd
	dl $0B81E7,$0B8E52,GFX_FGBG_KonamiLogoScreen,GFX_FGBG_KonamiLogoScreenEnd
	dl $0B8E52,$0B9B8D,GFX_Layer2_RatKingsBoat,GFX_Layer2_RatKingsBoatEnd
	dl $0B9B8D,$0BA45B,GFX_FGBG_VersusModeArena,GFX_FGBG_VersusModeArenaEnd
if !ROMVer&(!TMNTIV_E) != $00
	dl $0BA526,$0BBA91,GFX_Layer2_TitleScreenTiles1,GFX_Layer2_TitleScreenTiles1End
	dl $0BBAD9,$0BD0DB,GFX_Layer1_CharacterSelectScreenTiles1,GFX_Layer1_CharacterSelectScreenTiles1End
	dl $0BD0DB,$0BD7FC,GFX_Layer1_CharacterSelectScreenTiles2,GFX_Layer1_CharacterSelectScreenTiles2End
	dl $0BDB71,$0BF1F1,GFX_FGBG_CreditsSceneTiles2,GFX_FGBG_CreditsSceneTiles2End
	dl $0BF1F1,$0BF4CF,GFX_Sprite_StoneWarriorBazookaTiles2,GFX_Sprite_StoneWarriorBazookaTiles2End
	dl $0BF4CF,$0BFB9B,GFX_Sprite_CreditsScene,GFX_Sprite_CreditsSceneEnd
	dl $0BFC07,$0BFC59,GFX_Layer1_UnknownTrainTiles,GFX_Layer1_UnknownTrainTilesEnd
else
	dl $0BA526,$0BBA93,GFX_Layer2_TitleScreenTiles1,GFX_Layer2_TitleScreenTiles1End
	dl $0BBADB,$0BD0DD,GFX_Layer1_CharacterSelectScreenTiles1,GFX_Layer1_CharacterSelectScreenTiles1End
	dl $0BD0DD,$0BD7FE,GFX_Layer1_CharacterSelectScreenTiles2,GFX_Layer1_CharacterSelectScreenTiles2End
	dl $0BDB73,$0BF1F3,GFX_FGBG_CreditsSceneTiles2,GFX_FGBG_CreditsSceneTiles2End
	dl $0BF1F3,$0BF4D1,GFX_Sprite_StoneWarriorBazookaTiles2,GFX_Sprite_StoneWarriorBazookaTiles2End
	dl $0BF4D1,$0BFB9D,GFX_Sprite_CreditsScene,GFX_Sprite_CreditsSceneEnd
	dl $0BFC09,$0BFC5B,GFX_Layer1_UnknownTrainTiles,GFX_Layer1_UnknownTrainTilesEnd
endif
	dl $0C8000,$0C911E,GFX_FGBG_TechnodromeLetsKickShellTiles1,GFX_FGBG_TechnodromeLetsKickShellTiles1End
	dl $0C911E,$0CA425,GFX_FGBG_TechnodromeLetsKickShellTiles2,GFX_FGBG_TechnodromeLetsKickShellTiles2End
	dl $0CA425,$0CBA7A,GFX_FGBG_BuryMyShellAtWoundedKneeTiles1,GFX_FGBG_BuryMyShellAtWoundedKneeTiles1End
	dl $0CBA7A,$0CCFFD,GFX_FGBG_BuryMyShellAtWoundedKneeTiles2,GFX_FGBG_BuryMyShellAtWoundedKneeTiles2End
	dl $0CCFFD,$0CE13E,GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles1,GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles1End
	dl $0CE13E,$0CF254,GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles2,GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles2End
	dl $0CF254,$0CFF24,GFX_Layer2_KrangsUFOTiles2,GFX_Layer2_KrangsUFOTiles2End
	dl $0D8000,$0D95F9,GFX_FGBG_BigApple3AMTiles1,GFX_FGBG_BigApple3AMTiles1End
	dl $0D95F9,$0DAF26,GFX_Layer2_TitleScreenTiles2,GFX_Layer2_TitleScreenTiles2End
	dl $0DAF26,$0DC343,GFX_FGBG_AlleycatBluesTiles1,GFX_FGBG_AlleycatBluesTiles1End
	dl $0DC343,$0DD6E2,GFX_FGBG_AlleycatBluesTiles2,GFX_FGBG_AlleycatBluesTiles2End
	dl $0DD6E2,$0DD9F4,GFX_FGBG_AlleycatBluesTiles3,GFX_FGBG_AlleycatBluesTiles3End
	dl $0DD9F4,$0DEE94,GFX_FGBG_SewerSurfinTiles1,GFX_FGBG_SewerSurfinTiles1End
	dl $0DEE94,$0DF132,GFX_FGBG_SewerSurfinTiles2,GFX_FGBG_SewerSurfinTiles2End
	dl $0DF1F4,$0DF4FE,GFX_Layer2_KrangsUFOTiles1,GFX_Layer2_KrangsUFOTiles1End
	dl $0DFBD9,$0DFFC9,GFX_Mode7_TurtlesWatchTVScene,GFX_Mode7_TurtlesWatchTVSceneEnd
	dl $0EFED7,$0EFF36,GFX_Sprite_StoneWarriorGirderTiles1,GFX_Sprite_StoneWarriorGirderTiles1End
	dl $108000,$10881D,GFX_Layer3_MainLayer3GFX,GFX_Layer3_MainLayer3GFXEnd
	dl $10881D,$108C23,GFX_Layer3_BackgroundKrang,GFX_Layer3_BackgroundKrangEnd
	dl $108CD3,$109018,GFX_Layer3_ThrownEnemy_FacingScreen,GFX_Layer3_ThrownEnemy_FacingScreenEnd
	dl $109018,$109343,GFX_Layer3_ThrownEnemy_FacingAwayFromScreen,GFX_Layer3_ThrownEnemy_FacingAwayFromScreenEnd
	dl $109DB6,$10A0E4,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	dl $10A146,$10B813,GFX_FGBG_SkullAndCrossbonesTiles1,GFX_FGBG_SkullAndCrossbonesTiles1End
	dl $10B813,$10CBD1,GFX_FGBG_SkullAndCrossbonesTiles2,GFX_FGBG_SkullAndCrossbonesTiles2End
	dl $10CBD1,$10E5E6,GFX_FGBG_TechnodromeTheFinalShellShockTiles1,GFX_FGBG_TechnodromeTheFinalShellShockTiles1End
	dl $10E5E6,$10FC37,GFX_FGBG_TechnodromeTheFinalShellShockTiles2,GFX_FGBG_TechnodromeTheFinalShellShockTiles2End
	dl $10FC37,$10FFA0,GFX_Layer3_SpeechBubbleTiles,GFX_Layer3_SpeechBubbleTilesEnd
	dl $129387,$12AAD4,GFX_FGBG_PrehistoricTurtlesaurasTiles1,GFX_FGBG_PrehistoricTurtlesaurasTiles1End
	dl $12AAD4,$12C209,GFX_FGBG_PrehistoricTurtlesaurasTiles2,GFX_FGBG_PrehistoricTurtlesaurasTiles2End
	dl $12C209,$12C43F,GFX_Sprite_CharacterSelectScreen,GFX_Sprite_CharacterSelectScreenEnd
	dl $12C47E,$12C7C3,GFX_Sprite_FallingStalactite,GFX_Sprite_FallingStalactiteEnd
	dl $12C7C3,$12C951,GFX_Sprite_TrafficCone,GFX_Sprite_TrafficConeEnd
	dl $12C951,$12CCBB,GFX_Sprite_HydrantSpray,GFX_Sprite_HydrantSprayEnd
	dl $12CCBB,$12CCD5,GFX_Sprite_LaserGate_TopHalf,GFX_Sprite_LaserGate_TopHalfEnd
	dl $12CCD5,$12CCEF,GFX_Sprite_LaserGate_BottomHalf,GFX_Sprite_LaserGate_BottomHalfEnd
	dl $12CCEF,$12D110,GFX_Sprite_VariousShredderFightSprites,GFX_Sprite_VariousShredderFightSpritesEnd
	dl $12D110,$12D5EC,GFX_Sprite_LaughingShredder,GFX_Sprite_LaughingShredderEnd
	dl $12D5EC,$12D617,GFX_Sprite_IcePanelTiles1,GFX_Sprite_IcePanelTiles1End
	dl $12D617,$12EE42,GFX_FGBG_TechnodromeAppearsScene,GFX_FGBG_TechnodromeAppearsSceneEnd
	dl $12EE42,$12FF88,GFX_Mode7_TimeWarpScene_Turtle,GFX_Mode7_TimeWarpScene_TurtleEnd
	dl $12FF88,$12FFC3,GFX_Sprite_SurfboardSplash2,GFX_Sprite_SurfboardSplash2End
	dl $12FFC3,$138000,GFX_Sprite_SurfboardSplash3,GFX_Sprite_SurfboardSplash3End
	dl $13FFB7,$13FFDC,GFX_Sprite_IcePanelTiles2,GFX_Sprite_IcePanelTiles2End
	dl $14EF9A,$14F2BC,GFX_Sprite_Krang,GFX_Sprite_KrangEnd
	dl $14F2BC,$14FADA,GFX_Sprite_KrangInUFO,GFX_Sprite_KrangInUFOEnd
	dl $14FADA,$14FD96,GFX_Sprite_SmallRingLaserShootingRobots,GFX_Sprite_SmallRingLaserShootingRobotsEnd
	dl $14FD96,$14FE4D,GFX_Sprite_VelociraptorTiles1,GFX_Sprite_VelociraptorTiles1End
	dl $158000,$15929D,GFX_Sprite_FootClanGruntTiles1,GFX_Sprite_FootClanGruntTiles1End
	dl $15929D,$15950C,GFX_Sprite_FootClanGruntTiles2,GFX_Sprite_FootClanGruntTiles2End
	dl $15950C,$159813,GFX_Sprite_FootClanGruntTiles3,GFX_Sprite_FootClanGruntTiles3End
	dl $159813,$159A15,GFX_Sprite_FootClanGruntTiles4,GFX_Sprite_FootClanGruntTiles4End
	dl $159A15,$159B73,GFX_Sprite_FootClanGruntTiles5,GFX_Sprite_FootClanGruntTiles5End
	dl $159B73,$159E61,GFX_Sprite_FootClanGruntTiles6,GFX_Sprite_FootClanGruntTiles6End
	dl $159E61,$15A3D8,GFX_Sprite_FootClanGruntTiles7,GFX_Sprite_FootClanGruntTiles7End
	dl $15A3D8,$15A936,GFX_Sprite_FootClanGruntTiles8,GFX_Sprite_FootClanGruntTiles8End
	dl $15A936,$15AF5C,GFX_Sprite_FootClanGruntTiles9,GFX_Sprite_FootClanGruntTiles9End
	dl $15AF5C,$15B109,GFX_Sprite_FootClanGruntTiles10,GFX_Sprite_FootClanGruntTiles10End
	dl $15B109,$15B2EA,GFX_Sprite_FootClanGrunt_TeleportInTiles1,GFX_Sprite_FootClanGrunt_TeleportInTiles1End
	dl $15B2EA,$15B420,GFX_Sprite_FootClanGruntTiles11,GFX_Sprite_FootClanGruntTiles11End
	dl $15B420,$15B5E4,GFX_Sprite_FootClanGruntTiles12,GFX_Sprite_FootClanGruntTiles12End
	dl $15B5E4,$15B7FF,GFX_Sprite_FootClanGruntTiles13,GFX_Sprite_FootClanGruntTiles13End
	dl $15B7FF,$15BE2A,GFX_Sprite_HorseAndRider,GFX_Sprite_HorseAndRiderEnd
	dl $15BE2A,$15C0FC,GFX_Sprite_FootClanGrunt_OozeFromFloorAnimaton,GFX_Sprite_FootClanGrunt_OozeFromFloorAnimatonEnd
	dl $15C0FC,$15C2C6,GFX_Sprite_FootClanGrunt_ClimbOntoShipAnimaton,GFX_Sprite_FootClanGrunt_ClimbOntoShipAnimatonEnd
	dl $15C2C6,$15C63C,GFX_Sprite_VelociraptorTiles3,GFX_Sprite_VelociraptorTiles3End
	dl $15C63C,$15C8D1,GFX_Sprite_StarbaseChuteDoor,GFX_Sprite_StarbaseChuteDoorEnd
	dl $15C8D1,$15C98C,GFX_Sprite_VelociraptorTiles2,GFX_Sprite_VelociraptorTiles2End
	dl $15C98C,$15CEA6,GFX_Sprite_Pterodactyl,GFX_Sprite_PterodactylEnd
	dl $15CEA6,$15DECA,GFX_Sprite_StoneWarrior,GFX_Sprite_StoneWarriorEnd
	dl $15DECA,$15F724,GFX_Sprite_SuperShredder,GFX_Sprite_SuperShredderEnd
	dl $15F724,$15FC9D,GFX_Sprite_SuperShredderProjectiles,GFX_Sprite_SuperShredderProjectilesEnd
	dl $168001,$1687F8,GFX_Sprite_Explosions,GFX_Sprite_ExplosionsEnd
	dl $1687F8,$169EF8,GFX_Sprite_BaxterStockman,GFX_Sprite_BaxterStockmanEnd
	dl $169EF8,$16B432,GFX_Sprite_PizzaMonster,GFX_Sprite_PizzaMonsterEnd
	dl $16B432,$16CDB4,GFX_Sprite_MetalHead,GFX_Sprite_MetalHeadEnd
	dl $16CDB4,$16CE1C,GFX_Sprite_NormalPizzaBox_TopHalf,GFX_Sprite_NormalPizzaBox_TopHalfEnd
	dl $16CE1C,$16CE84,GFX_Sprite_NormalPizzaBox_BottomHalf,GFX_Sprite_NormalPizzaBox_BottomHalfEnd
	dl $16CE84,$16CEF6,GFX_Sprite_BombPizzaBox_TopHalf,GFX_Sprite_BombPizzaBox_TopHalfEnd
	dl $16CEF6,$16D171,GFX_Sprite_Surfboard,GFX_Sprite_SurfboardEnd
	dl $16D171,$16D3B0,GFX_Sprite_MetalBarrel,GFX_Sprite_MetalBarrelEnd
	dl $16D3B0,$16D6DC,GFX_Sprite_BoxOfExplosives,GFX_Sprite_BoxOfExplosivesEnd
	dl $16D6DC,$16DBD6,GFX_Sprite_WoodBarrel,GFX_Sprite_WoodBarrelEnd
	dl $16DBD6,$16DE2B,GFX_Sprite_WreckingBall,GFX_Sprite_WreckingBallEnd
	dl $16DE2B,$16E0AB,GFX_Sprite_Unknown2,GFX_Sprite_Unknown2End
	dl $16E0AB,$16E244,GFX_Sprite_KrangEyeLasers,GFX_Sprite_KrangEyeLasersEnd
	dl $16E244,$16E2D3,GFX_Sprite_WallBrickRubble,GFX_Sprite_WallBrickRubbleEnd
	dl $16E2D3,$16E480,GFX_Sprite_PlankTrap,GFX_Sprite_PlankTrapEnd
	dl $16E480,$16E7A9,GFX_Sprite_PirateShip,GFX_Sprite_PirateShipEnd
	dl $16E7A9,$16E998,GFX_Sprite_SewerMinesAndPoles,GFX_Sprite_SewerMinesAndPolesEnd
	dl $16E998,$16EA36,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles1,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles1End
	dl $16EA36,$16EACB,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles2,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles2End
	dl $16EACB,$16EB64,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles3,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles3End
	dl $16EB64,$16EC01,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles4,GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles4End
	dl $16EC01,$16F151,GFX_Sprite_Mouser,GFX_Sprite_MouserEnd
	dl $16F151,$16F69A,GFX_Sprite_RoadkillRodneyTiles1,GFX_Sprite_RoadkillRodneyTiles1End
	dl $16F69A,$16FCB3,GFX_Sprite_RoadkillRodneyTiles2,GFX_Sprite_RoadkillRodneyTiles2End
	dl $16FCB3,$16FFF9,GFX_Sprite_RobotWalker,GFX_Sprite_RobotWalkerEnd
	dl $188000,$18981D,GFX_Sprite_Leatherhead,GFX_Sprite_LeatherheadGFX_Sprite_LeatherheadEnd
	dl $18981D,$18A0D3,GFX_Sprite_VersusMode_MasterSplinter,GFX_Sprite_VersusMode_MasterSplinterEnd
	dl $18A0D3,$18A633,GFX_Sprite_CowabungaSpeechBubble,GFX_Sprite_CowabungaSpeechBubbleEnd
	dl $18A633,$18B464,GFX_Sprite_RatKing,GFX_Sprite_RatKingEnd
	dl $18B464,$18CCBA,GFX_Sprite_TokkaAndRahzar,GFX_Sprite_TokkaAndRahzarEnd
	dl $18CCBA,$18E64A,GFX_Sprite_Slash,GFX_Sprite_SlashEnd
	dl $18E64A,$18FC04,GFX_Sprite_BebopAndRocksteady,GFX_Sprite_BebopAndRocksteadyEnd
	dl $19FF94,$19FFCF,GFX_Sprite_SurfboardSplash1,GFX_Sprite_SurfboardSplash1End
	dl $1A8000,$1A9751,GFX_Sprite_KrangBody,GFX_Sprite_KrangBodyEnd
	dl $1AAD87,$1ABE66,GFX_Layer1_TurtlesWatchTVScene,GFX_Layer1_TurtlesWatchTVSceneEnd
	dl $1ABE66,$1AD79C,GFX_Sprite_EveningNewsScreen_AprilONeilFacingScreen,GFX_Sprite_EveningNewsScreen_AprilONeilFacingScreenEnd
	dl $1AD79C,$1AE29F,GFX_Sprite_EveningNewsScreen_AprilONeilLookingAway,GFX_Sprite_EveningNewsScreen_AprilONeilLookingAwayEnd
	dl $1AE29F,$1AE339,GFX_Sprite_FootClanGrunt_TeleportInTiles2,GFX_Sprite_FootClanGrunt_TeleportInTiles2End
	dl $1AE339,$1AEB80,GFX_Sprite_IntroCutscene_ManholeCoverAndLights,GFX_Sprite_IntroCutscene_ManholeCoverAndLightsEnd
	dl $1AEB80,$1AEEFA,GFX_Sprite_TurtlesWatchTVScene_Shredder,GFX_Sprite_TurtlesWatchTVScene_ShredderEnd
	dl $1AF2FA,$1AF51B,GFX_Sprite_ShedderProjectionHands,GFX_Sprite_ShedderProjectionHandsEnd
	dl $1AF51B,$1AF6A4,GFX_Sprite_TechnodromeAppearsSceneSprites1,GFX_Sprite_TechnodromeAppearsSceneSprites1End
	dl $1AF9A5,$1AFFE9,GFX_Sprite_LargeShredderHeadAfterHisFight,GFX_Sprite_LargeShredderHeadAfterHisFightEnd
	dl $1B8000,$1B953D,GFX_Mode7_IntroCutscene_TurtlePoses,GFX_Mode7_IntroCutscene_TurtlePosesEnd
	dl $1B953D,$1BA720,GFX_FGBG_IntroCutscene_CitySceneTiles1,GFX_FGBG_IntroCutscene_CitySceneTiles1End
	dl $1BA720,$1BB33B,GFX_FGBG_IntroCutscene_CitySceneTiles2,GFX_FGBG_IntroCutscene_CitySceneTiles2End
	dl $1BB33B,$1BB39D,GFX_Layer3_IntroCutscene_SewerLight,GFX_Layer3_IntroCutscene_SewerLightEnd
	dl $1BB39D,$1BC19C,GFX_Layer1_IntroCutscene_ScreenTearEffect,GFX_Layer1_IntroCutscene_ScreenTearEffectEnd
	dl $1BD875,$1BEBDF,GFX_FGBG_EveningNewsScreen,GFX_FGBG_EveningNewsScreenEnd
	dl $1BF4DC,$1BF765,GFX_Layer2_StatueOfLibertyReturnedScene1,GFX_Layer2_StatueOfLibertyReturnedScene1End
	dl $1BF8CC,$1BFC1B,GFX_Layer3_TechnodromeTheFinalShellShock,GFX_Layer3_TechnodromeTheFinalShellShockEnd
	dl $1BFC1B,$1BFC8F,GFX_Sprite_StoneWarriorElectricGunTiles1,GFX_Sprite_StoneWarriorElectricGunTiles1End
	dl $1BFC8F,$1BFFB3,GFX_Sprite_StoneWarriorNapalmGunTiles2,GFX_Sprite_StoneWarriorNapalmGunTiles2End
	dl $1CE5CD,$1CEBB5,GFX_Sprite_FootClanGrunt_PonchoPoses,GFX_Sprite_FootClanGrunt_PonchoPosesEnd
	dl $1CEBB5,$1CEE62,GFX_Sprite_KrangBodyFlyingInBG,GFX_Sprite_KrangBodyFlyingInBGEnd
	dl $1CEE62,$1CEEB8,GFX_Sprite_BombPizzaBox_BottomHalf,GFX_Sprite_BombPizzaBox_BottomHalfEnd
	dl $1CEEB8,$1CFD00,GFX_Sprite_TitleScreen,GFX_Sprite_TitleScreenEnd
if !ROMVer&(!TMNTIV_E) != $00
	dl $1CFE90,$1CFEA7,GFX_Layer3_CopyrightRSymbol,GFX_Layer3_CopyrightRSymbolEnd
	dl $1CFEA7,$1CFFE6,GFX_Sprite_TokkaAndRahzarProjectiles,GFX_Sprite_TokkaAndRahzarProjectilesEnd
else
	dl $1CFE91,$1CFEA8,GFX_Layer3_CopyrightRSymbol,GFX_Layer3_CopyrightRSymbolEnd
	dl $1CFEA8,$1CFFE7,GFX_Sprite_TokkaAndRahzarProjectiles,GFX_Sprite_TokkaAndRahzarProjectilesEnd
endif
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

DynamicSpritesPointersStart:
	dl $0A8002,$0A8362,GFX_Sprite_Turtle_WalkSide1,GFX_Sprite_Turtle_WalkSide1End
	dl $0A8364,$0A86C4,GFX_Sprite_Turtle_WalkSide2,GFX_Sprite_Turtle_WalkSide2End
	dl $0A86C6,$0A89E6,GFX_Sprite_Turtle_WalkSide3,GFX_Sprite_Turtle_WalkSide3End
	dl $0A89E8,$0A8E28,GFX_Sprite_Turtle_SpinJump1And2,GFX_Sprite_Turtle_SpinJump1And2End
	dl $0A8E2A,$0A922A,GFX_Sprite_Turtle_SpinJump3And4,GFX_Sprite_Turtle_SpinJump3And4End
	dl $0A922C,$0A95AC,GFX_Sprite_Turtle_Jump,GFX_Sprite_Turtle_JumpEnd
	dl $0A95AE,$0A990E,GFX_Sprite_Turtle_Fall,GFX_Sprite_Turtle_FallEnd
	dl $0A9910,$0A9D10,GFX_Sprite_Turtle_JumpDiveKick,GFX_Sprite_Turtle_JumpDiveKickEnd
	dl $0A9D12,$0AA052,GFX_Sprite_Turtle_WalkUp1,GFX_Sprite_Turtle_WalkUp1End
	dl $0AA054,$0AA3B4,GFX_Sprite_Turtle_WalkUp2,GFX_Sprite_Turtle_WalkUp2End
	dl $0AA3B6,$0AA6F6,GFX_Sprite_Turtle_WalkUp3,GFX_Sprite_Turtle_WalkUp3End
	dl $0AA6F8,$0AAAB8,GFX_Sprite_Turtle_SideKick1,GFX_Sprite_Turtle_SideKick1End
	dl $0AAABA,$0AAEBA,GFX_Sprite_Turtle_SideKick2,GFX_Sprite_Turtle_SideKick2End
	dl $0AAEBC,$0AB21C,GFX_Sprite_Turtle_Run1,GFX_Sprite_Turtle_Run1End
	dl $0AB21E,$0AB51E,GFX_Sprite_Turtle_Run2,GFX_Sprite_Turtle_Run2End
	dl $0AB520,$0AB8E0,GFX_Sprite_Turtle_Run3,GFX_Sprite_Turtle_Run3End
	dl $0AB8E2,$0ABCE2,GFX_Sprite_Turtle_SideFallKick,GFX_Sprite_Turtle_SideFallKickEnd
	dl $0ABCE4,$0AC024,GFX_Sprite_Turtle_JumpKick1,GFX_Sprite_Turtle_JumpKick1End
	dl $0AC026,$0AC3E6,GFX_Sprite_Turtle_JumpKick2,GFX_Sprite_Turtle_JumpKick2End
	dl $0AC3E8,$0AC768,GFX_Sprite_Turtle_AerialWeaponSwing1,GFX_Sprite_Turtle_AerialWeaponSwing1End
	dl $0AC76A,$0ACAEA,GFX_Sprite_Turtle_AerialWeaponSwing2,GFX_Sprite_Turtle_AerialWeaponSwing2End
	dl $0ACAEC,$0ACDEC,GFX_Sprite_Turtle_AerialWeaponSwing3,GFX_Sprite_Turtle_AerialWeaponSwing3End
	dl $0ACDEE,$0AD1EE,GFX_Sprite_Turtle_ShoulderCharge,GFX_Sprite_Turtle_ShoulderChargeEnd
	dl $0AD1F0,$0AD570,GFX_Sprite_Turtle_SpinAttack2,GFX_Sprite_Turtle_SpinAttack2End
	dl $0AD572,$0AD8B2,GFX_Sprite_Turtle_SpinAttack3,GFX_Sprite_Turtle_SpinAttack3End
	dl $0AD8B4,$0ADC74,GFX_Sprite_Turtle_SpinAttack4,GFX_Sprite_Turtle_SpinAttack4End
	dl $0ADC76,$0ADFF6,GFX_Sprite_Turtle_SpinAttack1,GFX_Sprite_Turtle_SpinAttack1End
	dl $0ADFF8,$0AE338,GFX_Sprite_Turtle_SlideKick,GFX_Sprite_Turtle_SlideKickEnd
	dl $0AE33A,$0AE73A,GFX_Sprite_Turtle_Hurt_PunchedInFace,GFX_Sprite_Turtle_Hurt_PunchedInFaceEnd
	dl $0AE73C,$0AEB1C,GFX_Sprite_Turtle_Hurt_LeanFarBack,GFX_Sprite_Turtle_Hurt_LeanFarBackEnd
	dl $0AEB1E,$0AEF1E,GFX_Sprite_Turtle_Hurt_BalanceOnOneFoot,GFX_Sprite_Turtle_Hurt_BalanceOnOneFootEnd
	dl $0AEF20,$0AF320,GFX_Sprite_Turtle_ShotByBaxterBeam,GFX_Sprite_Turtle_ShotByBaxterBeamEnd
	dl $0AF322,$0AF642,GFX_Sprite_Turtle_StandingUpFromFall,GFX_Sprite_Turtle_StandingUpFromFallEnd
	dl $0AF644,$0AF9A4,GFX_Sprite_Turtle_Hurt_HitInBack,GFX_Sprite_Turtle_Hurt_HitInBackEnd
	dl $0AF9A6,$0AFDA6,GFX_Sprite_Turtle_Hurt_HitInBackUpwards,GFX_Sprite_Turtle_Hurt_HitInBackUpwardsEnd
	dl $118002,$1180E2,GFX_Sprite_TurtleWeapon_Pose1,GFX_Sprite_TurtleWeapon_Pose1End
	dl $1180E4,$1181A4,GFX_Sprite_TurtleWeapon_Pose2,GFX_Sprite_TurtleWeapon_Pose2End
	dl $1181A6,$118266,GFX_Sprite_TurtleWeapon_Pose3,GFX_Sprite_TurtleWeapon_Pose3End
	dl $118268,$118368,GFX_Sprite_TurtleWeapon_Pose4,GFX_Sprite_TurtleWeapon_Pose4End
	dl $11836A,$11848A,GFX_Sprite_TurtleWeapon_Pose5,GFX_Sprite_TurtleWeapon_Pose5End
	dl $11848C,$11854C,GFX_Sprite_TurtleWeapon_Pose6,GFX_Sprite_TurtleWeapon_Pose6End
	dl $11854E,$1185EE,GFX_Sprite_TurtleWeapon_Pose7,GFX_Sprite_TurtleWeapon_Pose7End
	dl $1185F0,$1186D0,GFX_Sprite_TurtleWeapon_Pose8,GFX_Sprite_TurtleWeapon_Pose8End
	dl $1186D2,$118792,GFX_Sprite_TurtleWeapon_Pose9,GFX_Sprite_TurtleWeapon_Pose9End
	dl $118794,$118874,GFX_Sprite_TurtleWeapon_Pose10,GFX_Sprite_TurtleWeapon_Pose10End
	dl $118876,$118936,GFX_Sprite_TurtleWeapon_Pose11,GFX_Sprite_TurtleWeapon_Pose11End
	dl $118938,$118A18,GFX_Sprite_TurtleWeapon_Pose12,GFX_Sprite_TurtleWeapon_Pose12End
	dl $118A1A,$118B1A,GFX_Sprite_TurtleWeapon_Pose13,GFX_Sprite_TurtleWeapon_Pose13End
	dl $118B1C,$118BFC,GFX_Sprite_TurtleWeapon_Pose14,GFX_Sprite_TurtleWeapon_Pose14End
	dl $118BFE,$118D5E,GFX_Sprite_TurtleWeapon_Pose15,GFX_Sprite_TurtleWeapon_Pose15End
	dl $118D60,$118DE0,GFX_Sprite_TurtleWeapon_Pose16,GFX_Sprite_TurtleWeapon_Pose16End
	dl $118DE2,$118E42,GFX_Sprite_TurtleWeapon_Pose17,GFX_Sprite_TurtleWeapon_Pose17End
	dl $118E44,$118F44,GFX_Sprite_TurtleWeapon_Pose18,GFX_Sprite_TurtleWeapon_Pose18End
	dl $118F46,$119026,GFX_Sprite_TurtleWeapon_Pose19,GFX_Sprite_TurtleWeapon_Pose19End
	dl $119028,$119108,GFX_Sprite_TurtleWeapon_Pose20,GFX_Sprite_TurtleWeapon_Pose20End
	dl $11910A,$1191EA,GFX_Sprite_TurtleWeapon_Pose21,GFX_Sprite_TurtleWeapon_Pose21End
	dl $1191EC,$11932C,GFX_Sprite_TurtleWeapon_Pose22,GFX_Sprite_TurtleWeapon_Pose22End
	dl $11932E,$11948E,GFX_Sprite_TurtleWeapon_Pose23,GFX_Sprite_TurtleWeapon_Pose23End
	dl $119490,$1195B0,GFX_Sprite_TurtleWeapon_Pose24,GFX_Sprite_TurtleWeapon_Pose24End
	dl $1195B2,$1196B2,GFX_Sprite_TurtleWeapon_Pose25,GFX_Sprite_TurtleWeapon_Pose25End
	dl $1196B4,$119774,GFX_Sprite_TurtleWeapon_Pose26,GFX_Sprite_TurtleWeapon_Pose26End
	dl $119776,$119896,GFX_Sprite_TurtleWeapon_Pose27,GFX_Sprite_TurtleWeapon_Pose27End
	dl $119898,$119958,GFX_Sprite_TurtleWeapon_Pose28,GFX_Sprite_TurtleWeapon_Pose28End
	dl $11995A,$119A9A,GFX_Sprite_TurtleWeapon_Pose29,GFX_Sprite_TurtleWeapon_Pose29End
	dl $119A9C,$119BBC,GFX_Sprite_TurtleWeapon_Pose30,GFX_Sprite_TurtleWeapon_Pose30End
	dl $119BBE,$119C5E,GFX_Sprite_TurtleWeapon_Pose31,GFX_Sprite_TurtleWeapon_Pose31End
	dl $119C60,$119D40,GFX_Sprite_TurtleWeapon_Pose32,GFX_Sprite_TurtleWeapon_Pose32End
	dl $119D42,$119E02,GFX_Sprite_TurtleWeapon_Pose33,GFX_Sprite_TurtleWeapon_Pose33End
	dl $119E04,$119EE4,GFX_Sprite_TurtleWeapon_Pose34,GFX_Sprite_TurtleWeapon_Pose34End
	dl $119EE6,$119FE6,GFX_Sprite_TurtleWeapon_Pose35,GFX_Sprite_TurtleWeapon_Pose35End
	dl $119FE8,$11A0C8,GFX_Sprite_TurtleWeapon_Pose36,GFX_Sprite_TurtleWeapon_Pose36End
	dl $11A0CA,$11A1EA,GFX_Sprite_TurtleWeapon_Pose37,GFX_Sprite_TurtleWeapon_Pose37End
	dl $11A1EC,$11A2CC,GFX_Sprite_TurtleWeapon_Pose38,GFX_Sprite_TurtleWeapon_Pose38End
	dl $11A2CE,$11A3EE,GFX_Sprite_TurtleWeapon_Pose39,GFX_Sprite_TurtleWeapon_Pose39End
	dl $11A3F0,$11A4F0,GFX_Sprite_TurtleWeapon_Pose40,GFX_Sprite_TurtleWeapon_Pose40End
	dl $11A4F2,$11A5D2,GFX_Sprite_TurtleWeapon_Pose41,GFX_Sprite_TurtleWeapon_Pose41End
	dl $11A5D4,$11A694,GFX_Sprite_TurtleWeapon_Pose42,GFX_Sprite_TurtleWeapon_Pose42End
	dl $11A696,$11A7B6,GFX_Sprite_TurtleWeapon_Pose43,GFX_Sprite_TurtleWeapon_Pose43End
	dl $11A7B8,$11A8F8,GFX_Sprite_TurtleWeapon_Pose44,GFX_Sprite_TurtleWeapon_Pose44End
	dl $11A8FA,$11AADA,GFX_Sprite_TurtleWeapon_Pose45,GFX_Sprite_TurtleWeapon_Pose45End
	dl $11AADC,$11ABFC,GFX_Sprite_TurtleWeapon_Pose46,GFX_Sprite_TurtleWeapon_Pose46End
	dl $11ABFE,$11ADFE,GFX_Sprite_TurtleWeapon_Pose47,GFX_Sprite_TurtleWeapon_Pose47End
	dl $11AE00,$11AFA0,GFX_Sprite_TurtleWeapon_Pose48,GFX_Sprite_TurtleWeapon_Pose48End
	dl $11AFA2,$11B082,GFX_Sprite_TurtleWeapon_Pose49,GFX_Sprite_TurtleWeapon_Pose49End
	dl $11B084,$11B204,GFX_Sprite_TurtleWeapon_Pose50,GFX_Sprite_TurtleWeapon_Pose50End
	dl $11B206,$11B2E6,GFX_Sprite_TurtleWeapon_Pose51,GFX_Sprite_TurtleWeapon_Pose51End
	dl $11B2E8,$11B3A8,GFX_Sprite_TurtleWeapon_Pose52,GFX_Sprite_TurtleWeapon_Pose52End
	dl $11B3AA,$11B48A,GFX_Sprite_TurtleWeapon_Pose53,GFX_Sprite_TurtleWeapon_Pose53End
	dl $11B48C,$11B52C,GFX_Sprite_TurtleWeapon_Pose54,GFX_Sprite_TurtleWeapon_Pose54End
	dl $11B52E,$11B62E,GFX_Sprite_TurtleWeapon_Pose55,GFX_Sprite_TurtleWeapon_Pose55End
	dl $11B630,$11B750,GFX_Sprite_TurtleWeapon_Pose56,GFX_Sprite_TurtleWeapon_Pose56End
	dl $11B752,$11B7B2,GFX_Sprite_TurtleWeapon_Pose57,GFX_Sprite_TurtleWeapon_Pose57End
	dl $11B7B4,$11B814,GFX_Sprite_TurtleWeapon_Pose58,GFX_Sprite_TurtleWeapon_Pose58End
	dl $11B816,$11B896,GFX_Sprite_TurtleWeapon_Pose59,GFX_Sprite_TurtleWeapon_Pose59End
	dl $11B898,$11B998,GFX_Sprite_TurtleWeapon_Pose60,GFX_Sprite_TurtleWeapon_Pose60End
	dl $11B99A,$11BA3A,GFX_Sprite_TurtleWeapon_Pose61,GFX_Sprite_TurtleWeapon_Pose61End
	dl $11BA3C,$11BABC,GFX_Sprite_TurtleWeapon_Pose62,GFX_Sprite_TurtleWeapon_Pose62End
	dl $11BABE,$11BB9E,GFX_Sprite_TurtleWeapon_Pose63,GFX_Sprite_TurtleWeapon_Pose63End
	dl $11BBA0,$11BC80,GFX_Sprite_TurtleWeapon_Pose64,GFX_Sprite_TurtleWeapon_Pose64End
	dl $11BC82,$11BD02,GFX_Sprite_TurtleWeapon_Pose65,GFX_Sprite_TurtleWeapon_Pose65End
	dl $11BD04,$11BDC4,GFX_Sprite_TurtleWeapon_Pose66,GFX_Sprite_TurtleWeapon_Pose66End
	dl $11BDC6,$11BE26,GFX_Sprite_TurtleWeapon_Pose67,GFX_Sprite_TurtleWeapon_Pose67End
	dl $11BE28,$11BEC8,GFX_Sprite_TurtleWeapon_Pose68,GFX_Sprite_TurtleWeapon_Pose68End
	dl $11BECA,$11C04A,GFX_Sprite_TurtleWeapon_Pose69,GFX_Sprite_TurtleWeapon_Pose69End
	dl $11C04C,$11C14C,GFX_Sprite_TurtleWeapon_Pose70,GFX_Sprite_TurtleWeapon_Pose70End
	dl $11C14E,$11C22E,GFX_Sprite_TurtleWeapon_Pose71,GFX_Sprite_TurtleWeapon_Pose71End
	dl $11C230,$11C290,GFX_Sprite_TurtleWeapon_Pose72,GFX_Sprite_TurtleWeapon_Pose72End
	dl $11C292,$11C392,GFX_Sprite_TurtleWeapon_Pose73,GFX_Sprite_TurtleWeapon_Pose73End
	dl $11C394,$11C474,GFX_Sprite_TurtleWeapon_Pose74,GFX_Sprite_TurtleWeapon_Pose74End
	dl $11C476,$11C5D6,GFX_Sprite_TurtleWeapon_Pose75,GFX_Sprite_TurtleWeapon_Pose75End
	dl $11C5D8,$11C698,GFX_Sprite_TurtleWeapon_Pose76,GFX_Sprite_TurtleWeapon_Pose76End
	dl $11C69A,$11C71A,GFX_Sprite_TurtleWeapon_Pose77,GFX_Sprite_TurtleWeapon_Pose77End
	dl $11C71C,$11C81C,GFX_Sprite_TurtleWeapon_Pose78,GFX_Sprite_TurtleWeapon_Pose78End
	dl $11C81E,$11C89E,GFX_Sprite_TurtleWeapon_Pose79,GFX_Sprite_TurtleWeapon_Pose79End
	dl $11C8A0,$11CA60,GFX_Sprite_TurtleWeapon_Pose80,GFX_Sprite_TurtleWeapon_Pose80End
	dl $11CA62,$11CB62,GFX_Sprite_TurtleWeapon_Pose81,GFX_Sprite_TurtleWeapon_Pose81End
	dl $11CB64,$11CC04,GFX_Sprite_TurtleWeapon_Pose82,GFX_Sprite_TurtleWeapon_Pose82End
	dl $11CC06,$11CCA6,GFX_Sprite_TurtleWeapon_Pose83,GFX_Sprite_TurtleWeapon_Pose83End
	dl $11CCA8,$11CD88,GFX_Sprite_TurtleWeapon_Pose84,GFX_Sprite_TurtleWeapon_Pose84End
	dl $11CD8A,$11CE6A,GFX_Sprite_TurtleWeapon_Pose85,GFX_Sprite_TurtleWeapon_Pose85End
	dl $11CE6C,$11CF4C,GFX_Sprite_TurtleWeapon_Pose86,GFX_Sprite_TurtleWeapon_Pose86End
	dl $11CF4E,$11D02E,GFX_Sprite_TurtleWeapon_Pose87,GFX_Sprite_TurtleWeapon_Pose87End
	dl $11D030,$11D130,GFX_Sprite_TurtleWeapon_Pose88,GFX_Sprite_TurtleWeapon_Pose88End
	dl $11D132,$11D212,GFX_Sprite_TurtleWeapon_Pose89,GFX_Sprite_TurtleWeapon_Pose89End
	dl $11D214,$11D314,GFX_Sprite_TurtleWeapon_Pose90,GFX_Sprite_TurtleWeapon_Pose90End
	dl $11D316,$11D3B6,GFX_Sprite_TurtleWeapon_Pose91,GFX_Sprite_TurtleWeapon_Pose91End
	dl $11D3B8,$11D498,GFX_Sprite_TurtleWeapon_Pose92,GFX_Sprite_TurtleWeapon_Pose92End
	dl $11D49A,$11D55A,GFX_Sprite_TurtleWeapon_Pose93,GFX_Sprite_TurtleWeapon_Pose93End
	dl $11D55C,$11D67C,GFX_Sprite_TurtleWeapon_Pose94,GFX_Sprite_TurtleWeapon_Pose94End
	dl $11D67E,$11D7DE,GFX_Sprite_TurtleWeapon_Pose95,GFX_Sprite_TurtleWeapon_Pose95End
	dl $11D7E0,$11D9A0,GFX_Sprite_TurtleWeapon_Pose96,GFX_Sprite_TurtleWeapon_Pose96End
	dl $11D9A2,$11DAA2,GFX_Sprite_TurtleWeapon_Pose97,GFX_Sprite_TurtleWeapon_Pose97End
	dl $11DAA4,$11DCA4,GFX_Sprite_TurtleWeapon_Pose98,GFX_Sprite_TurtleWeapon_Pose98End
	dl $11DCA6,$11DE66,GFX_Sprite_TurtleWeapon_Pose99,GFX_Sprite_TurtleWeapon_Pose99End
	dl $11DE68,$11E028,GFX_Sprite_TurtleWeapon_Pose100,GFX_Sprite_TurtleWeapon_Pose100End
	dl $11E02A,$11E22A,GFX_Sprite_TurtleWeapon_Pose101,GFX_Sprite_TurtleWeapon_Pose101End
	dl $11E22C,$11E38C,GFX_Sprite_TurtleWeapon_Pose102,GFX_Sprite_TurtleWeapon_Pose102End
	dl $11E38E,$11E98E,GFX_Sprite_Turtle_RollThrow3,GFX_Sprite_Turtle_RollThrow3End
	dl $11E990,$11EF90,GFX_Sprite_Turtle_BeginThrowEnemy2,GFX_Sprite_Turtle_BeginThrowEnemy2End
	dl $11EF92,$11F592,GFX_Sprite_Turtle_Hurt_DevolvedPoses,GFX_Sprite_Turtle_Hurt_DevolvedPosesEnd
	dl $11F594,$11FB94,GFX_Sprite_Michaelangelo_Stand,GFX_Sprite_Michaelangelo_StandEnd
	dl $138002,$138402,GFX_Sprite_Turtle_Hurt_SitOnGround,GFX_Sprite_Turtle_Hurt_SitOnGroundEnd
	dl $138404,$1387A4,GFX_Sprite_Turtle_Grabbed1,GFX_Sprite_Turtle_Grabbed1End
	dl $1387A6,$138BA6,GFX_Sprite_Turtle_Grabbed2,GFX_Sprite_Turtle_Grabbed2End
	dl $138BA8,$138EE8,GFX_Sprite_Turtle_GetUpOffGround1,GFX_Sprite_Turtle_GetUpOffGround1End
	dl $138EEA,$1392CA,GFX_Sprite_Turtle_GetUpOffGround2,GFX_Sprite_Turtle_GetUpOffGround2End
	dl $1392CC,$13964C,GFX_Sprite_Turtle_GetUpOffGround3,GFX_Sprite_Turtle_GetUpOffGround3End
	dl $13964E,$1399EE,GFX_Sprite_Turtle_GetUpOffGround4,GFX_Sprite_Turtle_GetUpOffGround4End
	dl $1399F0,$139DB0,GFX_Sprite_Turtle_StartRollAttack1,GFX_Sprite_Turtle_StartRollAttack1End
	dl $139DB2,$13A1B2,GFX_Sprite_Turtle_StartRollAttack2,GFX_Sprite_Turtle_StartRollAttack2End
	dl $13A1B4,$13A594,GFX_Sprite_Turtle_Hurt_TripOver1,GFX_Sprite_Turtle_Hurt_TripOver1End
	dl $13A596,$13A936,GFX_Sprite_Turtle_Hurt_TripOver2,GFX_Sprite_Turtle_Hurt_TripOver2End
	dl $13A938,$13AD38,GFX_Sprite_Turtle_Hurt_TripOver3,GFX_Sprite_Turtle_Hurt_TripOver3End
	dl $13AD3A,$13B07A,GFX_Sprite_Turtle_Hurt_KnockedUpAndBack1,GFX_Sprite_Turtle_Hurt_KnockedUpAndBack1End
	dl $13B07C,$13B47C,GFX_Sprite_Turtle_Hurt_KnockedUpAndBack2,GFX_Sprite_Turtle_Hurt_KnockedUpAndBack2End
	dl $13B47E,$13B7FE,GFX_Sprite_Turtle_Hurt_PunchedInGut,GFX_Sprite_Turtle_Hurt_PunchedInGutEnd
	dl $13B800,$13BC00,GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnBack,GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnBackEnd
	dl $13BC02,$13C002,GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnStomach,GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnStomachEnd
	dl $13C004,$13C604,GFX_Sprite_Turtle_Hurt_SpinningLikeTop,GFX_Sprite_Turtle_Hurt_SpinningLikeTopEnd
	dl $13C606,$13CBC6,GFX_Sprite_Turtle_Hurt_SmackedByPlank,GFX_Sprite_Turtle_Hurt_SmackedByPlankEnd
	dl $13CBC8,$13D1C8,GFX_Sprite_Turtle_Hurt_Electrified1,GFX_Sprite_Turtle_Hurt_Electrified1End
	dl $13D1CA,$13D72A,GFX_Sprite_Turtle_Hurt_Electrified2,GFX_Sprite_Turtle_Hurt_Electrified2End
	dl $13D72C,$13DD2C,GFX_Sprite_Turtle_Hurt_TrappedByEnergy,GFX_Sprite_Turtle_Hurt_TrappedByEnergyEnd
	dl $13DD2E,$13E32E,GFX_Sprite_Turtle_Hurt_BurntFootJump,GFX_Sprite_Turtle_Hurt_BurntFootJumpEnd
	dl $13E330,$13E730,GFX_Sprite_Turtle_Hurt_BurntFace,GFX_Sprite_Turtle_Hurt_BurntFaceEnd
	dl $13E732,$13EB32,GFX_Sprite_Turtle_Hurt_Squished,GFX_Sprite_Turtle_Hurt_SquishedEnd
	dl $13EB34,$13F134,GFX_Sprite_Turtle_FellInHolePoses,GFX_Sprite_Turtle_FellInHolePosesEnd
	dl $13F136,$13F736,GFX_Sprite_Turtle_Hurt_Frozen,GFX_Sprite_Turtle_Hurt_FrozenEnd
	dl $13F738,$13FAF8,GFX_Sprite_Turtle_Hurt_InBubble,GFX_Sprite_Turtle_Hurt_InBubbleEnd
	dl $13FAFA,$13FEDA,GFX_Sprite_Raphael_4thStandingAttack,GFX_Sprite_Raphael_4thStandingAttackEnd
	dl $148002,$148082,GFX_Sprite_TurtleWeapon_Pose103,GFX_Sprite_TurtleWeapon_Pose103End
	dl $148084,$148104,GFX_Sprite_TurtleWeapon_Pose104,GFX_Sprite_TurtleWeapon_Pose104End
	dl $148106,$148186,GFX_Sprite_TurtleWeapon_Pose105,GFX_Sprite_TurtleWeapon_Pose105End
	dl $148188,$148268,GFX_Sprite_TurtleWeapon_Pose106,GFX_Sprite_TurtleWeapon_Pose106End
	dl $14826A,$14832A,GFX_Sprite_TurtleWeapon_Pose107,GFX_Sprite_TurtleWeapon_Pose107End
	dl $14832C,$1483CC,GFX_Sprite_TurtleWeapon_Pose108,GFX_Sprite_TurtleWeapon_Pose108End
	dl $1483CE,$1484AE,GFX_Sprite_TurtleWeapon_Pose109,GFX_Sprite_TurtleWeapon_Pose109End
	dl $1484B0,$148550,GFX_Sprite_TurtleWeapon_Pose110,GFX_Sprite_TurtleWeapon_Pose110End
	dl $148552,$1485F2,GFX_Sprite_TurtleWeapon_Pose111,GFX_Sprite_TurtleWeapon_Pose111End
	dl $1485F4,$1486D4,GFX_Sprite_TurtleWeapon_Pose112,GFX_Sprite_TurtleWeapon_Pose112End
	dl $1486D6,$148736,GFX_Sprite_TurtleWeapon_Pose113,GFX_Sprite_TurtleWeapon_Pose113End
	dl $148738,$1487D8,GFX_Sprite_TurtleWeapon_Pose114,GFX_Sprite_TurtleWeapon_Pose114End
	dl $1487DA,$1488BA,GFX_Sprite_TurtleWeapon_Pose115,GFX_Sprite_TurtleWeapon_Pose115End
	dl $1488BC,$14895C,GFX_Sprite_TurtleWeapon_Pose116,GFX_Sprite_TurtleWeapon_Pose116End
	dl $14895E,$1489DE,GFX_Sprite_TurtleWeapon_Pose117,GFX_Sprite_TurtleWeapon_Pose117End
	dl $1489E0,$148A40,GFX_Sprite_TurtleWeapon_Pose118,GFX_Sprite_TurtleWeapon_Pose118End
	dl $148A42,$148AE2,GFX_Sprite_TurtleWeapon_Pose119,GFX_Sprite_TurtleWeapon_Pose119End
	dl $148AE4,$148C44,GFX_Sprite_TurtleWeapon_Pose120,GFX_Sprite_TurtleWeapon_Pose120End
	dl $148C46,$148D46,GFX_Sprite_TurtleWeapon_Pose121,GFX_Sprite_TurtleWeapon_Pose121End
	dl $148D48,$148DE8,GFX_Sprite_TurtleWeapon_Pose122,GFX_Sprite_TurtleWeapon_Pose122End
	dl $148DEA,$148E8A,GFX_Sprite_TurtleWeapon_Pose123,GFX_Sprite_TurtleWeapon_Pose123End
	dl $148E8C,$148FEC,GFX_Sprite_TurtleWeapon_Pose124,GFX_Sprite_TurtleWeapon_Pose124End
	dl $148FEE,$14912E,GFX_Sprite_TurtleWeapon_Pose125,GFX_Sprite_TurtleWeapon_Pose125End
	dl $149130,$1492F0,GFX_Sprite_TurtleWeapon_Pose126,GFX_Sprite_TurtleWeapon_Pose126End
	dl $1492F2,$1493D2,GFX_Sprite_TurtleWeapon_Pose127,GFX_Sprite_TurtleWeapon_Pose127End
	dl $1493D4,$149454,GFX_Sprite_TurtleWeapon_Pose128,GFX_Sprite_TurtleWeapon_Pose128End
	dl $149456,$1494D6,GFX_Sprite_TurtleWeapon_Pose129,GFX_Sprite_TurtleWeapon_Pose129End
	dl $1494D8,$149578,GFX_Sprite_TurtleWeapon_Pose130,GFX_Sprite_TurtleWeapon_Pose130End
	dl $14957A,$14963A,GFX_Sprite_TurtleWeapon_Pose131,GFX_Sprite_TurtleWeapon_Pose131End
	dl $14963C,$1496DC,GFX_Sprite_TurtleWeapon_Pose132,GFX_Sprite_TurtleWeapon_Pose132End
	dl $1496DE,$14977E,GFX_Sprite_TurtleWeapon_Pose133,GFX_Sprite_TurtleWeapon_Pose133End
	dl $149780,$149800,GFX_Sprite_TurtleWeapon_Pose134,GFX_Sprite_TurtleWeapon_Pose134End
	dl $149802,$149882,GFX_Sprite_TurtleWeapon_Pose135,GFX_Sprite_TurtleWeapon_Pose135End
	dl $149884,$149944,GFX_Sprite_TurtleWeapon_Pose136,GFX_Sprite_TurtleWeapon_Pose136End
	dl $149946,$149A06,GFX_Sprite_TurtleWeapon_Pose137,GFX_Sprite_TurtleWeapon_Pose137End
	dl $149A08,$149A88,GFX_Sprite_TurtleWeapon_Pose138,GFX_Sprite_TurtleWeapon_Pose138End
	dl $149A8A,$149B6A,GFX_Sprite_TurtleWeapon_Pose139,GFX_Sprite_TurtleWeapon_Pose139End
	dl $149B6C,$149C0C,GFX_Sprite_TurtleWeapon_Pose140,GFX_Sprite_TurtleWeapon_Pose140End
	dl $149C0E,$149CEE,GFX_Sprite_TurtleWeapon_Pose141,GFX_Sprite_TurtleWeapon_Pose141End
	dl $149CF0,$149D50,GFX_Sprite_TurtleWeapon_Pose142,GFX_Sprite_TurtleWeapon_Pose142End
	dl $149D52,$149E52,GFX_Sprite_TurtleWeapon_Pose143,GFX_Sprite_TurtleWeapon_Pose143End
	dl $149E54,$149F14,GFX_Sprite_TurtleWeapon_Pose144,GFX_Sprite_TurtleWeapon_Pose144End
	dl $149F16,$149FD6,GFX_Sprite_TurtleWeapon_Pose145,GFX_Sprite_TurtleWeapon_Pose145End
	dl $149FD8,$14A0F8,GFX_Sprite_TurtleWeapon_Pose146,GFX_Sprite_TurtleWeapon_Pose146End
	dl $14A0FA,$14A27A,GFX_Sprite_TurtleWeapon_Pose147,GFX_Sprite_TurtleWeapon_Pose147End
	dl $14A27C,$14A35C,GFX_Sprite_TurtleWeapon_Pose148,GFX_Sprite_TurtleWeapon_Pose148End
	dl $14A35E,$14A55E,GFX_Sprite_TurtleWeapon_Pose149,GFX_Sprite_TurtleWeapon_Pose149End
	dl $14A560,$14A6A0,GFX_Sprite_TurtleWeapon_Pose150,GFX_Sprite_TurtleWeapon_Pose150End
	dl $14A6A2,$14A7A2,GFX_Sprite_TurtleWeapon_Pose151,GFX_Sprite_TurtleWeapon_Pose151End
	dl $14A7A4,$14A844,GFX_Sprite_TurtleWeapon_Pose152,GFX_Sprite_TurtleWeapon_Pose152End
	dl $14A846,$14A8E6,GFX_Sprite_TurtleWeapon_Pose153,GFX_Sprite_TurtleWeapon_Pose153End
	dl $14A8E8,$14A9E8,GFX_Sprite_TurtleWeapon_Pose154,GFX_Sprite_TurtleWeapon_Pose154End
	dl $14A9EA,$14AAEA,GFX_Sprite_TurtleWeapon_Pose155,GFX_Sprite_TurtleWeapon_Pose155End
	dl $14AAEC,$14AB8C,GFX_Sprite_TurtleWeapon_Pose156,GFX_Sprite_TurtleWeapon_Pose156End
	dl $14AB8E,$14AC2E,GFX_Sprite_TurtleWeapon_Pose157,GFX_Sprite_TurtleWeapon_Pose157End
	dl $14AC30,$14ACB0,GFX_Sprite_TurtleWeapon_Pose158,GFX_Sprite_TurtleWeapon_Pose158End
	dl $14ACB2,$14ADB2,GFX_Sprite_TurtleWeapon_Pose159,GFX_Sprite_TurtleWeapon_Pose159End
	dl $14ADB4,$14AE74,GFX_Sprite_TurtleWeapon_Pose160,GFX_Sprite_TurtleWeapon_Pose160End
	dl $14AE76,$14AF16,GFX_Sprite_TurtleWeapon_Pose161,GFX_Sprite_TurtleWeapon_Pose161End
	dl $14AF18,$14AFD8,GFX_Sprite_TurtleWeapon_Pose162,GFX_Sprite_TurtleWeapon_Pose162End
	dl $14AFDA,$14B0FA,GFX_Sprite_TurtleWeapon_Pose163,GFX_Sprite_TurtleWeapon_Pose163End
	dl $14B0FC,$14B19C,GFX_Sprite_TurtleWeapon_Pose164,GFX_Sprite_TurtleWeapon_Pose164End
	dl $14B19E,$14B2BE,GFX_Sprite_TurtleWeapon_Pose165,GFX_Sprite_TurtleWeapon_Pose165End
	dl $14B2C0,$14B340,GFX_Sprite_TurtleWeapon_Pose166,GFX_Sprite_TurtleWeapon_Pose166End
	dl $14B342,$14B3C2,GFX_Sprite_TurtleWeapon_Pose167,GFX_Sprite_TurtleWeapon_Pose167End
	dl $14B3C4,$14B504,GFX_Sprite_TurtleWeapon_Pose168,GFX_Sprite_TurtleWeapon_Pose168End
	dl $14B506,$14B626,GFX_Sprite_TurtleWeapon_Pose169,GFX_Sprite_TurtleWeapon_Pose169End
	dl $14B628,$14B6E8,GFX_Sprite_TurtleWeapon_Pose170,GFX_Sprite_TurtleWeapon_Pose170End
	dl $14B6EA,$14B78A,GFX_Sprite_TurtleWeapon_Pose171,GFX_Sprite_TurtleWeapon_Pose171End
	dl $14B78C,$14B8AC,GFX_Sprite_TurtleWeapon_Pose172,GFX_Sprite_TurtleWeapon_Pose172End
	dl $14B8AE,$14B9CE,GFX_Sprite_TurtleWeapon_Pose173,GFX_Sprite_TurtleWeapon_Pose173End
	dl $14B9D0,$14BB90,GFX_Sprite_TurtleWeapon_Pose174,GFX_Sprite_TurtleWeapon_Pose174End
	dl $14BB92,$14BC92,GFX_Sprite_TurtleWeapon_Pose175,GFX_Sprite_TurtleWeapon_Pose175End
	dl $14BC94,$14BD14,GFX_Sprite_TurtleWeapon_Pose176,GFX_Sprite_TurtleWeapon_Pose176End
	dl $14BD16,$14BE16,GFX_Sprite_TurtleWeapon_Pose177,GFX_Sprite_TurtleWeapon_Pose177End
	dl $14BE18,$14BED8,GFX_Sprite_TurtleWeapon_Pose178,GFX_Sprite_TurtleWeapon_Pose178End
	dl $14BEDA,$14BFFA,GFX_Sprite_TurtleWeapon_Pose179,GFX_Sprite_TurtleWeapon_Pose179End
	dl $14BFFC,$14C0DC,GFX_Sprite_TurtleWeapon_Pose180,GFX_Sprite_TurtleWeapon_Pose180End
	dl $14C0DE,$14C15E,GFX_Sprite_TurtleWeapon_Pose181,GFX_Sprite_TurtleWeapon_Pose181End
	dl $14C160,$14C200,GFX_Sprite_TurtleWeapon_Pose182,GFX_Sprite_TurtleWeapon_Pose182End
	dl $14C202,$14C2E2,GFX_Sprite_TurtleWeapon_Pose183,GFX_Sprite_TurtleWeapon_Pose183End
	dl $14C2E4,$14C3A4,GFX_Sprite_TurtleWeapon_Pose184,GFX_Sprite_TurtleWeapon_Pose184End
	dl $14C3A6,$14C486,GFX_Sprite_TurtleWeapon_Pose185,GFX_Sprite_TurtleWeapon_Pose185End
	dl $14C488,$14C588,GFX_Sprite_TurtleWeapon_Pose186,GFX_Sprite_TurtleWeapon_Pose186End
	dl $14C58A,$14C6AA,GFX_Sprite_TurtleWeapon_Pose187,GFX_Sprite_TurtleWeapon_Pose187End
	dl $14C6AC,$14C7CC,GFX_Sprite_TurtleWeapon_Pose188,GFX_Sprite_TurtleWeapon_Pose188End
	dl $14C7CE,$14C8AE,GFX_Sprite_TurtleWeapon_Pose189,GFX_Sprite_TurtleWeapon_Pose189End
	dl $14C8B0,$14C970,GFX_Sprite_TurtleWeapon_Pose190,GFX_Sprite_TurtleWeapon_Pose190End
	dl $14C972,$14CA52,GFX_Sprite_TurtleWeapon_Pose191,GFX_Sprite_TurtleWeapon_Pose191End
	dl $14CA54,$14CAF4,GFX_Sprite_TurtleWeapon_Pose192,GFX_Sprite_TurtleWeapon_Pose192End
	dl $14CAF6,$14CBB6,GFX_Sprite_TurtleWeapon_Pose193,GFX_Sprite_TurtleWeapon_Pose193End
	dl $14CBB8,$14CD18,GFX_Sprite_TurtleWeapon_Pose194,GFX_Sprite_TurtleWeapon_Pose194End
	dl $14CD1A,$14CEDA,GFX_Sprite_TurtleWeapon_Pose195,GFX_Sprite_TurtleWeapon_Pose195End
	dl $14CEDC,$14D01C,GFX_Sprite_TurtleWeapon_Pose196,GFX_Sprite_TurtleWeapon_Pose196End
	dl $14D01E,$14D1DE,GFX_Sprite_TurtleWeapon_Pose197,GFX_Sprite_TurtleWeapon_Pose197End
	dl $14D1E0,$14D320,GFX_Sprite_TurtleWeapon_Pose198,GFX_Sprite_TurtleWeapon_Pose198End
	dl $14D322,$14D502,GFX_Sprite_TurtleWeapon_Pose199,GFX_Sprite_TurtleWeapon_Pose199End
	dl $14D504,$14D704,GFX_Sprite_TurtleWeapon_Pose200,GFX_Sprite_TurtleWeapon_Pose200End
	dl $14D706,$14D7C6,GFX_Sprite_TurtleWeapon_Pose201,GFX_Sprite_TurtleWeapon_Pose201End
	dl $14D7C8,$14DC68,GFX_Sprite_Turtle_ThrowEnemyTowardsScreen1,GFX_Sprite_Turtle_ThrowEnemyTowardsScreen1End
	dl $14DC6A,$14E26A,GFX_Sprite_Turtle_ThrowEnemyTowardsScreen2,GFX_Sprite_Turtle_ThrowEnemyTowardsScreen2End
	dl $14E26C,$14E46C,GFX_Sprite_TurtleWeapon_Pose202,GFX_Sprite_TurtleWeapon_Pose202End
	dl $14E46E,$14E5AE,GFX_Sprite_TurtleWeapon_Pose203,GFX_Sprite_TurtleWeapon_Pose203End
	dl $14E5B0,$14E770,GFX_Sprite_TurtleWeapon_Pose204,GFX_Sprite_TurtleWeapon_Pose204End
	dl $14E772,$14E812,GFX_Sprite_TurtleWeapon_Pose205,GFX_Sprite_TurtleWeapon_Pose205End
	dl $14E814,$14E8D4,GFX_Sprite_TurtleWeapon_Pose206,GFX_Sprite_TurtleWeapon_Pose206End
	dl $14E8D6,$14E936,GFX_Sprite_TurtleWeapon_Pose207,GFX_Sprite_TurtleWeapon_Pose207End
	dl $14E938,$14E9D8,GFX_Sprite_TurtleWeapon_Pose208,GFX_Sprite_TurtleWeapon_Pose208End
	dl $14E9DA,$14EF9A,GFX_Sprite_TurtleWeapon_Pose209,GFX_Sprite_TurtleWeapon_Pose209End
	dl $178002,$178602,GFX_Sprite_Turtle_SlamEnemyIntoGround1,GFX_Sprite_Turtle_SlamEnemyIntoGround1End
	dl $178604,$178C04,GFX_Sprite_Turtle_SlamEnemyIntoGround2,GFX_Sprite_Turtle_SlamEnemyIntoGround2End
	dl $178C06,$179206,GFX_Sprite_Turtle_VictoryPoses,GFX_Sprite_Turtle_VictoryPosesEnd
	dl $179208,$1797E8,GFX_Sprite_Leonardo_Stand,GFX_Sprite_Leonardo_StandEnd
	dl $1797EA,$179CCA,GFX_Sprite_Leonardo_1stStandingAttack1,GFX_Sprite_Leonardo_1stStandingAttack1End
	dl $179CCC,$17A2CC,GFX_Sprite_Leonardo_1stStandingAttack2,GFX_Sprite_Leonardo_1stStandingAttack2End
	dl $17A2CE,$17A8CE,GFX_Sprite_Leonardo_2ndStandingAttack1,GFX_Sprite_Leonardo_2ndStandingAttack1End
	dl $17A8D0,$17AED0,GFX_Sprite_Leonardo_2ndStandingAttack2,GFX_Sprite_Leonardo_2ndStandingAttack2End
	dl $17AED2,$17B2D2,GFX_Sprite_Leonardo_3rdStandingAttack1,GFX_Sprite_Leonardo_3rdStandingAttack1End
	dl $17B2D4,$17B6D4,GFX_Sprite_Leonardo_BackAttack1,GFX_Sprite_Leonardo_BackAttack1End
	dl $17B6D6,$17BAD6,GFX_Sprite_Leonardo_BackAttack2,GFX_Sprite_Leonardo_BackAttack2End
	dl $17BAD8,$17BF18,GFX_Sprite_Leonardo_EndOfSpinAttack,GFX_Sprite_Leonardo_EndOfSpinAttackEnd
	dl $17BF1A,$17C51A,GFX_Sprite_Turtle_BeginThrowEnemy1,GFX_Sprite_Turtle_BeginThrowEnemy1End
	dl $17C51C,$17CAFC,GFX_Sprite_Michaelangelo_1stStandingAttack1,GFX_Sprite_Michaelangelo_1stStandingAttack1End
	dl $17CAFE,$17D0FE,GFX_Sprite_Michaelangelo_1stStandingAttack2,GFX_Sprite_Michaelangelo_1stStandingAttack2End
	dl $17D100,$17D700,GFX_Sprite_Michaelangelo_2ndStandingAttack1,GFX_Sprite_Michaelangelo_2ndStandingAttack1End
	dl $17D702,$17DD02,GFX_Sprite_Michaelangelo_2ndStandingAttack2,GFX_Sprite_Michaelangelo_2ndStandingAttack2End
	dl $17DD04,$17E244,GFX_Sprite_Michaelangelo_3rdStandingAttack1,GFX_Sprite_Michaelangelo_3rdStandingAttack1End
	dl $17E246,$17E646,GFX_Sprite_Turtle_Hurt_HandBitten,GFX_Sprite_Turtle_Hurt_HandBittenEnd
	dl $17E648,$17EA68,GFX_Sprite_Michaelangelo_BackAttack1,GFX_Sprite_Michaelangelo_BackAttack1End
	dl $17EA6A,$17F06A,GFX_Sprite_Michaelangelo_BackAttack2,GFX_Sprite_Michaelangelo_BackAttack2End
	dl $17F06C,$17F66C,GFX_Sprite_Michaelangelo_JumpSwingAttack2,GFX_Sprite_Michaelangelo_JumpSwingAttack2End
	dl $17F66E,$17FB8E,GFX_Sprite_Raphael_RoundhouseKick3,GFX_Sprite_Raphael_RoundhouseKick3End
	dl $17FBDE,$17FFFE,GFX_Sprite_CreepyCaveSpeechBubble,GFX_Sprite_CreepyCaveSpeechBubbleEnd
	dl $18FC3B,$18FFFB,GFX_Sprite_Michaelangelo_JumpSwingAttack1,GFX_Sprite_Michaelangelo_JumpSwingAttack1End
	dl $198002,$198562,GFX_Sprite_Donatello_1stStandingAttack1,GFX_Sprite_Donatello_1stStandingAttack1End
	dl $198564,$198B44,GFX_Sprite_Donatello_1stStandingAttack2,GFX_Sprite_Donatello_1stStandingAttack2End
	dl $198B46,$199046,GFX_Sprite_Donatello_2ndStandingAttack1,GFX_Sprite_Donatello_2ndStandingAttack1End
	dl $199048,$199648,GFX_Sprite_Donatello_2ndStandingAttack2,GFX_Sprite_Donatello_2ndStandingAttack2End
	dl $19964A,$199C4A,GFX_Sprite_Donatello_Stand,GFX_Sprite_Donatello_StandEnd
	dl $199C4C,$19A10C,GFX_Sprite_Donatello_3rdStandingAttack1,GFX_Sprite_Donatello_3rdStandingAttack1End
	dl $19A10E,$19A62E,GFX_Sprite_Donatello_3rdStandingAttack2,GFX_Sprite_Donatello_3rdStandingAttack2End
	dl $19A630,$19AA50,GFX_Sprite_Donatello_PoleVaultStrike1,GFX_Sprite_Donatello_PoleVaultStrike1End
	dl $19AA52,$19B052,GFX_Sprite_Donatello_PoleVaultStrike2,GFX_Sprite_Donatello_PoleVaultStrike2End
	dl $19B054,$19B4F4,GFX_Sprite_Donatello_4thStandingAttack1,GFX_Sprite_Donatello_4thStandingAttack1End
	dl $19B4F6,$19B8D6,GFX_Sprite_Donatello_4thStandingAttack2,GFX_Sprite_Donatello_4thStandingAttack2End
	dl $19B8D8,$19BED8,GFX_Sprite_Raphael_Stand,GFX_Sprite_Raphael_StandEnd
	dl $19BEDA,$19C37A,GFX_Sprite_Raphael_1stStandingAttack1,GFX_Sprite_Raphael_1stStandingAttack1End
	dl $19C37C,$19C81C,GFX_Sprite_Raphael_1stStandingAttack2,GFX_Sprite_Raphael_1stStandingAttack2End
	dl $19C81E,$19CC1E,GFX_Sprite_Raphael_2ndStandingAttack1,GFX_Sprite_Raphael_2ndStandingAttack1End
	dl $19CC20,$19D1E0,GFX_Sprite_Raphael_3rdStandingAttack2,GFX_Sprite_Raphael_3rdStandingAttack2End
	dl $19D1E2,$19D582,GFX_Sprite_Raphael_3rdStandingAttack1,GFX_Sprite_Raphael_3rdStandingAttack1End
	dl $19D584,$19D984,GFX_Sprite_Raphael_2ndStandingAttack2,GFX_Sprite_Raphael_2ndStandingAttack2End
	dl $19D986,$19DE66,GFX_Sprite_Raphael_BackAttack1,GFX_Sprite_Raphael_BackAttack1End
	dl $19DE68,$19E428,GFX_Sprite_Raphael_BackAttack2,GFX_Sprite_Raphael_BackAttack2End
	dl $19E42A,$19E82A,GFX_Sprite_Raphael_RoundhouseKick1,GFX_Sprite_Raphael_RoundhouseKick1End
	dl $19E82C,$19ED2C,GFX_Sprite_Raphael_RoundhouseKick2,GFX_Sprite_Raphael_RoundhouseKick2End
	dl $19ED2E,$19F22E,GFX_Sprite_Raphael_RoundhouseKick4,GFX_Sprite_Raphael_RoundhouseKick4End
	dl $19F230,$19F830,GFX_Sprite_Turtle_RollThrow1,GFX_Sprite_Turtle_RollThrow1End
	dl $19F832,$19FD92,GFX_Sprite_Turtle_RollThrow2,GFX_Sprite_Turtle_RollThrow2End
	dl $19FD94,$19FF94,GFX_Sprite_TurtleWeapon_Pose210,GFX_Sprite_TurtleWeapon_Pose210End
	dl $1DF6FB,$1DFAFB,GFX_Sprite_Turtle_Blocking,GFX_Sprite_Turtle_BlockingEnd
	dl $1DFAFD,$1DFBFD,GFX_Sprite_TurtleWeapon_Pose211,GFX_Sprite_TurtleWeapon_Pose211End
	dl $1DFBFF,$1DFCDF,GFX_Sprite_TurtleWeapon_Pose212,GFX_Sprite_TurtleWeapon_Pose212End
	dl $1DFCE1,$1DFDA1,GFX_Sprite_TurtleWeapon_Pose213,GFX_Sprite_TurtleWeapon_Pose213End
DynamicSpritesPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
	dl $06FDF5,$06FE35,TM_Layer1_TechnodromeTheFinalShellShock,TM_Layer1_TechnodromeTheFinalShellShockEnd
	dl $06FE35,$06FE80,TM_Layer2_TechnodromeTheFinalShellShock,TM_Layer2_TechnodromeTheFinalShellShockEnd
	dl $06FE80,$06FF79,TM_Layer3_TimeTrialCharacterSelectScreen_StatusBar,TM_Layer3_TimeTrialCharacterSelectScreen_StatusBarEnd
	dl $07C493,$07C5DC,TM_Layer2_NeonNightRiders_LeftHalf,TM_Layer2_NeonNightRiders_LeftHalfEnd
	dl $07CBDC,$07CD15,TM_Layer2_NeonNightRiders_RightHalf,TM_Layer2_NeonNightRiders_RightHalfEnd
	dl $07E375,$07E3A1,TM_Layer1_TurtlesWatchTVScene,TM_Layer1_TurtlesWatchTVSceneEnd
	dl $07EB80,$07EBC1,TM_Layer2_CreditsScene,TM_Layer2_CreditsSceneEnd
	dl $07FC75,$07FE14,TM_Layer1_EndScreen,TM_Layer1_EndScreenEnd
	dl $07FE14,$07FF99,TM_Layer3_OptionsScreen_StatusBar,TM_Layer3_OptionsScreen_StatusBarEnd
	dl $08FC0A,$08FD40,TM_Layer3_CreditsScene,TM_Layer3_CreditsSceneEnd
	dl $09A511,$09A53C,TM_Layer1_CreditsScene,TM_Layer1_CreditsSceneEnd
	dl $09E0B0,$09E17F,TM_Mode7_TimeWarpScene_Icons,TM_Mode7_TimeWarpScene_IconsEnd
	dl $0AFDA6,$0AFDC6,TM_Layer2_TurtlesWatchTVScene,TM_Layer2_TurtlesWatchTVSceneEnd
	dl $0B8000,$0B81E7,TM_Layer2_KonamiLogoScreen,TM_Layer2_KonamiLogoScreenEnd
	dl $0BA45B,$0BA526,TM_Layer3_VersusModeCharacterSelectScreen_StatusBar,TM_Layer3_VersusModeCharacterSelectScreen_StatusBarEnd
if !ROMVer&(!TMNTIV_E) != $00
	dl $0BD7FC,$0BDB71,TM_Layer1_CharacterSelectScreen,TM_Layer1_CharacterSelectScreenEnd
	dl $0BFBE3,$0BFC07,TM_Layer1_KonamiLogoScreen_BottomHalf,TM_Layer1_KonamiLogoScreen_BottomHalfEnd
	dl $0BFC59,$0BFE82,TM_Layer3_TimeTrialScreen_StatusBar,TM_Layer3_TimeTrialScreen_StatusBarEnd
else
	dl $0BD7FE,$0BDB73,TM_Layer1_CharacterSelectScreen,TM_Layer1_CharacterSelectScreenEnd
	dl $0BFBE5,$0BFC09,TM_Layer1_KonamiLogoScreen_BottomHalf,TM_Layer1_KonamiLogoScreen_BottomHalfEnd
	dl $0BFC5B,$0BFE84,TM_Layer3_TimeTrialScreen_StatusBar,TM_Layer3_TimeTrialScreen_StatusBarEnd
endif
	dl $0CFF24,$0CFF4F,TM_Layer1_KonamiLogoScreen_TopHalf,TM_Layer1_KonamiLogoScreen_TopHalfEnd
	dl $0CFF4F,$0CFFFE,TM_Mode7_TurtlesWatchTVScene,TM_Mode7_TurtlesWatchTVSceneEnd
	dl $0DF4FE,$0DF854,TM_Layer2_TitleScreen_LeftHalf,TM_Layer2_TitleScreen_LeftHalfEnd
	dl $0DF854,$0DF9F1,TM_Layer2_TitleScreen_RightHalf,TM_Layer2_TitleScreen_RightHalfEnd
	dl $0DF9F1,$0DFB23,TM_Layer2_ContinueScreen_LeftHalf,TM_Layer2_ContinueScreen_LeftHalfEnd
	dl $0DFFC9,$0DFFF4,TM_Layer2_VersusModeArena,TM_Layer2_VersusModeArenaEnd
	dl $0E8AA2,$0E8B84,TM_Layer2_BigApple3AM,TM_Layer2_BigApple3AMEnd
	dl $0E8B84,$0E8CEA,TM_Layer1_BigApple3AM,TM_Layer1_BigApple3AMEnd
	dl $0E8CEA,$0E8D0C,TM_Layer3_BackgroundKrang,TM_Layer3_BackgroundKrangEnd
	dl $0E9F41,$0EA120,TM_Layer1_AlleycatBlues,TM_Layer1_AlleycatBluesEnd
	dl $0EA120,$0EA229,TM_Layer2_AlleycatBlues,TM_Layer2_AlleycatBluesEnd
	dl $0EA6F3,$0EA78D,TM_Layer2_SewerSurfin_CeilingSpikes,TM_Layer2_SewerSurfin_CeilingSpikesEnd
	dl $0EA78D,$0EA8C0,TM_Layer1_SewerSurfin,TM_Layer1_SewerSurfinEnd
	dl $0EAA3A,$0EAA6B,TM_Layer2_RatKingsBoat,TM_Layer2_RatKingsBoatEnd
	dl $0EC591,$0EC714,TM_Layer1_TechnodromeLetsKickShell_FirstSection,TM_Layer1_TechnodromeLetsKickShell_FirstSectionEnd
	dl $0EC714,$0EC747,TM_Layer2_TechnodromeLetsKickShell_FirstSection,TM_Layer2_TechnodromeLetsKickShell_FirstSectionEnd
	dl $0EC747,$0EC765,TM_Layer1_TechnodromeLetsKickShell_ElevatorSection,TM_Layer1_TechnodromeLetsKickShell_ElevatorSectionEnd
	dl $0EC765,$0EC7EC,TM_Layer2_TechnodromeLetsKickShell_ElevatorSection,TM_Layer2_TechnodromeLetsKickShell_ElevatorSectionEnd
	dl $0EC7EC,$0EC821,TM_Layer2_TechnodromeLetsKickShell_ShredderFight,TM_Layer2_TechnodromeLetsKickShell_ShredderFightEnd
	dl $0EC821,$0EC8F4,TM_Layer1_TechnodromeLetsKickShell_ShredderFight,TM_Layer1_TechnodromeLetsKickShell_ShredderFightEnd
	dl $0ECFCF,$0ED0E7,TM_Layer1_SkullAndCrossbones,TM_Layer1_SkullAndCrossbonesEnd
	dl $0EE363,$0EE581,TM_Layer1_BuryMyShellAtWoundedKnee,TM_Layer1_BuryMyShellAtWoundedKneeEnd
	dl $0EE581,$0EE65C,TM_Layer2_BuryMyShellAtWoundedKnee,TM_Layer2_BuryMyShellAtWoundedKneeEnd
	dl $0EF6D3,$0EF8A7,TM_Layer1_PrehistoricTurtlesauras,TM_Layer1_PrehistoricTurtlesaurasEnd
	dl $0EF8A7,$0EF99F,TM_Layer2_PrehistoricTurtlesauras,TM_Layer2_PrehistoricTurtlesaurasEnd
	dl $0EF99F,$0EFC79,TM_Layer1_StarbaseWhereNoTurtleHasGoneBefore,TM_Layer1_StarbaseWhereNoTurtleHasGoneBeforeEnd
	dl $0EFC79,$0EFDAC,TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_LeftHalf,TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_LeftHalfEnd
	dl $0EFDAC,$0EFED7,TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_RightHalf,TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_RightHalfEnd
	dl $108C23,$108CD3,TM_FGBG_LevelStatusBar,TM_FGBG_LevelStatusBarEnd
	dl $109343,$109456,TM_Layer3_Unknown1,TM_Layer3_Unknown1End
	dl $10A0E4,$10A146,TM_Layer1_GameOverScreen,TM_Layer1_GameOverScreenEnd
	dl $10FFBD,$10FFEB,TM_Layer2_SkullAndCrossbones,TM_Layer2_SkullAndCrossbonesEnd
	dl $11FB94,$11FBBD,TM_Layer1_VersusModeArena,TM_Layer1_VersusModeArenaEnd
	dl $11FBBD,$11FDE3,TM_Layer1_OptionsScreen_LeftHalf,TM_Layer1_OptionsScreen_LeftHalfEnd
	dl $11FDE3,$11FFFB,TM_Layer1_OptionsScreen_RightHalf,TM_Layer1_OptionsScreen_RightHalfEnd
	dl $12C43F,$12C462,TM_Layer2_KrangsUFO_Normal,TM_Layer2_KrangsUFO_NormalEnd
	dl $12C462,$12C47E,TM_Layer2_KrangsUFO_Tilted,TM_Layer2_KrangsUFO_TiltedEnd
	dl $14FEC9,$14FFFB,TM_Layer2_ContinueScreen_RightHalf,TM_Layer2_ContinueScreen_RightHalfEnd
	dl $15FD4D,$15FF0B,TM_Mode7_TimeWarpScene_Turtle,TM_Mode7_TimeWarpScene_TurtleEnd
	dl $1A9751,$1AAD87,TM_Layer3_TurtlesWatchTVScene_SpeechBubbles,TM_Layer3_TurtlesWatchTVScene_SpeechBubblesEnd
	dl $1AF6A4,$1AF776,TM_Layer3_EveningNewsScreen,TM_Layer3_EveningNewsScreenEnd
	dl $1BC19C,$1BC372,TM_Mode7_IntroCutscene_TurtlePoses,TM_Mode7_IntroCutscene_TurtlePosesEnd
	dl $1BCE95,$1BCF60,TM_Layer3_IntroCutscene_SewerLight,TM_Layer3_IntroCutscene_SewerLightEnd
	dl $1BD5D8,$1BD6EC,TM_Layer1_IntroCutscene_CityScene,TM_Layer1_IntroCutscene_CitySceneEnd
	dl $1BD6EC,$1BD72C,TM_Layer2_IntroCutscene_CityScene,TM_Layer2_IntroCutscene_CitySceneEnd
	dl $1BD72C,$1BD875,TM_Layer1_IntroCutscene_ScreenTearEffect,TM_Layer1_IntroCutscene_ScreenTearEffectEnd
	dl $1BEBDF,$1BEDDE,TM_Layer1_EveningNewsScreen,TM_Layer1_EveningNewsScreenEnd
	dl $1BEDDE,$1BEF17,TM_Layer2_EveningNewsScreen,TM_Layer2_EveningNewsScreenEnd
	dl $1BEF17,$1BF005,TM_Layer3_TechnodromeTheFinalShellShock,TM_Layer3_TechnodromeTheFinalShellShockEnd
	dl $1BF005,$1BF20B,TM_Layer2_TechnodromeAppearsScene,TM_Layer2_TechnodromeAppearsSceneEnd
	dl $1BF20B,$1BF4DC,TM_Layer1_TechnodromeAppearsScene,TM_Layer1_TechnodromeAppearsSceneEnd
	dl $1BF765,$1BF8CC,TM_Layer2_StatueOfLibertyReturnedScene1,TM_Layer2_StatueOfLibertyReturnedScene1End
if !ROMVer&(!TMNTIV_E) != $00
	dl $1CFD00,$1CFE90,TM_Layer3_CopyrightScreen,TM_Layer3_CopyrightScreenEnd
else
	dl $1CFD00,$1CFE91,TM_Layer3_CopyrightScreen,TM_Layer3_CopyrightScreenEnd
endif
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

Map32PointersStart:
	dl $06FBAC,$06FD4F,MAP32_Layer2_KrangsUFO_Tiles,MAP32_Layer2_KrangsUFO_TilesEnd
	dl $06FD4F,$06FDF5,MAP32_Layer2_KrangsUFO_Properties,MAP32_Layer2_KrangsUFO_PropertiesEnd
	dl $07AB87,$07AE50,MAP32_Layer2_CreditsScene_Tiles,MAP32_Layer2_CreditsScene_TilesEnd
	dl $07AE50,$07AEF9,MAP32_Layer2_CreditsScene_Properties,MAP32_Layer2_CreditsScene_PropertiesEnd
	dl $07EB0D,$07EB57,MAP32_UnknownStarbaseMap32Tiles_Tiles,MAP32_UnknownStarbaseMap32Tiles_TilesEnd
	dl $07EB57,$07EB6A,MAP32_UnknownStarbaseMap32Tiles_Properties,MAP32_UnknownStarbaseMap32Tiles_PropertiesEnd
	dl $09A53C,$09A6D4,MAP32_Layer1_CreditsScene_Tiles,MAP32_Layer1_CreditsScene_TilesEnd
	dl $09A6D4,$09A73B,MAP32_Layer1_CreditsScene_Properties,MAP32_Layer1_CreditsScene_PropertiesEnd
	dl $0DFB23,$0DFB75,MAP32_Layer3_ContinueScreen_Tiles,MAP32_Layer3_ContinueScreen_TilesEnd
	dl $0DFB75,$0DFBC5,MAP32_Layer3_ContinueScreen_Properties,MAP32_Layer3_ContinueScreen_PropertiesEnd
	dl $0E8000,$0E8313,MAP32_Layer2_BigApple3AM_Tiles,MAP32_Layer2_BigApple3AM_TilesEnd
	dl $0E8313,$0E83F8,MAP32_Layer2_BigApple3AM_Properties,MAP32_Layer2_BigApple3AM_PropertiesEnd
	dl $0E83F8,$0E88CC,MAP32_Layer1_BigApple3AM_Tiles,MAP32_Layer1_BigApple3AM_TilesEnd
	dl $0E88CC,$0E89A6,MAP32_Layer1_BigApple3AM_Properties,MAP32_Layer1_BigApple3AM_PropertiesEnd
	dl $0E89A6,$0E8A4F,MAP32_Layer3_BackgroundKrang_Tiles,MAP32_Layer3_BackgroundKrang_TilesEnd
	dl $0E8A4F,$0E8AA2,MAP32_Layer3_BackgroundKrang_Properties,MAP32_Layer3_BackgroundKrang_PropertiesEnd
	dl $0E8D0C,$0E9664,MAP32_Layer1_AlleycatBlues_Tiles,MAP32_Layer1_AlleycatBlues_TilesEnd
	dl $0E9664,$0E9925,MAP32_Layer1_AlleycatBlues_Properties,MAP32_Layer1_AlleycatBlues_PropertiesEnd
	dl $0E9925,$0E9D9A,MAP32_Layer2_AlleycatBlues_Tiles,MAP32_Layer2_AlleycatBlues_TilesEnd
	dl $0E9D9A,$0E9F41,MAP32_Layer2_AlleycatBlues_Properties,MAP32_Layer2_AlleycatBlues_PropertiesEnd
	dl $0EA229,$0EA5B1,MAP32_Layer1_SewerSurfin_Tiles,MAP32_Layer1_SewerSurfin_TilesEnd
	dl $0EA5B1,$0EA6F3,MAP32_Layer1_SewerSurfin_Properties,MAP32_Layer1_SewerSurfin_PropertiesEnd
	dl $0EA8C0,$0EA9CA,MAP32_Layer2_RatKingsBoat_Tiles,MAP32_Layer2_RatKingsBoat_TilesEnd
	dl $0EA9CA,$0EAA3A,MAP32_Layer2_RatKingsBoat_Properties,MAP32_Layer2_RatKingsBoat_PropertiesEnd
	dl $0EAA6B,$0EAFF4,MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Tiles,MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_TilesEnd
	dl $0EAFF4,$0EB12C,MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Properties,MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_PropertiesEnd
	dl $0EB12C,$0EB52E,MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Tiles,MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_TilesEnd
	dl $0EB52E,$0EB7B7,MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Properties,MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_PropertiesEnd
	dl $0EB7B7,$0EC229,MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Tiles,MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_TilesEnd
	dl $0EC229,$0EC591,MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Properties,MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_PropertiesEnd
	dl $0EC8F4,$0ECCB8,MAP32_Layer1_SkullAndCrossbones_Tiles,MAP32_Layer1_SkullAndCrossbones_TilesEnd
	dl $0ECCB8,$0ECDBE,MAP32_Layer1_SkullAndCrossbones_Properties,MAP32_Layer1_SkullAndCrossbones_PropertiesEnd
	dl $0ECDBE,$0ECF72,MAP32_Layer2_SkullAndCrossbones_Tiles,MAP32_Layer2_SkullAndCrossbones_TilesEnd
	dl $0ECF72,$0ECFCF,MAP32_Layer2_SkullAndCrossbones_Properties,MAP32_Layer2_SkullAndCrossbones_PropertiesEnd
	dl $0ED0E7,$0EDA76,MAP32_Layer1_BuryMyShellAtWoundedKnee_Tiles,MAP32_Layer1_BuryMyShellAtWoundedKnee_TilesEnd
	dl $0EDA76,$0EDCE8,MAP32_Layer1_BuryMyShellAtWoundedKnee_Properties,MAP32_Layer1_BuryMyShellAtWoundedKnee_PropertiesEnd
	dl $0EDCE8,$0EE167,MAP32_Layer2_BuryMyShellAtWoundedKnee_Tiles,MAP32_Layer2_BuryMyShellAtWoundedKnee_TilesEnd
	dl $0EE167,$0EE363,MAP32_Layer2_BuryMyShellAtWoundedKnee_Properties,MAP32_Layer2_BuryMyShellAtWoundedKnee_PropertiesEnd
	dl $0EE65C,$0EEF59,MAP32_Layer1_PrehistoricTurtlesauras_Tiles,MAP32_Layer1_PrehistoricTurtlesauras_TilesEnd
	dl $0EEF59,$0EF3AA,MAP32_Layer1_PrehistoricTurtlesauras_Properties,MAP32_Layer1_PrehistoricTurtlesauras_PropertiesEnd
	dl $0EF3AA,$0EF5B7,MAP32_Layer2_PrehistoricTurtlesauras_Tiles,MAP32_Layer2_PrehistoricTurtlesauras_TilesEnd
	dl $0EF5B7,$0EF6D3,MAP32_Layer2_PrehistoricTurtlesauras_Properties,MAP32_Layer2_PrehistoricTurtlesauras_PropertiesEnd
	dl $109456,$109656,MAP32_Layer3_ThrownEnemies_Tiles,MAP32_Layer3_ThrownEnemies_TilesEnd
	dl $109656,$1097C9,MAP32_Layer3_ThrownEnemies_Properties,MAP32_Layer3_ThrownEnemies_PropertiesEnd
	dl $1097C9,$109A0D,MAP32_UnknownLevelMap32_Tiles,MAP32_UnknownLevelMap32_TilesEnd
	dl $109A0D,$109BBE,MAP32_UnknownLevelMap32_Properties,MAP32_UnknownLevelMap32_PropertiesEnd
	dl $109BBE,$109D5F,MAP32_FGBG_VersusModeArena_Tiles,MAP32_FGBG_VersusModeArena_TilesEnd
	dl $109D5F,$109DB6,MAP32_FGBG_VersusModeArena_Properties,MAP32_FGBG_VersusModeArena_PropertiesEnd
	dl $128000,$12892D,MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Tiles,MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_TilesEnd
	dl $12892D,$128C7D,MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Properties,MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_PropertiesEnd
	dl $128C7D,$128FCC,MAP32_FGBG_TechnodromeTheFinalShellShock_Tiles,MAP32_FGBG_TechnodromeTheFinalShellShock_TilesEnd
	dl $128FCC,$1290E6,MAP32_FGBG_TechnodromeTheFinalShellShock_Properties,MAP32_FGBG_TechnodromeTheFinalShellShock_PropertiesEnd
	dl $1290E6,$129307,MAP32_Layer1_TurtlesWatchTVScene_Tiles,MAP32_Layer1_TurtlesWatchTVScene_TilesEnd
	dl $129307,$129387,MAP32_Layer1_TurtlesWatchTVScene_Properties,MAP32_Layer1_TurtlesWatchTVScene_PropertiesEnd
	dl $13FEDA,$13FF88,MAP32_Layer2_TurtlesWatchTVScene_Tiles,MAP32_Layer2_TurtlesWatchTVScene_TilesEnd
	dl $13FF88,$13FFB7,MAP32_Layer2_TurtlesWatchTVScene_Properties,MAP32_Layer2_TurtlesWatchTVScene_PropertiesEnd
	dl $1AF776,$1AF90B,MAP32_Layer3_SuperShredderAura_Tiles,MAP32_Layer3_SuperShredderAura_TilesEnd
	dl $1AF90B,$1AF9A5,MAP32_Layer3_SuperShredderAura_Properties,MAP32_Layer3_SuperShredderAura_PropertiesEnd
	dl $1BC372,$1BCBD2,MAP32_FGBF_IntroCutscene_CityScene_Tiles,MAP32_FGBF_IntroCutscene_CityScene_TilesEnd
	dl $1BCBD2,$1BCE95,MAP32_FGBG_IntroCutscene_CityScene_Properties,MAP32_FGBG_IntroCutscene_CityScene_PropertiesEnd
	dl $1BCF60,$1BD4D8,MAP32_Layer1_IntroCutscene_ScreenTearEffect_Tiles,MAP32_Layer1_IntroCutscene_ScreenTearEffect_TilesEnd
	dl $1BD4D8,$1BD5D8,MAP32_Layer1_IntroCutscene_ScreenTearEffect_Properties,MAP32_Layer1_IntroCutscene_ScreenTearEffect_PropertiesEnd
	dl $1CE50E,$1CE577,MAP32_Layer3_SpeechBubble_Tiles,MAP32_Layer3_SpeechBubble_TilesEnd
	dl $1CE577,$1CE5CD,MAP32_Layer3_SpeechBubble_Properties,MAP32_Layer3_SpeechBubble_PropertiesEnd
Map32PointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $06FF79,$06FFEB,LVL_StarbaseWhereNoTurtleHasGoneBefore,LVL_StarbaseWhereNoTurtleHasGoneBeforeEnd
if !ROMVer&(!TMNTIV_E) != $00
	dl $0BBA91,$0BBACF,LVL_TechnodromeLetsKickShell_ShredderFight,LVL_TechnodromeLetsKickShell_ShredderFightEnd
	dl $0BBACF,$0BBAD9,LVL_TechnodromeTheFinalShellShock,LVL_TechnodromeTheFinalShellShockEnd
	dl $0BFB9B,$0BFBE3,LVL_TechnodromeLetsKickShell_FirstSection,LVL_TechnodromeLetsKickShell_FirstSectionEnd
else
	dl $0BBA93,$0BBAD1,LVL_TechnodromeLetsKickShell_ShredderFight,LVL_TechnodromeLetsKickShell_ShredderFightEnd
	dl $0BBAD1,$0BBADB,LVL_TechnodromeTheFinalShellShock,LVL_TechnodromeTheFinalShellShockEnd
	dl $0BFB9D,$0BFBE5,LVL_TechnodromeLetsKickShell_FirstSection,LVL_TechnodromeLetsKickShell_FirstSectionEnd
endif
	dl $0DFBC5,$0DFBD9,LVL_TechnodromeLetsKickShell_ElevatorSection,LVL_TechnodromeLetsKickShell_ElevatorSectionEnd
	dl $0EFF36,$0EFF88,LVL_BigApple3AM,LVL_BigApple3AMEnd
	dl $10FFA0,$10FFBD,LVL_VersusModeArena,LVL_VersusModeArenaEnd
	dl $14FE4D,$14FEC9,LVL_AlleycatBlues,LVL_AlleycatBluesEnd
	dl $15FC9D,$15FCF7,LVL_SkullAndCrossbones,LVL_SkullAndCrossbonesEnd
	dl $15FCF7,$15FD4D,LVL_PrehistoricTurtlesauras,LVL_PrehistoricTurtlesaurasEnd
	dl $17FB8E,$17FBDC,LVL_BuryMyShellAtWoundedKnee,LVL_BuryMyShellAtWoundedKneeEnd
	dl $18FC04,$18FC39,LVL_SewerSurfin,LVL_SewerSurfinEnd
LevelDataPointersEnd:

;--------------------------------------------------------------------

PalettePointersStart:
	dl $098000,$098020,PAL_Layer1_KonamiLogoScreen,PAL_Layer1_KonamiLogoScreenEnd
	dl $098020,$098042,PAL_Layer2_KonamiLogoScreen_DarkKonami,PAL_Layer2_KonamiLogoScreen_DarkKonamiEnd
	dl $098042,$098062,PAL_Layer2_KonamiLogoScreen_DarkLogo,PAL_Layer2_KonamiLogoScreen_DarkLogoEnd
	dl $098062,$098084,PAL_Layer2_KonamiLogoScreen_LitUpKonami,PAL_Layer2_KonamiLogoScreen_LitUpKonamiEnd
	dl $098084,$0980A4,PAL_Layer2_KonamiLogoScreen_YellowLogoPart,PAL_Layer2_KonamiLogoScreen_YellowLogoPartEnd
	dl $0980A4,$0980C4,PAL_Layer2_KonamiLogoScreen_OrangeLogoPart,PAL_Layer2_KonamiLogoScreen_OrangeLogoPartEnd
	dl $09827C,$0982BC,PAL_UnknownPalette1,PAL_UnknownPalette1End
	dl $0982BC,$098354,PAL_UnknownPalette2,PAL_UnknownPalette2End
	dl $098354,$098374,PAL_Sprite_FootClanGrunt_Yellow,PAL_Sprite_FootClanGrunt_YellowEnd
	dl $098374,$098394,PAL_Sprite_FootClanGrunt_Green,PAL_Sprite_FootClanGrunt_GreenEnd
	dl $098394,$0983B4,PAL_Sprite_FootClanGrunt_Orange,PAL_Sprite_FootClanGrunt_OrangeEnd
	dl $0983B4,$0983D4,PAL_Sprite_FootClanGrunt_Purple,PAL_Sprite_FootClanGrunt_PurpleEnd
	dl $0983D4,$0983F4,PAL_Sprite_FootClanGrunt_Blue,PAL_Sprite_FootClanGrunt_BlueEnd
	dl $0983F4,$098414,PAL_Sprite_FootClanGrunt_Red,PAL_Sprite_FootClanGrunt_RedEnd
	dl $098414,$098434,PAL_Sprite_FootClanGrunt_White,PAL_Sprite_FootClanGrunt_WhiteEnd
	dl $098434,$098454,PAL_Sprite_Horse,PAL_Sprite_HorseEnd
	dl $098454,$09846E,PAL_Sprite_FootClanGrunt_OozeFromFloorAnimaton,PAL_Sprite_FootClanGrunt_OozeFromFloorAnimatonEnd
	dl $09846E,$09848E,PAL_Sprite_StoneWarrior,PAL_Sprite_StoneWarriorEnd
	dl $09848E,$0984AE,PAL_Sprite_MiscLevelSprites,PAL_Sprite_MiscLevelSpritesEnd
	dl $0984AE,$0984C8,PAL_Sprite_MetalBarrel,PAL_Sprite_MetalBarrelEnd
	dl $0984C8,$0984E8,PAL_Sprite_BoxOfExplosives,PAL_Sprite_BoxOfExplosivesEnd
	dl $0984E8,$098508,PAL_Sprite_WoodBarrel,PAL_Sprite_WoodBarrelEnd
	dl $098508,$098528,PAL_Sprite_FallingStalactite,PAL_Sprite_FallingStalactiteEnd
	dl $098528,$098548,PAL_Sprite_WreckingBall,PAL_Sprite_WreckingBallEnd
	dl $098548,$098568,PAL_Sprite_TrafficCone,PAL_Sprite_TrafficConeEnd
	dl $098568,$098588,PAL_Sprite_HydrantSpray,PAL_Sprite_HydrantSprayEnd
	dl $098588,$0985A8,PAL_UnknownPalette3,PAL_UnknownPalette3End
	dl $0985A8,$0985B8,PAL_Sprite_KrangEyeLasers,PAL_Sprite_KrangEyeLasersEnd
	dl $0985B8,$0985C8,PAL_Layer3_BackgroundKrangHeadAndBody,PAL_Layer3_BackgroundKrangHeadAndBodyEnd
	dl $0985C8,$0985DA,PAL_Layer3_BackgroundKrangEyes,PAL_Layer3_BackgroundKrangEyesEnd
	dl $0985DA,$0985E2,PAL_Layer3_BossHealthBars,PAL_Layer3_BossHealthBarsEnd
	dl $0985E2,$0985F8,PAL_Sprite_WallBrickRubble,PAL_Sprite_WallBrickRubbleEnd
	dl $0985F8,$098618,PAL_Sprite_PlankTrapAndPirateShip,PAL_Sprite_PlankTrapAndPirateShipEnd
	dl $098618,$098638,PAL_Sprite_Cannonball,PAL_Sprite_CannonballEnd
	dl $098638,$098658,PAL_Sprite_SewerMinesAndPoles,PAL_Sprite_SewerMinesAndPolesEnd
	dl $098658,$098678,PAL_Sprite_Mouser,PAL_Sprite_MouserEnd
	dl $098678,$0986B6,PAL_Sprite_RoadkillRodney,PAL_Sprite_RoadkillRodneyEnd
	dl $0986B6,$0986D6,PAL_Sprite_RobotWalker,PAL_Sprite_RobotWalkerEnd
	dl $0986D6,$098710,PAL_Sprite_MasterSplinter,PAL_Sprite_MasterSplinterEnd
	dl $098710,$09879C,PAL_UnknownPalette4,PAL_UnknownPalette4End
	dl $09879C,$0987FD,PAL_UnknownPalette5,PAL_UnknownPalette5End
	dl $0987FD,$09880D,PAL_Layer3_OptionsScreen_Unknown,PAL_Layer3_OptionsScreen_UnknownEnd
	dl $09880D,$09884D,PAL_Layer3_EndOfIntroCutscene,PAL_Layer3_EndOfIntroCutsceneEnd
	dl $09884D,$09885F,PAL_Layer3_StatusBar_P1Leo,PAL_Layer3_StatusBar_P1LeoEnd
	dl $09885F,$098871,PAL_Layer3_StatusBar_P1Mike,PAL_Layer3_StatusBar_P1MikeEnd
	dl $098871,$098883,PAL_Layer3_StatusBar_P1Don,PAL_Layer3_StatusBar_P1DonEnd
	dl $098883,$098895,PAL_Layer3_StatusBar_P1Raph,PAL_Layer3_StatusBar_P1RaphEnd
	dl $098895,$0988A5,PAL_Layer3_StatusBar_P2Leo,PAL_Layer3_StatusBar_P2LeoEnd
	dl $0988A5,$0988B5,PAL_Layer3_StatusBar_P2Mike,PAL_Layer3_StatusBar_P2MikeEnd
	dl $0988B5,$0988C5,PAL_Layer3_StatusBar_P2Don,PAL_Layer3_StatusBar_P2DonEnd
	dl $0988C5,$0988D5,PAL_Layer3_StatusBar_P2Raph,PAL_Layer3_StatusBar_P2RaphEnd
	dl $0988D5,$0988DD,PAL_Layer3_VersusModeCharacterSelect_Time,PAL_Layer3_VersusModeCharacterSelect_TimeEnd
	dl $0988DD,$0988E5,PAL_Layer3_OptionsMenu_UnselectedOptions,PAL_Layer3_OptionsMenu_UnselectedOptionsEnd
	dl $0988E5,$0988F5,PAL_Layer3_VersusMode_TimeDisplay,PAL_Layer3_VersusMode_TimeDisplayEnd
	dl $0988F5,$0988FD,PAL_Layer3_WhiteLevelName,PAL_Layer3_WhiteLevelNameEnd
	dl $0988FD,$098905,PAL_Layer3_YellowLevelName,PAL_Layer3_YellowLevelNameEnd
	dl $098905,$09890D,PAL_Layer3_DarkBlueLevelName,PAL_Layer3_DarkBlueLevelNameEnd
	dl $09890D,$09891F,PAL_Layer3_ThrownFootClanGrunt_Purple,PAL_Layer3_ThrownFootClanGrunt_PurpleEnd
	dl $09891F,$098931,PAL_Layer3_ThrownFootClanGrunt_ArmsAndFeet,PAL_Layer3_ThrownFootClanGrunt_ArmsAndFeetEnd
	dl $098931,$098943,PAL_Layer3_ThrownFootClanGrunt_Green,PAL_Layer3_ThrownFootClanGrunt_GreenEnd
	dl $098943,$098955,PAL_Layer3_ThrownFootClanGrunt_Blue,PAL_Layer3_ThrownFootClanGrunt_BlueEnd
	dl $098955,$098967,PAL_Layer3_ThrownFootClanGrunt_Yellow,PAL_Layer3_ThrownFootClanGrunt_YellowEnd
	dl $098967,$098979,PAL_Layer3_ThrownFootClanGrunt_Red,PAL_Layer3_ThrownFootClanGrunt_RedEnd
	dl $098979,$09898B,PAL_Layer3_ThrownFootClanGrunt_White,PAL_Layer3_ThrownFootClanGrunt_WhiteEnd
	dl $09898B,$09899D,PAL_Layer3_ThrownFootClanGrunt_Orange,PAL_Layer3_ThrownFootClanGrunt_OrangeEnd
	dl $09899D,$0989BD,PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Animation,PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_AnimationEnd
	dl $0989BD,$0989DD,PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Animation,PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_AnimationEnd
	dl $0989DD,$0989FD,PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Animation,PAL_Layer1_CharacterSelectScreen_SelectedDonatello_AnimationEnd
	dl $0989FD,$098A1D,PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Animation,PAL_Layer1_CharacterSelectScreen_SelectedRaphael_AnimationEnd
	dl $098A1D,$098A3D,PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Animation,PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_AnimationEnd
	dl $098A3D,$098A5D,PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Animation,PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_AnimationEnd
	dl $098A5D,$098A7D,PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Animation,PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_AnimationEnd
	dl $098A7D,$098A9D,PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Animation,PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_AnimationEnd
	dl $098A9D,$098ABD,PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Comic,PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_ComicEnd
	dl $098ABD,$098ADD,PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Comic,PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_ComicEnd
	dl $098ADD,$098AFD,PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Comic,PAL_Layer1_CharacterSelectScreen_SelectedDonatello_ComicEnd
	dl $098AFD,$098B1D,PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Comic,PAL_Layer1_CharacterSelectScreen_SelectedRaphael_ComicEnd
	dl $098B1D,$098B3D,PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Comic,PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_ComicEnd
	dl $098B3D,$098B5D,PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Comic,PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_ComicEnd
	dl $098B5D,$098B7D,PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Comic,PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_ComicEnd
	dl $098B7D,$098B9D,PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Comic,PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_ComicEnd
	dl $098B9D,$098C53,PAL_FGBG_BigApple3AM,PAL_FGBG_BigApple3AMEnd
	dl $098C53,$098D09,PAL_FGBG_AlleycatBlues_Main,PAL_FGBG_AlleycatBlues_MainEnd
	dl $098D09,$098D29,PAL_FGBG_AlleycatBlues_BossArea,PAL_FGBG_AlleycatBlues_BossAreaEnd
	dl $098D29,$098DDF,PAL_FGBG_SewerSurfin,PAL_FGBG_SewerSurfinEnd
	dl $098DDF,$098E95,PAL_FGBG_TechnodromeLetsKickShell,PAL_FGBG_TechnodromeLetsKickShellEnd
	dl $098E95,$098F2D,PAL_FGBG_ShredderBossFight,PAL_FGBG_ShredderBossFightEnd
	dl $098F2D,$098FE3,PAL_FGBG_SkullAndCrossbones,PAL_FGBG_SkullAndCrossbonesEnd
	dl $098FE3,$099099,PAL_FGBG_BuryMyShellAtWoundedKnee,PAL_FGBG_BuryMyShellAtWoundedKneeEnd
	dl $099099,$09914F,PAL_FGBG_PrehistoricTurtlesauras,PAL_FGBG_PrehistoricTurtlesaurasEnd
	dl $09914F,$0991E7,PAL_FGBG_NeonNightRiders,PAL_FGBG_NeonNightRidersEnd
	dl $0991E7,$09929D,PAL_FGBG_StarbaseWhereNoTurtleHasGoneBefore,PAL_FGBG_StarbaseWhereNoTurtleHasGoneBeforeEnd
	dl $09929D,$0992F9,PAL_FGBG_FinalBossRoom,PAL_FGBG_FinalBossRoomEnd
	dl $0992F9,$099319,PAL_Sprite_Leonardo_Animation,PAL_Sprite_Leonardo_AnimationEnd
	dl $099319,$099339,PAL_Sprite_Michaelangelo_Animation,PAL_Sprite_Michaelangelo_AnimationEnd
	dl $099339,$099359,PAL_Sprite_Donatello_Animation,PAL_Sprite_Donatello_AnimationEnd
	dl $099359,$099379,PAL_Sprite_Raphael_Animation,PAL_Sprite_Raphael_AnimationEnd
	dl $099379,$099399,PAL_Sprite_FrozenTurtle,PAL_Sprite_FrozenTurtleEnd
	dl $099399,$0993B9,PAL_Sprite_Leonardo_Comic,PAL_Sprite_Leonardo_ComicEnd
	dl $0993B9,$0993D9,PAL_Sprite_Michaelangelo_Comic,PAL_Sprite_Michaelangelo_ComicEnd
	dl $0993D9,$0993F9,PAL_Sprite_Donatello_Comic,PAL_Sprite_Donatello_ComicEnd
	dl $0993F9,$099419,PAL_Sprite_Raphael_Comic,PAL_Sprite_Raphael_ComicEnd
	dl $099419,$099493,PAL_Sprite_BaxterStockman,PAL_Sprite_BaxterStockmanEnd
	dl $099493,$0994B3,PAL_Sprite_PizzaMonster,PAL_Sprite_PizzaMonsterEnd
	dl $0994B3,$09950F,PAL_Sprite_Metalhead,PAL_Sprite_MetalheadEnd
	dl $09950F,$099583,PAL_Sprite_TokkaAndRahzar,PAL_Sprite_TokkaAndRahzarEnd
	dl $099583,$0995FD,PAL_Sprite_Leatherhead,PAL_Sprite_LeatherheadEnd
	dl $0995FD,$09961D,PAL_Sprite_RatKing_Normal,PAL_Sprite_RatKing_NormalEnd
	dl $09961D,$09963D,PAL_Sprite_RatKing_Flash,PAL_Sprite_RatKing_FlashEnd
	dl $09963D,$099655,PAL_Sprite_RatKingsTorpedos,PAL_Sprite_RatKingsTorpedosEnd
	dl $099655,$099675,PAL_Layer2_RatKingsBoat,PAL_Layer2_RatKingsBoatEnd
	dl $099675,$099689,PAL_UnknownPalette6,PAL_UnknownPalette6End
	dl $099689,$099703,PAL_Sprite_BebopAndRocksteady,PAL_Sprite_BebopAndRocksteadyEnd
	dl $099703,$09975F,PAL_Sprite_KrangBody,PAL_Sprite_KrangBodyEnd
	dl $09975F,$09979D,PAL_Sprite_Slash,PAL_Sprite_SlashEnd
	dl $09979D,$0997F5,PAL_Sprite_KrangInUFOAndEffects,PAL_Sprite_KrangInUFOAndEffectsEnd
	dl $0997F5,$099815,PAL_Layer2_KrangsUFO_Normal,PAL_Layer2_KrangsUFO_NormalEnd
	dl $099815,$099835,PAL_Layer2_KrangsUFO_Flash,PAL_Layer2_KrangsUFO_FlashEnd
	dl $099835,$099855,PAL_Layer2_KrangsUFO_Destroyed,PAL_Layer2_KrangsUFO_DestroyedEnd
	dl $099855,$099875,PAL_Sprite_ShedderProjectionHands,PAL_Sprite_ShedderProjectionHandsEnd
	dl $099875,$099895,PAL_Sprite_ShedderProjectionHead,PAL_Sprite_ShedderProjectionHeadEnd
	dl $099895,$0998D3,PAL_FGBG_VersusModeArena,PAL_FGBG_VersusModeArenaEnd
	dl $0998D3,$0998F3,PAL_Layer1_GameOverScreen_RainbowBorder,PAL_Layer1_GameOverScreen_RainbowBorderEnd
	dl $0998F3,$099913,PAL_Layer1_GameOverScreen_GameOverText_Frame1,PAL_Layer1_GameOverScreen_GameOverText_Frame1End
	dl $099913,$099933,PAL_Layer1_GameOverScreen_GameOverText_Frame2,PAL_Layer1_GameOverScreen_GameOverText_Frame2End
	dl $099933,$099953,PAL_Layer1_GameOverScreen_GameOverText_Frame3,PAL_Layer1_GameOverScreen_GameOverText_Frame3End
	dl $099953,$099973,PAL_Layer1_GameOverScreen_GameOverText_Frame4,PAL_Layer1_GameOverScreen_GameOverText_Frame4End
	dl $099973,$099993,PAL_Sprite_PurpleSilhouette,PAL_Sprite_PurpleSilhouetteEnd
	dl $099993,$0999B3,PAL_Sprite_GreenSilhouette,PAL_Sprite_GreenSilhouetteEnd
	dl $0999B3,$0999D3,PAL_Sprite_YellowSilhouette,PAL_Sprite_YellowSilhouetteEnd
	dl $0999D3,$0999F3,PAL_Sprite_OrangeSilhouette,PAL_Sprite_OrangeSilhouetteEnd
	dl $0999F3,$099A13,PAL_Sprite_SmallRingLaserShootingRobots,PAL_Sprite_SmallRingLaserShootingRobotsEnd
	dl $099A13,$099A1B,PAL_UnknownPalette7,PAL_UnknownPalette7End
	dl $099A1B,$099A3B,PAL_Sprite_TitleScreen,PAL_Sprite_TitleScreenEnd
	dl $099A3B,$099AC7,PAL_FGBG_TitleScreen,PAL_FGBG_TitleScreenEnd
	dl $099AC7,$099B5F,PAL_FGBG_TurtlesWatchTvScene_Animation,PAL_FGBG_TurtlesWatchTvScene_AnimationEnd
	dl $099B5F,$099BE5,PAL_FGBG_IntroCutscene_CityScene,PAL_FGBG_IntroCutscene_CitySceneEnd
	dl $099BE5,$099C5F,PAL_FGBG_EveningNewsScene,PAL_FGBG_EveningNewsSceneEnd
	dl $099C5F,$099CD9,PAL_UnknownPalette8,PAL_UnknownPalette8End
	dl $099CD9,$099D4B,PAL_FGBG_CreditsScene_Sepia,PAL_FGBG_CreditsScene_SepiaEnd
	dl $099D4B,$099DC5,PAL_FGBG_CreditsScene_Normal,PAL_FGBG_CreditsScene_NormalEnd
	dl $099DC5,$099DDD,PAL_Layer3_CreditsScene_Normal,PAL_Layer3_CreditsScene_NormalEnd
	dl $099DDD,$099DF1,PAL_Layer3_CreditsScene_Sepia,PAL_Layer3_CreditsScene_SepiaEnd
	dl $099DF1,$099E31,PAL_Layer3_EveningNewsScene,PAL_Layer3_EveningNewsSceneEnd
	dl $099E31,$099E81,PAL_FGBG_ContinueScreen,PAL_FGBG_ContinueScreenEnd
	dl $099E81,$099EFF,PAL_Sprite_EveningNewsScene,PAL_Sprite_EveningNewsSceneEnd
	dl $099EFF,$099F1B,PAL_Sprite_IntroCutscene_CityScene_Frame1,PAL_Sprite_IntroCutscene_CityScene_Frame1End
	dl $099F1B,$099F25,PAL_Sprite_IntroCutscene_CityScene_Frame2,PAL_Sprite_IntroCutscene_CityScene_Frame2End
	dl $099F25,$099F2F,PAL_Sprite_IntroCutscene_CityScene_Frame3,PAL_Sprite_IntroCutscene_CityScene_Frame3End
	dl $099F2F,$099F4F,PAL_Sprite_IntroCutscene_CityScene_Frame4,PAL_Sprite_IntroCutscene_CityScene_Frame4End
	dl $099F4F,$099F6F,PAL_FGBG_TimeWarpLevelEntryFlash_Red,PAL_FGBG_TimeWarpLevelEntryFlash_RedEnd
	dl $099F6F,$099FF5,PAL_Layer1_OptionsMenu,PAL_Layer1_OptionsMenuEnd
	dl $099FF5,$09A015,PAL_Sprite_AprilONeilSayingFight,PAL_Sprite_AprilONeilSayingFightEnd
	dl $09A015,$09A05B,PAL_Sprite_StatueOfLibertyReturnedScene2,PAL_Sprite_StatueOfLibertyReturnedScene2End
	dl $09A05B,$09A09B,PAL_Layer3_TimeTrialMenu,PAL_Layer3_TimeTrialMenuEnd
	dl $09A09B,$09A0BB,PAL_Sprite_TechnodromeAppearsScene_Smoke,PAL_Sprite_TechnodromeAppearsScene_SmokeEnd
	dl $09A0BB,$09A0DD,PAL_Layer2_TechnodromeAppearsScene,PAL_Layer2_TechnodromeAppearsSceneEnd
	dl $09A0DD,$09A0F9,PAL_Layer1_TechnodromeAppearsScene,PAL_Layer1_TechnodromeAppearsSceneEnd
	dl $09A0F9,$09A0FD,PAL_UnknownPalette9,PAL_UnknownPalette9End
	dl $09A0FD,$09A107,PAL_Sprite_CreditsScene,PAL_Sprite_CreditsSceneEnd
	dl $09A107,$09A127,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame4,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame4End
	dl $09A127,$09A147,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame3,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame3End
	dl $09A147,$09A151,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame1,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame1End
	dl $09A151,$09A159,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame2,PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame2End
	dl $09A159,$09A197,PAL_Sprite_Velociraptor,PAL_Sprite_VelociraptorEnd
	dl $09A197,$09A1B7,PAL_Sprite_StarbaseChuteDoor,PAL_Sprite_StarbaseChuteDoorEnd
	dl $09A1B7,$09A1F5,PAL_Sprite_Pterodactyl,PAL_Sprite_PterodactylEnd
	dl $09A1F5,$09A215,PAL_Sprite_StatueOfLiberty,PAL_Sprite_StatueOfLibertyEnd
	dl $09A215,$09A227,PAL_Layer2_StatueOfLibertyReturnedScene1,PAL_Layer2_StatueOfLibertyReturnedScene1End
	dl $09A227,$09A265,PAL_Layer2_StatueOfLibertyReturnedScene2,PAL_Layer2_StatueOfLibertyReturnedScene2End
	dl $09A265,$09A27F,PAL_Sprite_LaserGate_Green,PAL_Sprite_LaserGate_GreenEnd
	dl $09A27F,$09A299,PAL_Sprite_LaserGate_Yellow,PAL_Sprite_LaserGate_YellowEnd
	dl $09A299,$09A2D7,PAL_Sprite_SuperShredder_Purple,PAL_Sprite_SuperShredder_PurpleEnd
	dl $09A2D7,$09A2F7,PAL_Sprite_SuperShredder_BeforeTransformation,PAL_Sprite_SuperShredder_BeforeTransformationEnd
	dl $09A2F7,$09A317,PAL_Sprite_SuperShredder_Blue,PAL_Sprite_SuperShredder_BlueEnd
	dl $09A317,$09A337,PAL_Sprite_SuperShredder_Red,PAL_Sprite_SuperShredder_RedEnd
	dl $09A337,$09A357,PAL_Sprite_SuperShredder_Green,PAL_Sprite_SuperShredder_GreenEnd
	dl $09A357,$09A369,PAL_Layer3_SuperShredderTransformationLight,PAL_Layer3_SuperShredderTransformationLightEnd
	dl $09A369,$09A373,PAL_Layer3_SuperShredderAura_Frame1,PAL_Layer3_SuperShredderAura_Frame1End
	dl $09A373,$09A37D,PAL_Layer3_SuperShredderAura_Frame2,PAL_Layer3_SuperShredderAura_Frame2End
	dl $09A37D,$09A387,PAL_Layer3_SuperShredderAura_Frame3,PAL_Layer3_SuperShredderAura_Frame3End
	dl $09A387,$09A391,PAL_Layer3_SuperShredderAura_Frame4,PAL_Layer3_SuperShredderAura_Frame4End
	dl $09A391,$09A3CF,PAL_Sprite_ShredderClawAndCursor,PAL_Sprite_ShredderClawAndCursorEnd
	dl $09A3CF,$09A3EF,PAL_UnknownPalette10,PAL_UnknownPalette10End
	dl $09A3EF,$09A3F9,PAL_Sprite_TimeWarpLevelEntryAnimation,PAL_Sprite_TimeWarpLevelEntryAnimationEnd
	dl $09A3F9,$09A419,PAL_FGBG_TimeWarpLevelEntryFlash_Green,PAL_FGBG_TimeWarpLevelEntryFlash_GreenEnd
	dl $09A419,$09A439,PAL_Sprite_IcePanel,PAL_Sprite_IcePanelEnd
	dl $09A439,$09A459,PAL_Sprite_TimeWarpScene_DinosaurIcon,PAL_Sprite_TimeWarpScene_DinosaurIconEnd
	dl $09A459,$09A479,PAL_Sprite_TimeWarpScene_PirateShipIcon,PAL_Sprite_TimeWarpScene_PirateShipIconEnd
	dl $09A479,$09A499,PAL_Sprite_TimeWarpScene_TrainIcon,PAL_Sprite_TimeWarpScene_TrainIconEnd
	dl $09A499,$09A4B9,PAL_Sprite_TimeWarpScene_FutureCityIcon,PAL_Sprite_TimeWarpScene_FutureCityIconEnd
	dl $09A4B9,$09A4D9,PAL_Sprite_TimeWarpScene_PlanetIcon,PAL_Sprite_TimeWarpScene_PlanetIconEnd
	dl $09A4D9,$09A4F9,PAL_Sprite_TimeWarpScene_TechnodromeIcon,PAL_Sprite_TimeWarpScene_TechnodromeIconEnd
	dl $09A4F9,$09A511,PAL_Sprite_TimeWarpParticles,PAL_Sprite_TimeWarpParticlesEnd
	dl $09F315,$09F335,PAL_Sprite_StoneWarriorGunAndGirder,PAL_Sprite_StoneWarriorGunAndGirderEnd
	dl $09F335,$09F355,PAL_Sprite_StoneWarriorBazooka,PAL_Sprite_StoneWarriorBazookaEnd
	dl $09F355,$09F393,PAL_Sprite_StoneWarriorNapalmGun,PAL_Sprite_StoneWarriorNapalmGunEnd
	dl $09F393,$09F3D1,PAL_Sprite_StoneWarriorElectricGun,PAL_Sprite_StoneWarriorElectricGunEnd
	dl $09F3D1,$09F3F3,PAL_All_ClearPalette,PAL_All_ClearPaletteEnd
	dl $09F3F3,$09F413,PAL_Sprite_GiantGreenBall,PAL_Sprite_GiantGreenBallEnd
	dl $09F413,$09F433,PAL_Sprite_FootClanGrunt_InHelicopterChairThing,PAL_Sprite_FootClanGrunt_InHelicopterChairThingEnd
	dl $09F433,$09F4CB,PAL_FGBG_TurtlesWatchTvScene_Comic,PAL_FGBG_TurtlesWatchTvScene_ComicEnd
	dl $09FE30,$09FE6E,PAL_Sprite_NeonNightRidersMousers,PAL_Sprite_NeonNightRidersMousersEnd
	dl $09FE6E,$09FEAC,PAL_Sprite_NeonNightRidersOpeningText,PAL_Sprite_NeonNightRidersOpeningTextEnd
	dl $09FEAC,$09FEB6,PAL_Layer3_LevelClearWhiteTextAnimation_Frame1,PAL_Layer3_LevelClearWhiteTextAnimation_Frame1End
	dl $09FEB6,$09FEC0,PAL_Layer3_LevelClearYellowTextAnimation_Frame1,PAL_Layer3_LevelClearYellowTextAnimation_Frame1End
	dl $09FEC0,$09FECA,PAL_Layer3_LevelClearWhiteTextAnimation_Frame2,PAL_Layer3_LevelClearWhiteTextAnimation_Frame2End
	dl $09FECA,$09FED4,PAL_Layer3_LevelClearYellowTextAnimation_Frame2,PAL_Layer3_LevelClearYellowTextAnimation_Frame2End
	dl $09FED4,$09FEDE,PAL_Layer3_EndScreen,PAL_Layer3_EndScreenEnd
	dl $09FEDE,$09FEFE,PAL_Layer1_EndScreen,PAL_Layer1_EndScreenEnd
PalettePointersEnd:

;--------------------------------------------------------------------

CompressedOAMDataPointersStart:
	dl $0F8000,$0F80B2,DATA_0F8000,DATA_0F8000End
	dl $0F80B2,$0F81E0,DATA_0F80B2,DATA_0F80B2End
	dl $0F81E0,$0F830D,COD_VersusModeArenaSprites,COD_VersusModeArenaSpritesEnd
	dl $0F830D,$0F833E,COD_CowabungaSpeechBubble,COD_CowabungaSpeechBubbleEnd
	dl $0F833E,$0F867C,DATA_0F833E,DATA_0F833EEnd
	dl $0F867C,$0F87D5,DATA_0F867C,DATA_0F867CEnd
	dl $0F87D5,$0F8831,DATA_0F87D5,DATA_0F87D5End
	dl $0F8831,$0F892F,DATA_0F8831,DATA_0F8831End
	dl $0F892F,$0F8A33,DATA_0F892F,DATA_0F892FEnd
	dl $0F8A33,$0F8C14,DATA_0F8A33,DATA_0F8A33End
	dl $0F8C14,$0F8DD7,DATA_0F8C14,DATA_0F8C14End
	dl $0F8DD7,$0F901E,DATA_0F8DD7,DATA_0F8DD7End
	dl $0F901E,$0F92D1,DATA_0F901E,DATA_0F901EEnd
	dl $0F92D1,$0F9451,DATA_0F92D1,DATA_0F92D1End
	dl $0F9451,$0F96F0,DATA_0F9451,DATA_0F9451End
	dl $0F96F0,$0F9A49,DATA_0F96F0,DATA_0F96F0End
	dl $0F9A49,$0F9C0A,DATA_0F9A49,DATA_0F9A49End
	dl $0F9C0A,$0F9C64,DATA_0F9C0A,DATA_0F9C0AEnd
	dl $0F9C64,$0F9C9A,DATA_0F9C64,DATA_0F9C64End
	dl $0F9C9A,$0F9CE0,DATA_0F9C9A,DATA_0F9C9AEnd
	dl $0F9CE0,$0F9D1B,DATA_0F9CE0,DATA_0F9CE0End
	dl $0F9D1B,$0F9DB3,DATA_0F9D1B,DATA_0F9D1BEnd
	dl $0F9DB3,$0F9E47,DATA_0F9DB3,DATA_0F9DB3End
	dl $0F9E47,$0F9EB1,DATA_0F9E47,DATA_0F9E47End
	dl $0F9EB1,$0FA008,DATA_0F9EB1,DATA_0F9EB1End
	dl $0FA008,$0FA204,DATA_0FA008,DATA_0FA008End
	dl $0FA204,$0FA2FF,DATA_0FA204,DATA_0FA204End
	dl $0FA2FF,$0FA391,DATA_0FA2FF,DATA_0FA2FFEnd
	dl $0FA391,$0FA449,DATA_0FA391,DATA_0FA391End
	dl $0FA449,$0FA572,DATA_0FA449,DATA_0FA449End
	dl $0FA572,$0FA5C1,DATA_0FA572,DATA_0FA572End
	dl $0FA5C1,$0FA7B0,DATA_0FA5C1,DATA_0FA5C1End
	dl $0FA7B0,$0FA7FA,DATA_0FA7B0,DATA_0FA7B0End
	dl $0FA7FA,$0FA88D,DATA_0FA7FA,DATA_0FA7FAEnd
	dl $0FA88D,$0FA8BE,DATA_0FA88D,DATA_0FA88DEnd
	dl $0FA8BE,$0FA907,DATA_0FA8BE,DATA_0FA8BEEnd
	dl $0FA907,$0FA93D,DATA_0FA907,DATA_0FA907End
	dl $0FA93D,$0FAA48,DATA_0FA93D,DATA_0FA93DEnd
	dl $0FAA48,$0FAAEF,DATA_0FAA48,DATA_0FAA48End
	dl $0FAAEF,$0FAB24,DATA_0FAAEF,DATA_0FAAEFEnd
	dl $0FAB24,$0FABBA,DATA_0FAB24,DATA_0FAB24End
	dl $0FABBA,$0FABF5,DATA_0FABBA,DATA_0FABBAEnd
	dl $0FABF5,$0FACE0,DATA_0FABF5,DATA_0FABF5End
	dl $0FACE0,$0FAD27,DATA_0FACE0,DATA_0FACE0End
	dl $0FAD27,$0FAD48,DATA_0FAD27,DATA_0FAD27End
	dl $0FAD48,$0FADA3,DATA_0FAD48,DATA_0FAD48End
	dl $0FADA3,$0FAE33,DATA_0FADA3,DATA_0FADA3End
	dl $0FAE33,$0FAE61,DATA_0FAE33,DATA_0FAE33End
	dl $0FAE61,$0FAE91,DATA_0FAE61,DATA_0FAE61End
	dl $0FAE91,$0FAEB9,DATA_0FAE91,DATA_0FAE91End
	dl $0FAEB9,$0FAF8F,DATA_0FAEB9,DATA_0FAEB9End
	dl $0FAF8F,$0FB084,DATA_0FAF8F,DATA_0FAF8FEnd
	dl $0FB084,$0FB3FC,DATA_0FB084,DATA_0FB084End
	dl $0FB3FC,$0FB469,DATA_0FB3FC,DATA_0FB3FCEnd
	dl $0FB469,$0FB899,DATA_0FB469,DATA_0FB469End
	dl $0FB899,$0FBA6F,DATA_0FB899,DATA_0FB899End
	dl $0FBA6F,$0FBC26,DATA_0FBA6F,DATA_0FBA6FEnd
	dl $0FBC26,$0FBD65,DATA_0FBC26,DATA_0FBC26End
	dl $0FBD65,$0FBF1E,DATA_0FBD65,DATA_0FBD65End
	dl $0FBF1E,$0FC05B,DATA_0FBF1E,DATA_0FBF1EEnd
	dl $0FC05B,$0FC17A,DATA_0FC05B,DATA_0FC05BEnd
	dl $0FC17A,$0FC40A,DATA_0FC17A,DATA_0FC17AEnd
	dl $0FC40A,$0FCA26,COD_BaxterStockman,COD_BaxterStockmanEnd
	dl $0FCA26,$0FCEC3,DATA_0FCA26,DATA_0FCA26End
	dl $0FCEC3,$0FD6DF,DATA_0FCEC3,DATA_0FCEC3End
	dl $0FD6DF,$0FD76B,COD_CharacterSelectScreenSprites,COD_CharacterSelectScreenSpritesEnd
	dl $0FD76B,$0FDD22,DATA_0FD76B,DATA_0FD76BEnd
	dl $0FDD22,$0FDF5C,DATA_0FDD22,DATA_0FDD22End
	dl $0FDF5C,$0FE570,DATA_0FDF5C,DATA_0FDF5CEnd
	dl $0FE570,$0FE816,COD_KrangBodySprites1,COD_KrangBodySprites1End
	dl $0FE816,$0FE875,DATA_0FE816,DATA_0FE816End
	dl $0FE875,$0FEAC3,DATA_0FE875,DATA_0FE875End
	dl $0FEAC3,$0FECC7,DATA_0FEAC3,DATA_0FEAC3End
	dl $0FECC7,$0FECF5,DATA_0FECC7,DATA_0FECC7End
	dl $0FECF5,$0FF070,DATA_0FECF5,DATA_0FECF5End
	dl $0FF070,$0FF1EA,DATA_0FF070,DATA_0FF070End
	dl $0FF1EA,$0FF294,COD_TitleScreenSprites,COD_TitleScreenSpritesEnd
	dl $0FF294,$0FF679,COD_EveningNewsScreen_AprilONeil,COD_EveningNewsScreen_AprilONeilEnd
if !ROMVer&(!TMNTIV_E) != $00
	dl $0FF679,$0FF8BD,DATA_0FF679,DATA_0FF679End
	dl $0FF8BD,$0FFA2C,DATA_0FF8C1,DATA_0FF8C1End
	dl $0FFA2C,$0FFA8D,DATA_0FFA30,DATA_0FFA30End
	dl $0FFA8D,$0FFBC2,DATA_0FFA91,DATA_0FFA91End
	dl $0FFBC2,$0FFC02,DATA_0FFBC6,DATA_0FFBC6End
	dl $0FFC02,$0FFD88,DATA_0FFC06,DATA_0FFC06End
	dl $0FFD88,$0FFE56,DATA_0FFD8C,DATA_0FFD8CEnd
else
	dl $0FF679,$0FF8C1,DATA_0FF679,DATA_0FF679End
	dl $0FF8C1,$0FFA30,DATA_0FF8C1,DATA_0FF8C1End
	dl $0FFA30,$0FFA91,DATA_0FFA30,DATA_0FFA30End
	dl $0FFA91,$0FFBC6,DATA_0FFA91,DATA_0FFA91End
	dl $0FFBC6,$0FFC06,DATA_0FFBC6,DATA_0FFBC6End
	dl $0FFC06,$0FFD8C,DATA_0FFC06,DATA_0FFC06End
	dl $0FFD8C,$0FFE5A,DATA_0FFD8C,DATA_0FFD8CEnd
endif
CompressedOAMDataPointersEnd:

;--------------------------------------------------------------------

SPC700EnginePointersStart:
	dl $1F8000,$1FA447,SPC700_Engine_TMNTIV,SPC700_Engine_TMNTIVEnd
SPC700EnginePointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $1D8002,$1D88C9,Music_BigApple3AM,Music_BigApple3AMEnd
	dl $1D88CB,$1D8F65,Music_AlleycatBlues,Music_AlleycatBluesEnd
	dl $1D8F67,$1D907C,Music_LevelClear,Music_LevelClearEnd
	dl $1D907E,$1D9589,Music_BossBattle,Music_BossBattleEnd
	dl $1D958B,$1D9752,Music_CharacterSelect,Music_CharacterSelectEnd
	dl $1D9754,$1D9AEC,Music_EveningNewsScene,Music_EveningNewsSceneEnd
	dl $1D9AEE,$1D9ECB,Music_EasyOrNormalEnding,Music_EasyOrNormalEndingEnd
	dl $1D9ECD,$1DA4FF,Music_StarbaseWhereNoTurtleHasGoneBefore,Music_StarbaseWhereNoTurtleHasGoneBeforeEnd
	dl $1DA501,$1DA9EC,Music_TechnodromeTheFinalShellShock,Music_TechnodromeTheFinalShellShockEnd
	dl $1DC014,$1DC130,Music_GameOver,Music_GameOverMusic_GameOverEnd
	dl $1DC132,$1DC3FE,Music_IntroScene,Music_IntroSceneEnd
	dl $1DC400,$1DC8EF,Music_VersusMode,Music_VersusModeEnd
	dl $1DC8F1,$1DCFEF,Music_SewerSurfin,Music_SewerSurfinEnd
	dl $1DCFF1,$1DD745,Music_PrehistoricTurtlesauras,Music_PrehistoricTurtlesaurasEnd
	dl $1DD747,$1DDC01,Music_SkullAndCrossbones,Music_SkullAndCrossbonesEnd
	dl $1DDC03,$1DE01B,Music_BuryMyShellAtWoundedKnee,Music_BuryMyShellAtWoundedKneeEnd
	dl $1DE01D,$1DE4FF,Music_NeonNightRiders,Music_NeonNightRidersEnd
	dl $1DE501,$1DE8D6,Music_VersusModeFinish,Music_VersusModeFinishEnd
	dl $1DE8D8,$1DEAC6,Music_SentForwardInTime,Music_SentForwardInTimeEnd
	dl $1DEAC8,$1DEEE6,Music_TechnodromeElevator,Music_TechnodromeElevatorEnd
	dl $1DEEE8,$1DEF66,Music_SuperShredderScreamSound,Music_SuperShredderScreamSoundEnd
	dl $1DEF68,$1DEFF2,Music_KonamiLogoScreen,Music_KonamiLogoScreenEnd
	dl $1DEFF4,$1DF20C,Music_TimeTrialVictory,Music_TimeTrialVictoryEnd
	dl $1DF20E,$1DF569,Music_TimeTrialLevel,Music_TimeTrialLevelEnd
	dl $1DF56B,$1DF69D,Music_ContinueScreen,Music_ContinueScreenEnd
	dl $1DF69F,$1DF6F9,Music_EndingCrowdCheerSound,Music_EndingCrowdCheerSoundEnd
	dl $1DFDA3,$1DFE8D,Music_BossExplosionSound,Music_BossExplosionSoundEnd
	dl $1FC74B,$1FE44D,Music_UnknownSong1,Music_UnknownSong1End
	dl $1FE5D1,$1FE6BB,Music_StatueOfLibertyReturned,Music_StatueOfLibertyReturnedEnd
	dl $1FE6BD,$1FEB55,Music_Credits,Music_CreditsEnd
	dl $1FEB57,$1FF273,Music_TechnodromeLetsKickShell,Music_TechnodromeLetsKickShellEnd
	dl $1FF275,$1FF3B4,Music_TechnodromeAppears,Music_TechnodromeAppearsEnd
	dl $1FF3B6,$1FF507,Music_SentBackInTime,Music_SentBackInTimeEnd
	dl $1FF509,$1FF6B1,Music_TimeTrialMenu,Music_TimeTrialMenuEnd
	dl $1FF6B3,$1FFC3F,Music_CastOfCharacters,Music_CastOfCharactersEnd
	dl $1FFC41,$1FFF97,Music_ShredderSendsTurtlesAway,Music_ShredderSendsTurtlesAwayEnd
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $068002,$068E23,BRR_VoiceClip_AlleycatBlues,BRR_VoiceClip_AlleycatBluesEnd
	dl $068E25,$068E31,BRR_UnknownSample3,BRR_UnknownSample3End
	dl $068E33,$069B94,BRR_VoiceClip_SewerSurfin,BRR_VoiceClip_SewerSurfinEnd
	dl $069B96,$069BA2,BRR_UnknownSample4,BRR_UnknownSample4End
	dl $069BA4,$06B115,BRR_VoiceClip_PrehistoricTurtlesauras,BRR_VoiceClip_PrehistoricTurtlesaurasEnd
	dl $06B117,$06B123,BRR_UnknownSample6,BRR_UnknownSample6End
	dl $06B125,$06C366,BRR_VoiceClip_SkullAndCrossbones,BRR_VoiceClip_SkullAndCrossbonesEnd
	dl $06C368,$06DD29,BRR_VoiceClip_BuryMyShellAtWoundedKnee,BRR_VoiceClip_BuryMyShellAtWoundedKneeEnd
	dl $06DD2B,$06FBAC,BRR_VoiceClip_TechnodromeTheFinalShellShock,BRR_VoiceClip_TechnodromeTheFinalShellShockEnd
	dl $1C8002,$1C91F3,BRR_VoiceClip_NeonNightRiders,BRR_VoiceClip_NeonNightRidersEnd
	dl $1C91F5,$1C9201,BRR_UnknownSample9,BRR_UnknownSample9End
	dl $1C9203,$1CB424,BRR_VoiceClip_StarbaseWhereNoTurtleHasGoneBefore,BRR_VoiceClip_StarbaseWhereNoTurtleHasGoneBeforeEnd
	dl $1CB426,$1CB432,BRR_UnknownSample11,BRR_UnknownSample11End
	dl $1CB434,$1CC725,BRR_VoiceClip_BigApple3AM,BRR_VoiceClip_BigApple3AMEnd
	dl $1CC727,$1CC733,BRR_UnknownSample2,BRR_UnknownSample2End
	dl $1CC735,$1CE4D6,BRR_VoiceClip_TechnodromeLetsKickShell,BRR_VoiceClip_TechnodromeLetsKickShellEnd
	dl $1CE4D8,$1CE4E4,BRR_UnknownSample10,BRR_UnknownSample10End
	dl $1CE4E6,$1CE4F2,BRR_UnknownSample8,BRR_UnknownSample8End
	dl $1CE4F4,$1CE500,BRR_UnknownSample7,BRR_UnknownSample7End
	dl $1CE502,$1CE50E,BRR_UnknownSample5,BRR_UnknownSample5End
	dl $1DA9EE,$1DC004,BRR_CrowdCheering,BRR_CrowdCheeringEnd
	dl $1DC006,$1DC012,BRR_UnknownSample12,BRR_UnknownSample12End
	dl $1E8000,$1F8000,BRR_GlobalSampleBank,BRR_GlobalSampleBankEnd
	dl $1FA449,$1FC749,BRR_UnknownSample13,BRR_UnknownSample13End
	dl $1FE44F,$1FE5CF,BRR_UnknownSample1,BRR_UnknownSample1End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer1_AnimatedTrainTiles1:
	db "GFX_Layer1_AnimatedTrainTiles1.bin"
GFX_Layer1_AnimatedTrainTiles1End:
GFX_Layer1_AnimatedTrainTiles2:
	db "GFX_Layer1_AnimatedTrainTiles2.bin"
GFX_Layer1_AnimatedTrainTiles2End:
GFX_Sprite_AprilONeilSayingFight:
	db "GFX_Sprite_AprilONeilSayingFight.bin"
GFX_Sprite_AprilONeilSayingFightEnd:

;--------------------------------------------------------------------

GFX_Layer3_ColonTile:
	db "GFX_Layer3_ColonTile.bin"
GFX_Layer3_ColonTileEnd:
GFX_Layer2_ContinueScreen:
	db "GFX_Layer2_ContinueScreen.bin"
GFX_Layer2_ContinueScreenEnd:
GFX_Sprite_TechnodromeAppearsSceneSprites2:
	db "GFX_Sprite_TechnodromeAppearsSceneSprites2.bin"
GFX_Sprite_TechnodromeAppearsSceneSprites2End:
GFX_Sprite_StatueOfLibertyReturnedScene2:
	db "GFX_Sprite_StatueOfLibertyReturnedScene2.bin"
GFX_Sprite_StatueOfLibertyReturnedScene2End:
GFX_Sprite_Hoverboard_FaceAway:
	db "GFX_Sprite_Hoverboard_FaceAway.bin"
GFX_Sprite_Hoverboard_FaceAwayEnd:
GFX_Sprite_Unknown1:
	db "GFX_Sprite_Unknown1.bin"
GFX_Sprite_Unknown1End:
GFX_Layer2_NeonNightRiders:
	db "GFX_Layer2_NeonNightRiders.bin"
GFX_Layer2_NeonNightRidersEnd:
GFX_Mode7_NeonNightRiders_Road:
	db "GFX_Mode7_NeonNightRiders_Road.bin"
GFX_Mode7_NeonNightRiders_RoadEnd:
GFX_Sprite_StoneWarriorGun:
	db "GFX_Sprite_StoneWarriorGun.bin"
GFX_Sprite_StoneWarriorGunEnd:
GFX_Sprite_StoneWarriorElectricGunTiles2:
	db "GFX_Sprite_StoneWarriorElectricGunTiles2.bin"
GFX_Sprite_StoneWarriorElectricGunTiles2End:
GFX_Sprite_StoneWarriorNapalmGunTiles1:
	db "GFX_Sprite_StoneWarriorNapalmGunTiles1.bin"
GFX_Sprite_StoneWarriorNapalmGunTiles1End:
GFX_Sprite_StoneWarriorBazookaTiles1:
	db "GFX_Sprite_StoneWarriorBazookaTiles1.bin"
GFX_Sprite_StoneWarriorBazookaTiles1End:
GFX_Sprite_UnknownStoneWarriorTiles1:
	db "GFX_Sprite_UnknownStoneWarriorTiles1.bin"
GFX_Sprite_UnknownStoneWarriorTiles1End:
GFX_Sprite_UnknownStoneWarriorTiles2:
	db "GFX_Sprite_UnknownStoneWarriorTiles2.bin"
GFX_Sprite_UnknownStoneWarriorTiles2End:
GFX_Sprite_QuestionMarkPizzaBox_TopHalf:
	db "GFX_Sprite_QuestionMarkPizzaBox_TopHalf.bin"
GFX_Sprite_QuestionMarkPizzaBox_TopHalfEnd:
GFX_Sprite_QuestionMarkPizzaBox_BottomHalf:
	db "GFX_Sprite_QuestionMarkPizzaBox_BottomHalf.bin"
GFX_Sprite_QuestionMarkPizzaBox_BottomHalfEnd:
GFX_Sprite_StoneWarriorGirderTiles2:
	db "GFX_Sprite_StoneWarriorGirderTiles2.bin"
GFX_Sprite_StoneWarriorGirderTiles2End:
GFX_Sprite_QuestionMarkOrbAndMouser:
	db "GFX_Sprite_QuestionMarkOrbAndMouser.bin"
GFX_Sprite_QuestionMarkOrbAndMouserEnd:
GFX_Layer3_FlippedDigital1_TopHalf:
	db "GFX_Layer3_FlippedDigital1_TopHalf.bin"
GFX_Layer3_FlippedDigital1_TopHalfEnd:
GFX_Layer3_FlippedDigital1_BottomHalf:
	db "GFX_Layer3_FlippedDigital1_BottomHalf.bin"
GFX_Layer3_FlippedDigital1_BottomHalfEnd:
GFX_Layer3_ContinueScreen_HugeNumberTiles:
	db "GFX_Layer3_ContinueScreen_HugeNumberTiles.bin"
GFX_Layer3_ContinueScreen_HugeNumberTilesEnd:
GFX_Sprite_Hoverboard_SidewaysTiles1:
	db "GFX_Sprite_Hoverboard_SidewaysTiles1.bin"
GFX_Sprite_Hoverboard_SidewaysTiles1End:
GFX_Sprite_Hoverboard_SidewaysTiles2:
	db "GFX_Sprite_Hoverboard_SidewaysTiles2.bin"
GFX_Sprite_Hoverboard_SidewaysTiles2End:
GFX_Sprite_NeonNightRiders_TextTiles:
	db "GFX_Sprite_NeonNightRiders_TextTiles.bin"
GFX_Sprite_NeonNightRiders_TextTilesEnd:
GFX_Layer1_EndScreen:
	db "GFX_Layer1_EndScreen.bin"
GFX_Layer1_EndScreenEnd:
GFX_Mode7_TimeWarpScene_TrainIcon:
	db "GFX_Mode7_TimeWarpScene_TrainIcon.bin"
GFX_Mode7_TimeWarpScene_TrainIconEnd:
GFX_Mode7_TimeWarpScene_FutureCityIcon:
	db "GFX_Mode7_TimeWarpScene_FutureCityIcon.bin"
GFX_Mode7_TimeWarpScene_FutureCityIconEnd:
GFX_Layer3_CreditsScene:
	db "GFX_Layer3_CreditsScene.bin"
GFX_Layer3_CreditsSceneEnd:
GFX_Mode7_BlankFile:
	db "GFX_Mode7_BlankFile.bin"
GFX_Mode7_BlankFileEnd:
GFX_Sprite_TimeWarpScene_DinosaurIcon:
	db "GFX_Sprite_TimeWarpScene_DinosaurIcon.bin"
GFX_Sprite_TimeWarpScene_DinosaurIconEnd:
GFX_Sprite_TimeWarpScene_PirateShipIcon:
	db "GFX_Sprite_TimeWarpScene_PirateShipIcon.bin"
GFX_Sprite_TimeWarpScene_PirateShipIconEnd:
GFX_Sprite_TimeWarpScene_TrainIcon:
	db "GFX_Sprite_TimeWarpScene_TrainIcon.bin"
GFX_Sprite_TimeWarpScene_TrainIconEnd:
GFX_Sprite_TimeWarpScene_FutureCityIcon:
	db "GFX_Sprite_TimeWarpScene_FutureCityIcon.bin"
GFX_Sprite_TimeWarpScene_FutureCityIconEnd:
GFX_Sprite_TimeWarpScene_PlanetIcon:
	db "GFX_Sprite_TimeWarpScene_PlanetIcon.bin"
GFX_Sprite_TimeWarpScene_PlanetIconEnd:
GFX_Sprite_TimeWarpScene_TechnodromeIcon:
	db "GFX_Sprite_TimeWarpScene_TechnodromeIcon.bin"
GFX_Sprite_TimeWarpScene_TechnodromeIconEnd:
GFX_Sprite_TimeWarpParticles:
	db "GFX_Sprite_TimeWarpParticles.bin"
GFX_Sprite_TimeWarpParticlesEnd:
GFX_Mode7_TimeWarpScene_DinosaurIcon:
	db "GFX_Mode7_TimeWarpScene_DinosaurIcon.bin"
GFX_Mode7_TimeWarpScene_DinosaurIconEnd:
GFX_Mode7_TimeWarpScene_PirateShipIcon:
	db "GFX_Mode7_TimeWarpScene_PirateShipIcon.bin"
GFX_Mode7_TimeWarpScene_PirateShipIconEnd:
GFX_Mode7_TimeWarpScene_PlanetIcon:
	db "GFX_Mode7_TimeWarpScene_PlanetIcon.bin"
GFX_Mode7_TimeWarpScene_PlanetIconEnd:
GFX_FGBG_CreditsSceneTiles1:
	db "GFX_FGBG_CreditsSceneTiles1.bin"
GFX_FGBG_CreditsSceneTiles1End:
GFX_Sprite_FootClanGrunt_InHelicopterChairThing:
	db "GFX_Sprite_FootClanGrunt_InHelicopterChairThing.bin"
GFX_Sprite_FootClanGrunt_InHelicopterChairThingEnd:
GFX_Sprite_Shredder_BeforeSuperTransformation:
	db "GFX_Sprite_Shredder_BeforeSuperTransformation.bin"
GFX_Sprite_Shredder_BeforeSuperTransformationEnd:
GFX_Mode7_NeonNightRiders_FakeParallaxLayer:
	db "GFX_Mode7_NeonNightRiders_FakeParallaxLayer.bin"
GFX_Mode7_NeonNightRiders_FakeParallaxLayerEnd:
GFX_Sprite_TimeWarpLevelEntryAnimation:
	db "GFX_Sprite_TimeWarpLevelEntryAnimation.bin"
GFX_Sprite_TimeWarpLevelEntryAnimationEnd:
GFX_FGBG_KonamiLogoScreen:
	db "GFX_FGBG_KonamiLogoScreen.bin"
GFX_FGBG_KonamiLogoScreenEnd:
GFX_Layer2_RatKingsBoat:
	db "GFX_Layer2_RatKingsBoat.bin"
GFX_Layer2_RatKingsBoatEnd:
GFX_FGBG_VersusModeArena:
	db "GFX_FGBG_VersusModeArena.bin"
GFX_FGBG_VersusModeArenaEnd:
GFX_Layer2_TitleScreenTiles1:
if !ROMVer&(!TMNTIV_E) != $00
	db "GFX_Layer2_TitleScreenTiles1_TMNTIV_E.bin"
else
	db "GFX_Layer2_TitleScreenTiles1_TMNTIV_U.bin"
endif
GFX_Layer2_TitleScreenTiles1End:
GFX_Layer1_CharacterSelectScreenTiles1:
	db "GFX_Layer1_CharacterSelectScreenTiles1.bin"
GFX_Layer1_CharacterSelectScreenTiles1End:
GFX_Layer1_CharacterSelectScreenTiles2:
	db "GFX_Layer1_CharacterSelectScreenTiles2.bin"
GFX_Layer1_CharacterSelectScreenTiles2End:
GFX_FGBG_CreditsSceneTiles2:
	db "GFX_FGBG_CreditsSceneTiles2.bin"
GFX_FGBG_CreditsSceneTiles2End:
GFX_Sprite_StoneWarriorBazookaTiles2:
	db "GFX_Sprite_StoneWarriorBazookaTiles2.bin"
GFX_Sprite_StoneWarriorBazookaTiles2End:
GFX_Sprite_CreditsScene:
	db "GFX_Sprite_CreditsScene.bin"
GFX_Sprite_CreditsSceneEnd:
GFX_Layer1_UnknownTrainTiles:
	db "GFX_Layer1_UnknownTrainTiles.bin"
GFX_Layer1_UnknownTrainTilesEnd:
GFX_FGBG_TechnodromeLetsKickShellTiles1:
	db "GFX_FGBG_TechnodromeLetsKickShellTiles1.bin"
GFX_FGBG_TechnodromeLetsKickShellTiles1End:
GFX_FGBG_TechnodromeLetsKickShellTiles2:
	db "GFX_FGBG_TechnodromeLetsKickShellTiles2.bin"
GFX_FGBG_TechnodromeLetsKickShellTiles2End:
GFX_FGBG_BuryMyShellAtWoundedKneeTiles1:
	db "GFX_FGBG_BuryMyShellAtWoundedKneeTiles1.bin"
GFX_FGBG_BuryMyShellAtWoundedKneeTiles1End:
GFX_FGBG_BuryMyShellAtWoundedKneeTiles2:
	db "GFX_FGBG_BuryMyShellAtWoundedKneeTiles2.bin"
GFX_FGBG_BuryMyShellAtWoundedKneeTiles2End:
GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles1:
	db "GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles1.bin"
GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles1End:
GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles2:
	db "GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles2.bin"
GFX_FGBG_StarbaseWhereNoTurtleHasGoneBeforeTiles2End:
GFX_Layer2_KrangsUFOTiles2:
	db "GFX_Layer2_KrangsUFOTiles2.bin"
GFX_Layer2_KrangsUFOTiles2End:
GFX_FGBG_BigApple3AMTiles1:
	db "GFX_FGBG_BigApple3AMTiles1.bin"
GFX_FGBG_BigApple3AMTiles1End:
GFX_Layer2_TitleScreenTiles2:
	db "GFX_Layer2_TitleScreenTiles2.bin"
GFX_Layer2_TitleScreenTiles2End:
GFX_FGBG_AlleycatBluesTiles1:
	db "GFX_FGBG_AlleycatBluesTiles1.bin"
GFX_FGBG_AlleycatBluesTiles1End:
GFX_FGBG_AlleycatBluesTiles2:
	db "GFX_FGBG_AlleycatBluesTiles2.bin"
GFX_FGBG_AlleycatBluesTiles2End:
GFX_FGBG_AlleycatBluesTiles3:
	db "GFX_FGBG_AlleycatBluesTiles3.bin"
GFX_FGBG_AlleycatBluesTiles3End:
GFX_FGBG_SewerSurfinTiles1:
	db "GFX_FGBG_SewerSurfinTiles1.bin"
GFX_FGBG_SewerSurfinTiles1End:
GFX_FGBG_SewerSurfinTiles2:
	db "GFX_FGBG_SewerSurfinTiles2.bin"
GFX_FGBG_SewerSurfinTiles2End:
GFX_Layer2_KrangsUFOTiles1:
	db "GFX_Layer2_KrangsUFOTiles1.bin"
GFX_Layer2_KrangsUFOTiles1End:
GFX_Mode7_TurtlesWatchTVScene:
	db "GFX_Mode7_TurtlesWatchTVScene.bin"
GFX_Mode7_TurtlesWatchTVSceneEnd:
GFX_Sprite_StoneWarriorGirderTiles1:
	db "GFX_Sprite_StoneWarriorGirderTiles1.bin"
GFX_Sprite_StoneWarriorGirderTiles1End:
GFX_Layer3_MainLayer3GFX:
	db "GFX_Layer3_MainLayer3GFX.bin"
GFX_Layer3_MainLayer3GFXEnd:
GFX_Layer3_BackgroundKrang:
	db "GFX_Layer3_BackgroundKrang.bin"
GFX_Layer3_BackgroundKrangEnd:
GFX_Layer3_ThrownEnemy_FacingScreen:
	db "GFX_Layer3_ThrownEnemy_FacingScreen.bin"
GFX_Layer3_ThrownEnemy_FacingScreenEnd:
GFX_Layer3_ThrownEnemy_FacingAwayFromScreen:
	db "GFX_Layer3_ThrownEnemy_FacingAwayFromScreen.bin"
GFX_Layer3_ThrownEnemy_FacingAwayFromScreenEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.bin"
GFX_Layer1_GameOverScreenEnd:
GFX_FGBG_SkullAndCrossbonesTiles1:
	db "GFX_FGBG_SkullAndCrossbonesTiles1.bin"
GFX_FGBG_SkullAndCrossbonesTiles1End:
GFX_FGBG_SkullAndCrossbonesTiles2:
	db "GFX_FGBG_SkullAndCrossbonesTiles2.bin"
GFX_FGBG_SkullAndCrossbonesTiles2End:
GFX_FGBG_TechnodromeTheFinalShellShockTiles1:
	db "GFX_FGBG_TechnodromeTheFinalShellShockTiles1.bin"
GFX_FGBG_TechnodromeTheFinalShellShockTiles1End:
GFX_FGBG_TechnodromeTheFinalShellShockTiles2:
	db "GFX_FGBG_TechnodromeTheFinalShellShockTiles2.bin"
GFX_FGBG_TechnodromeTheFinalShellShockTiles2End:
GFX_Layer3_SpeechBubbleTiles:
	db "GFX_Layer3_SpeechBubbleTiles.bin"
GFX_Layer3_SpeechBubbleTilesEnd:
GFX_FGBG_PrehistoricTurtlesaurasTiles1:
	db "GFX_FGBG_PrehistoricTurtlesaurasTiles1.bin"
GFX_FGBG_PrehistoricTurtlesaurasTiles1End:
GFX_FGBG_PrehistoricTurtlesaurasTiles2:
	db "GFX_FGBG_PrehistoricTurtlesaurasTiles2.bin"
GFX_FGBG_PrehistoricTurtlesaurasTiles2End:
GFX_Sprite_CharacterSelectScreen:
	db "GFX_Sprite_CharacterSelectScreen.bin"
GFX_Sprite_CharacterSelectScreenEnd:
GFX_Sprite_FallingStalactite:
	db "GFX_Sprite_FallingStalactite.bin"
GFX_Sprite_FallingStalactiteEnd:
GFX_Sprite_TrafficCone:
	db "GFX_Sprite_TrafficCone.bin"
GFX_Sprite_TrafficConeEnd:
GFX_Sprite_HydrantSpray:
	db "GFX_Sprite_HydrantSpray.bin"
GFX_Sprite_HydrantSprayEnd:
GFX_Sprite_LaserGate_TopHalf:
	db "GFX_Sprite_LaserGate_TopHalf.bin"
GFX_Sprite_LaserGate_TopHalfEnd:
GFX_Sprite_LaserGate_BottomHalf:
	db "GFX_Sprite_LaserGate_BottomHalf.bin"
GFX_Sprite_LaserGate_BottomHalfEnd:
GFX_Sprite_VariousShredderFightSprites:
	db "GFX_Sprite_VariousShredderFightSprites.bin"
GFX_Sprite_VariousShredderFightSpritesEnd:
GFX_Sprite_LaughingShredder:
	db "GFX_Sprite_LaughingShredder.bin"
GFX_Sprite_LaughingShredderEnd:
GFX_Sprite_IcePanelTiles1:
	db "GFX_Sprite_IcePanelTiles1.bin"
GFX_Sprite_IcePanelTiles1End:
GFX_FGBG_TechnodromeAppearsScene:
	db "GFX_FGBG_TechnodromeAppearsScene.bin"
GFX_FGBG_TechnodromeAppearsSceneEnd:
GFX_Mode7_TimeWarpScene_Turtle:
	db "GFX_Mode7_TimeWarpScene_Turtle.bin"
GFX_Mode7_TimeWarpScene_TurtleEnd:
GFX_Sprite_SurfboardSplash2:
	db "GFX_Sprite_SurfboardSplash2.bin"
GFX_Sprite_SurfboardSplash2End:
GFX_Sprite_SurfboardSplash3:
	db "GFX_Sprite_SurfboardSplash3.bin"
GFX_Sprite_SurfboardSplash3End:
GFX_Sprite_IcePanelTiles2:
	db "GFX_Sprite_IcePanelTiles2.bin"
GFX_Sprite_IcePanelTiles2End:
GFX_Sprite_Krang:
	db "GFX_Sprite_Krang.bin"
GFX_Sprite_KrangEnd:
GFX_Sprite_KrangInUFO:
	db "GFX_Sprite_KrangInUFO.bin"
GFX_Sprite_KrangInUFOEnd:
GFX_Sprite_SmallRingLaserShootingRobots:
	db "GFX_Sprite_SmallRingLaserShootingRobots.bin"
GFX_Sprite_SmallRingLaserShootingRobotsEnd:
GFX_Sprite_VelociraptorTiles1:
	db "GFX_Sprite_VelociraptorTiles1.bin"
GFX_Sprite_VelociraptorTiles1End:
GFX_Sprite_FootClanGruntTiles1:
	db "GFX_Sprite_FootClanGruntTiles1.bin"
GFX_Sprite_FootClanGruntTiles1End:
GFX_Sprite_FootClanGruntTiles2:
	db "GFX_Sprite_FootClanGruntTiles2.bin"
GFX_Sprite_FootClanGruntTiles2End:
GFX_Sprite_FootClanGruntTiles3:
	db "GFX_Sprite_FootClanGruntTiles3.bin"
GFX_Sprite_FootClanGruntTiles3End:
GFX_Sprite_FootClanGruntTiles4:
	db "GFX_Sprite_FootClanGruntTiles4.bin"
GFX_Sprite_FootClanGruntTiles4End:
GFX_Sprite_FootClanGruntTiles5:
	db "GFX_Sprite_FootClanGruntTiles5.bin"
GFX_Sprite_FootClanGruntTiles5End:
GFX_Sprite_FootClanGruntTiles6:
	db "GFX_Sprite_FootClanGruntTiles6.bin"
GFX_Sprite_FootClanGruntTiles6End:
GFX_Sprite_FootClanGruntTiles7:
	db "GFX_Sprite_FootClanGruntTiles7.bin"
GFX_Sprite_FootClanGruntTiles7End:
GFX_Sprite_FootClanGruntTiles8:
	db "GFX_Sprite_FootClanGruntTiles8.bin"
GFX_Sprite_FootClanGruntTiles8End:
GFX_Sprite_FootClanGruntTiles9:
	db "GFX_Sprite_FootClanGruntTiles9.bin"
GFX_Sprite_FootClanGruntTiles9End:
GFX_Sprite_FootClanGruntTiles10:
	db "GFX_Sprite_FootClanGruntTiles10.bin"
GFX_Sprite_FootClanGruntTiles10End:
GFX_Sprite_FootClanGrunt_TeleportInTiles1:
	db "GFX_Sprite_FootClanGrunt_TeleportInTiles1.bin"
GFX_Sprite_FootClanGrunt_TeleportInTiles1End:
GFX_Sprite_FootClanGruntTiles11:
	db "GFX_Sprite_FootClanGruntTiles11.bin"
GFX_Sprite_FootClanGruntTiles11End:
GFX_Sprite_FootClanGruntTiles12:
	db "GFX_Sprite_FootClanGruntTiles12.bin"
GFX_Sprite_FootClanGruntTiles12End:
GFX_Sprite_FootClanGruntTiles13:
	db "GFX_Sprite_FootClanGruntTiles13.bin"
GFX_Sprite_FootClanGruntTiles13End:
GFX_Sprite_HorseAndRider:
	db "GFX_Sprite_HorseAndRider.bin"
GFX_Sprite_HorseAndRiderEnd:
GFX_Sprite_FootClanGrunt_OozeFromFloorAnimaton:
	db "GFX_Sprite_FootClanGrunt_OozeFromFloorAnimaton.bin"
GFX_Sprite_FootClanGrunt_OozeFromFloorAnimatonEnd:
GFX_Sprite_FootClanGrunt_ClimbOntoShipAnimaton:
	db "GFX_Sprite_FootClanGrunt_ClimbOntoShipAnimaton.bin"
GFX_Sprite_FootClanGrunt_ClimbOntoShipAnimatonEnd:
GFX_Sprite_VelociraptorTiles3:
	db "GFX_Sprite_VelociraptorTiles3.bin"
GFX_Sprite_VelociraptorTiles3End:
GFX_Sprite_StarbaseChuteDoor:
	db "GFX_Sprite_StarbaseChuteDoor.bin"
GFX_Sprite_StarbaseChuteDoorEnd:
GFX_Sprite_VelociraptorTiles2:
	db "GFX_Sprite_VelociraptorTiles2.bin"
GFX_Sprite_VelociraptorTiles2End:
GFX_Sprite_Pterodactyl:
	db "GFX_Sprite_Pterodactyl.bin"
GFX_Sprite_PterodactylEnd:
GFX_Sprite_StoneWarrior:
	db "GFX_Sprite_StoneWarrior.bin"
GFX_Sprite_StoneWarriorEnd:
GFX_Sprite_SuperShredder:
	db "GFX_Sprite_SuperShredder.bin"
GFX_Sprite_SuperShredderEnd:
GFX_Sprite_SuperShredderProjectiles:
	db "GFX_Sprite_SuperShredderProjectiles.bin"
GFX_Sprite_SuperShredderProjectilesEnd:
GFX_Sprite_Explosions:
	db "GFX_Sprite_Explosions.bin"
GFX_Sprite_ExplosionsEnd:
GFX_Sprite_BaxterStockman:
	db "GFX_Sprite_BaxterStockman.bin"
GFX_Sprite_BaxterStockmanEnd:
GFX_Sprite_PizzaMonster:
	db "GFX_Sprite_PizzaMonster.bin"
GFX_Sprite_PizzaMonsterEnd:
GFX_Sprite_MetalHead:
	db "GFX_Sprite_MetalHead.bin"
GFX_Sprite_MetalHeadEnd:
GFX_Sprite_NormalPizzaBox_TopHalf:
	db "GFX_Sprite_NormalPizzaBox_TopHalf.bin"
GFX_Sprite_NormalPizzaBox_TopHalfEnd:
GFX_Sprite_NormalPizzaBox_BottomHalf:
	db "GFX_Sprite_NormalPizzaBox_BottomHalf.bin"
GFX_Sprite_NormalPizzaBox_BottomHalfEnd:
GFX_Sprite_BombPizzaBox_TopHalf:
	db "GFX_Sprite_BombPizzaBox_TopHalf.bin"
GFX_Sprite_BombPizzaBox_TopHalfEnd:
GFX_Sprite_Surfboard:
	db "GFX_Sprite_Surfboard.bin"
GFX_Sprite_SurfboardEnd:
GFX_Sprite_MetalBarrel:
	db "GFX_Sprite_MetalBarrel.bin"
GFX_Sprite_MetalBarrelEnd:
GFX_Sprite_BoxOfExplosives:
	db "GFX_Sprite_BoxOfExplosives.bin"
GFX_Sprite_BoxOfExplosivesEnd:
GFX_Sprite_WoodBarrel:
	db "GFX_Sprite_WoodBarrel.bin"
GFX_Sprite_WoodBarrelEnd:
GFX_Sprite_WreckingBall:
	db "GFX_Sprite_WreckingBall.bin"
GFX_Sprite_WreckingBallEnd:
GFX_Sprite_Unknown2:
	db "GFX_Sprite_Unknown2.bin"
GFX_Sprite_Unknown2End:
GFX_Sprite_KrangEyeLasers:
	db "GFX_Sprite_KrangEyeLasers.bin"
GFX_Sprite_KrangEyeLasersEnd:
GFX_Sprite_WallBrickRubble:
	db "GFX_Sprite_WallBrickRubble.bin"
GFX_Sprite_WallBrickRubbleEnd:
GFX_Sprite_PlankTrap:
	db "GFX_Sprite_PlankTrap.bin"
GFX_Sprite_PlankTrapEnd:
GFX_Sprite_PirateShip:
	db "GFX_Sprite_PirateShip.bin"
GFX_Sprite_PirateShipEnd:
GFX_Sprite_SewerMinesAndPoles:
	db "GFX_Sprite_SewerMinesAndPoles.bin"
GFX_Sprite_SewerMinesAndPolesEnd:
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles1:
	db "GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles1.bin"
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles1End:
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles2:
	db "GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles2.bin"
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles2End:
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles3:
	db "GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles3.bin"
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles3End:
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles4:
	db "GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles4.bin"
GFX_FGBG_AnimatedGreenLiquidContainerAndShredderHUDNumbersTiles4End:
GFX_Sprite_Mouser:
	db "GFX_Sprite_Mouser.bin"
GFX_Sprite_MouserEnd:
GFX_Sprite_RoadkillRodneyTiles1:
	db "GFX_Sprite_RoadkillRodneyTiles1.bin"
GFX_Sprite_RoadkillRodneyTiles1End:
GFX_Sprite_RoadkillRodneyTiles2:
	db "GFX_Sprite_RoadkillRodneyTiles2.bin"
GFX_Sprite_RoadkillRodneyTiles2End:
GFX_Sprite_RobotWalker:
	db "GFX_Sprite_RobotWalker.bin"
GFX_Sprite_RobotWalkerEnd:
GFX_Sprite_Leatherhead:
	db "GFX_Sprite_Leatherhead.bin"
GFX_Sprite_LeatherheadGFX_Sprite_LeatherheadEnd:
GFX_Sprite_VersusMode_MasterSplinter:
	db "GFX_Sprite_VersusMode_MasterSplinter.bin"
GFX_Sprite_VersusMode_MasterSplinterEnd:
GFX_Sprite_CowabungaSpeechBubble:
	db "GFX_Sprite_CowabungaSpeechBubble.bin"
GFX_Sprite_CowabungaSpeechBubbleEnd:
GFX_Sprite_RatKing:
	db "GFX_Sprite_RatKing.bin"
GFX_Sprite_RatKingEnd:
GFX_Sprite_TokkaAndRahzar:
	db "GFX_Sprite_TokkaAndRahzar.bin"
GFX_Sprite_TokkaAndRahzarEnd:
GFX_Sprite_Slash:
	db "GFX_Sprite_Slash.bin"
GFX_Sprite_SlashEnd:
GFX_Sprite_BebopAndRocksteady:
	db "GFX_Sprite_BebopAndRocksteady.bin"
GFX_Sprite_BebopAndRocksteadyEnd:
GFX_Sprite_SurfboardSplash1:
	db "GFX_Sprite_SurfboardSplash1.bin"
GFX_Sprite_SurfboardSplash1End:
GFX_Sprite_KrangBody:
	db "GFX_Sprite_KrangBody.bin"
GFX_Sprite_KrangBodyEnd:
GFX_Layer1_TurtlesWatchTVScene:
	db "GFX_Layer1_TurtlesWatchTVScene.bin"
GFX_Layer1_TurtlesWatchTVSceneEnd:
GFX_Sprite_EveningNewsScreen_AprilONeilFacingScreen:
	db "GFX_Sprite_EveningNewsScreen_AprilONeilFacingScreen.bin"
GFX_Sprite_EveningNewsScreen_AprilONeilFacingScreenEnd:
GFX_Sprite_EveningNewsScreen_AprilONeilLookingAway:
	db "GFX_Sprite_EveningNewsScreen_AprilONeilLookingAway.bin"
GFX_Sprite_EveningNewsScreen_AprilONeilLookingAwayEnd:
GFX_Sprite_FootClanGrunt_TeleportInTiles2:
	db "GFX_Sprite_FootClanGrunt_TeleportInTiles2.bin"
GFX_Sprite_FootClanGrunt_TeleportInTiles2End:
GFX_Sprite_IntroCutscene_ManholeCoverAndLights:
	db "GFX_Sprite_IntroCutscene_ManholeCoverAndLights.bin"
GFX_Sprite_IntroCutscene_ManholeCoverAndLightsEnd:
GFX_Sprite_TurtlesWatchTVScene_Shredder:
	db "GFX_Sprite_TurtlesWatchTVScene_Shredder.bin"
GFX_Sprite_TurtlesWatchTVScene_ShredderEnd:
GFX_Sprite_ShedderProjectionHands:
	db "GFX_Sprite_ShedderProjectionHands.bin"
GFX_Sprite_ShedderProjectionHandsEnd:
GFX_Sprite_TechnodromeAppearsSceneSprites1:
	db "GFX_Sprite_TechnodromeAppearsSceneSprites1.bin"
GFX_Sprite_TechnodromeAppearsSceneSprites1End:
GFX_Sprite_LargeShredderHeadAfterHisFight:
	db "GFX_Sprite_LargeShredderHeadAfterHisFight.bin"
GFX_Sprite_LargeShredderHeadAfterHisFightEnd:
GFX_Mode7_IntroCutscene_TurtlePoses:
	db "GFX_Mode7_IntroCutscene_TurtlePoses.bin"
GFX_Mode7_IntroCutscene_TurtlePosesEnd:
GFX_FGBG_IntroCutscene_CitySceneTiles1:
	db "GFX_FGBG_IntroCutscene_CitySceneTiles1.bin"
GFX_FGBG_IntroCutscene_CitySceneTiles1End:
GFX_FGBG_IntroCutscene_CitySceneTiles2:
	db "GFX_FGBG_IntroCutscene_CitySceneTiles2.bin"
GFX_FGBG_IntroCutscene_CitySceneTiles2End:
GFX_Layer3_IntroCutscene_SewerLight:
	db "GFX_Layer3_IntroCutscene_SewerLight.bin"
GFX_Layer3_IntroCutscene_SewerLightEnd:
GFX_Layer1_IntroCutscene_ScreenTearEffect:
	db "GFX_Layer1_IntroCutscene_ScreenTearEffect.bin"
GFX_Layer1_IntroCutscene_ScreenTearEffectEnd:
GFX_FGBG_EveningNewsScreen:
	db "GFX_FGBG_EveningNewsScreen.bin"
GFX_FGBG_EveningNewsScreenEnd:
GFX_Layer2_StatueOfLibertyReturnedScene1:
	db "GFX_Layer2_StatueOfLibertyReturnedScene1.bin"
GFX_Layer2_StatueOfLibertyReturnedScene1End:
GFX_Layer3_TechnodromeTheFinalShellShock:
	db "GFX_Layer3_TechnodromeTheFinalShellShock.bin"
GFX_Layer3_TechnodromeTheFinalShellShockEnd:
GFX_Sprite_StoneWarriorElectricGunTiles1:
	db "GFX_Sprite_StoneWarriorElectricGunTiles1.bin"
GFX_Sprite_StoneWarriorElectricGunTiles1End:
GFX_Sprite_StoneWarriorNapalmGunTiles2:
	db "GFX_Sprite_StoneWarriorNapalmGunTiles2.bin"
GFX_Sprite_StoneWarriorNapalmGunTiles2End:
GFX_Sprite_FootClanGrunt_PonchoPoses:
	db "GFX_Sprite_FootClanGrunt_PonchoPoses.bin"
GFX_Sprite_FootClanGrunt_PonchoPosesEnd:
GFX_Sprite_KrangBodyFlyingInBG:
	db "GFX_Sprite_KrangBodyFlyingInBG.bin"
GFX_Sprite_KrangBodyFlyingInBGEnd:
GFX_Sprite_BombPizzaBox_BottomHalf:
	db "GFX_Sprite_BombPizzaBox_BottomHalf.bin"
GFX_Sprite_BombPizzaBox_BottomHalfEnd:
GFX_Sprite_TitleScreen:
	db "GFX_Sprite_TitleScreen.bin"
GFX_Sprite_TitleScreenEnd:
GFX_Layer3_CopyrightRSymbol:
	db "GFX_Layer3_CopyrightRSymbol.bin"
GFX_Layer3_CopyrightRSymbolEnd:
GFX_Sprite_TokkaAndRahzarProjectiles:
	db "GFX_Sprite_TokkaAndRahzarProjectiles.bin"
GFX_Sprite_TokkaAndRahzarProjectilesEnd:

;--------------------------------------------------------------------

GFX_Sprite_Turtle_WalkSide1:
	db "GFX_Sprite_Turtle_WalkSide1.bin"
GFX_Sprite_Turtle_WalkSide1End:
GFX_Sprite_Turtle_WalkSide2:
	db "GFX_Sprite_Turtle_WalkSide2.bin"
GFX_Sprite_Turtle_WalkSide2End:
GFX_Sprite_Turtle_WalkSide3:
	db "GFX_Sprite_Turtle_WalkSide3.bin"
GFX_Sprite_Turtle_WalkSide3End:
GFX_Sprite_Turtle_SpinJump1And2:
	db "GFX_Sprite_Turtle_SpinJump1And2.bin"
GFX_Sprite_Turtle_SpinJump1And2End:
GFX_Sprite_Turtle_SpinJump3And4:
	db "GFX_Sprite_Turtle_SpinJump3And4.bin"
GFX_Sprite_Turtle_SpinJump3And4End:
GFX_Sprite_Turtle_Jump:
	db "GFX_Sprite_Turtle_Jump.bin"
GFX_Sprite_Turtle_JumpEnd:
GFX_Sprite_Turtle_Fall:
	db "GFX_Sprite_Turtle_Fall.bin"
GFX_Sprite_Turtle_FallEnd:
GFX_Sprite_Turtle_JumpDiveKick:
	db "GFX_Sprite_Turtle_JumpDiveKick.bin"
GFX_Sprite_Turtle_JumpDiveKickEnd:
GFX_Sprite_Turtle_WalkUp1:
	db "GFX_Sprite_Turtle_WalkUp1.bin"
GFX_Sprite_Turtle_WalkUp1End:
GFX_Sprite_Turtle_WalkUp2:
	db "GFX_Sprite_Turtle_WalkUp2.bin"
GFX_Sprite_Turtle_WalkUp2End:
GFX_Sprite_Turtle_WalkUp3:
	db "GFX_Sprite_Turtle_WalkUp3.bin"
GFX_Sprite_Turtle_WalkUp3End:
GFX_Sprite_Turtle_SideKick1:
	db "GFX_Sprite_Turtle_SideKick1.bin"
GFX_Sprite_Turtle_SideKick1End:
GFX_Sprite_Turtle_SideKick2:
	db "GFX_Sprite_Turtle_SideKick2.bin"
GFX_Sprite_Turtle_SideKick2End:
GFX_Sprite_Turtle_Run1:
	db "GFX_Sprite_Turtle_Run1.bin"
GFX_Sprite_Turtle_Run1End:
GFX_Sprite_Turtle_Run2:
	db "GFX_Sprite_Turtle_Run2.bin"
GFX_Sprite_Turtle_Run2End:
GFX_Sprite_Turtle_Run3:
	db "GFX_Sprite_Turtle_Run3.bin"
GFX_Sprite_Turtle_Run3End:
GFX_Sprite_Turtle_SideFallKick:
	db "GFX_Sprite_Turtle_SideFallKick.bin"
GFX_Sprite_Turtle_SideFallKickEnd:
GFX_Sprite_Turtle_JumpKick1:
	db "GFX_Sprite_Turtle_JumpKick1.bin"
GFX_Sprite_Turtle_JumpKick1End:
GFX_Sprite_Turtle_JumpKick2:
	db "GFX_Sprite_Turtle_JumpKick2.bin"
GFX_Sprite_Turtle_JumpKick2End:
GFX_Sprite_Turtle_AerialWeaponSwing1:
	db "GFX_Sprite_Turtle_AerialWeaponSwing1.bin"
GFX_Sprite_Turtle_AerialWeaponSwing1End:
GFX_Sprite_Turtle_AerialWeaponSwing2:
	db "GFX_Sprite_Turtle_AerialWeaponSwing2.bin"
GFX_Sprite_Turtle_AerialWeaponSwing2End:
GFX_Sprite_Turtle_AerialWeaponSwing3:
	db "GFX_Sprite_Turtle_AerialWeaponSwing3.bin"
GFX_Sprite_Turtle_AerialWeaponSwing3End:
GFX_Sprite_Turtle_ShoulderCharge:
	db "GFX_Sprite_Turtle_ShoulderCharge.bin"
GFX_Sprite_Turtle_ShoulderChargeEnd:
GFX_Sprite_Turtle_SpinAttack2:
	db "GFX_Sprite_Turtle_SpinAttack2.bin"
GFX_Sprite_Turtle_SpinAttack2End:
GFX_Sprite_Turtle_SpinAttack3:
	db "GFX_Sprite_Turtle_SpinAttack3.bin"
GFX_Sprite_Turtle_SpinAttack3End:
GFX_Sprite_Turtle_SpinAttack4:
	db "GFX_Sprite_Turtle_SpinAttack4.bin"
GFX_Sprite_Turtle_SpinAttack4End:
GFX_Sprite_Turtle_SpinAttack1:
	db "GFX_Sprite_Turtle_SpinAttack1.bin"
GFX_Sprite_Turtle_SpinAttack1End:
GFX_Sprite_Turtle_SlideKick:
	db "GFX_Sprite_Turtle_SlideKick.bin"
GFX_Sprite_Turtle_SlideKickEnd:
GFX_Sprite_Turtle_Hurt_PunchedInFace:
	db "GFX_Sprite_Turtle_Hurt_PunchedInFace.bin"
GFX_Sprite_Turtle_Hurt_PunchedInFaceEnd:
GFX_Sprite_Turtle_Hurt_LeanFarBack:
	db "GFX_Sprite_Turtle_Hurt_LeanFarBack.bin"
GFX_Sprite_Turtle_Hurt_LeanFarBackEnd:
GFX_Sprite_Turtle_Hurt_BalanceOnOneFoot:
	db "GFX_Sprite_Turtle_Hurt_BalanceOnOneFoot.bin"
GFX_Sprite_Turtle_Hurt_BalanceOnOneFootEnd:
GFX_Sprite_Turtle_ShotByBaxterBeam:
	db "GFX_Sprite_Turtle_ShotByBaxterBeam.bin"
GFX_Sprite_Turtle_ShotByBaxterBeamEnd:
GFX_Sprite_Turtle_StandingUpFromFall:
	db "GFX_Sprite_Turtle_StandingUpFromFall.bin"
GFX_Sprite_Turtle_StandingUpFromFallEnd:
GFX_Sprite_Turtle_Hurt_HitInBack:
	db "GFX_Sprite_Turtle_Hurt_HitInBack.bin"
GFX_Sprite_Turtle_Hurt_HitInBackEnd:
GFX_Sprite_Turtle_Hurt_HitInBackUpwards:
	db "GFX_Sprite_Turtle_Hurt_HitInBackUpwards.bin"
GFX_Sprite_Turtle_Hurt_HitInBackUpwardsEnd:
GFX_Sprite_TurtleWeapon_Pose1:
	db "GFX_Sprite_TurtleWeapon_Pose1.bin"
GFX_Sprite_TurtleWeapon_Pose1End:
GFX_Sprite_TurtleWeapon_Pose2:
	db "GFX_Sprite_TurtleWeapon_Pose2.bin"
GFX_Sprite_TurtleWeapon_Pose2End:
GFX_Sprite_TurtleWeapon_Pose3:
	db "GFX_Sprite_TurtleWeapon_Pose3.bin"
GFX_Sprite_TurtleWeapon_Pose3End:
GFX_Sprite_TurtleWeapon_Pose4:
	db "GFX_Sprite_TurtleWeapon_Pose4.bin"
GFX_Sprite_TurtleWeapon_Pose4End:
GFX_Sprite_TurtleWeapon_Pose5:
	db "GFX_Sprite_TurtleWeapon_Pose5.bin"
GFX_Sprite_TurtleWeapon_Pose5End:
GFX_Sprite_TurtleWeapon_Pose6:
	db "GFX_Sprite_TurtleWeapon_Pose6.bin"
GFX_Sprite_TurtleWeapon_Pose6End:
GFX_Sprite_TurtleWeapon_Pose7:
	db "GFX_Sprite_TurtleWeapon_Pose7.bin"
GFX_Sprite_TurtleWeapon_Pose7End:
GFX_Sprite_TurtleWeapon_Pose8:
	db "GFX_Sprite_TurtleWeapon_Pose8.bin"
GFX_Sprite_TurtleWeapon_Pose8End:
GFX_Sprite_TurtleWeapon_Pose9:
	db "GFX_Sprite_TurtleWeapon_Pose9.bin"
GFX_Sprite_TurtleWeapon_Pose9End:
GFX_Sprite_TurtleWeapon_Pose10:
	db "GFX_Sprite_TurtleWeapon_Pose10.bin"
GFX_Sprite_TurtleWeapon_Pose10End:
GFX_Sprite_TurtleWeapon_Pose11:
	db "GFX_Sprite_TurtleWeapon_Pose11.bin"
GFX_Sprite_TurtleWeapon_Pose11End:
GFX_Sprite_TurtleWeapon_Pose12:
	db "GFX_Sprite_TurtleWeapon_Pose12.bin"
GFX_Sprite_TurtleWeapon_Pose12End:
GFX_Sprite_TurtleWeapon_Pose13:
	db "GFX_Sprite_TurtleWeapon_Pose13.bin"
GFX_Sprite_TurtleWeapon_Pose13End:
GFX_Sprite_TurtleWeapon_Pose14:
	db "GFX_Sprite_TurtleWeapon_Pose14.bin"
GFX_Sprite_TurtleWeapon_Pose14End:
GFX_Sprite_TurtleWeapon_Pose15:
	db "GFX_Sprite_TurtleWeapon_Pose15.bin"
GFX_Sprite_TurtleWeapon_Pose15End:
GFX_Sprite_TurtleWeapon_Pose16:
	db "GFX_Sprite_TurtleWeapon_Pose16.bin"
GFX_Sprite_TurtleWeapon_Pose16End:
GFX_Sprite_TurtleWeapon_Pose17:
	db "GFX_Sprite_TurtleWeapon_Pose17.bin"
GFX_Sprite_TurtleWeapon_Pose17End:
GFX_Sprite_TurtleWeapon_Pose18:
	db "GFX_Sprite_TurtleWeapon_Pose18.bin"
GFX_Sprite_TurtleWeapon_Pose18End:
GFX_Sprite_TurtleWeapon_Pose19:
	db "GFX_Sprite_TurtleWeapon_Pose19.bin"
GFX_Sprite_TurtleWeapon_Pose19End:
GFX_Sprite_TurtleWeapon_Pose20:
	db "GFX_Sprite_TurtleWeapon_Pose20.bin"
GFX_Sprite_TurtleWeapon_Pose20End:
GFX_Sprite_TurtleWeapon_Pose21:
	db "GFX_Sprite_TurtleWeapon_Pose21.bin"
GFX_Sprite_TurtleWeapon_Pose21End:
GFX_Sprite_TurtleWeapon_Pose22:
	db "GFX_Sprite_TurtleWeapon_Pose22.bin"
GFX_Sprite_TurtleWeapon_Pose22End:
GFX_Sprite_TurtleWeapon_Pose23:
	db "GFX_Sprite_TurtleWeapon_Pose23.bin"
GFX_Sprite_TurtleWeapon_Pose23End:
GFX_Sprite_TurtleWeapon_Pose24:
	db "GFX_Sprite_TurtleWeapon_Pose24.bin"
GFX_Sprite_TurtleWeapon_Pose24End:
GFX_Sprite_TurtleWeapon_Pose25:
	db "GFX_Sprite_TurtleWeapon_Pose25.bin"
GFX_Sprite_TurtleWeapon_Pose25End:
GFX_Sprite_TurtleWeapon_Pose26:
	db "GFX_Sprite_TurtleWeapon_Pose26.bin"
GFX_Sprite_TurtleWeapon_Pose26End:
GFX_Sprite_TurtleWeapon_Pose27:
	db "GFX_Sprite_TurtleWeapon_Pose27.bin"
GFX_Sprite_TurtleWeapon_Pose27End:
GFX_Sprite_TurtleWeapon_Pose28:
	db "GFX_Sprite_TurtleWeapon_Pose28.bin"
GFX_Sprite_TurtleWeapon_Pose28End:
GFX_Sprite_TurtleWeapon_Pose29:
	db "GFX_Sprite_TurtleWeapon_Pose29.bin"
GFX_Sprite_TurtleWeapon_Pose29End:
GFX_Sprite_TurtleWeapon_Pose30:
	db "GFX_Sprite_TurtleWeapon_Pose30.bin"
GFX_Sprite_TurtleWeapon_Pose30End:
GFX_Sprite_TurtleWeapon_Pose31:
	db "GFX_Sprite_TurtleWeapon_Pose31.bin"
GFX_Sprite_TurtleWeapon_Pose31End:
GFX_Sprite_TurtleWeapon_Pose32:
	db "GFX_Sprite_TurtleWeapon_Pose32.bin"
GFX_Sprite_TurtleWeapon_Pose32End:
GFX_Sprite_TurtleWeapon_Pose33:
	db "GFX_Sprite_TurtleWeapon_Pose33.bin"
GFX_Sprite_TurtleWeapon_Pose33End:
GFX_Sprite_TurtleWeapon_Pose34:
	db "GFX_Sprite_TurtleWeapon_Pose34.bin"
GFX_Sprite_TurtleWeapon_Pose34End:
GFX_Sprite_TurtleWeapon_Pose35:
	db "GFX_Sprite_TurtleWeapon_Pose35.bin"
GFX_Sprite_TurtleWeapon_Pose35End:
GFX_Sprite_TurtleWeapon_Pose36:
	db "GFX_Sprite_TurtleWeapon_Pose36.bin"
GFX_Sprite_TurtleWeapon_Pose36End:
GFX_Sprite_TurtleWeapon_Pose37:
	db "GFX_Sprite_TurtleWeapon_Pose37.bin"
GFX_Sprite_TurtleWeapon_Pose37End:
GFX_Sprite_TurtleWeapon_Pose38:
	db "GFX_Sprite_TurtleWeapon_Pose38.bin"
GFX_Sprite_TurtleWeapon_Pose38End:
GFX_Sprite_TurtleWeapon_Pose39:
	db "GFX_Sprite_TurtleWeapon_Pose39.bin"
GFX_Sprite_TurtleWeapon_Pose39End:
GFX_Sprite_TurtleWeapon_Pose40:
	db "GFX_Sprite_TurtleWeapon_Pose40.bin"
GFX_Sprite_TurtleWeapon_Pose40End:
GFX_Sprite_TurtleWeapon_Pose41:
	db "GFX_Sprite_TurtleWeapon_Pose41.bin"
GFX_Sprite_TurtleWeapon_Pose41End:
GFX_Sprite_TurtleWeapon_Pose42:
	db "GFX_Sprite_TurtleWeapon_Pose42.bin"
GFX_Sprite_TurtleWeapon_Pose42End:
GFX_Sprite_TurtleWeapon_Pose43:
	db "GFX_Sprite_TurtleWeapon_Pose43.bin"
GFX_Sprite_TurtleWeapon_Pose43End:
GFX_Sprite_TurtleWeapon_Pose44:
	db "GFX_Sprite_TurtleWeapon_Pose44.bin"
GFX_Sprite_TurtleWeapon_Pose44End:
GFX_Sprite_TurtleWeapon_Pose45:
	db "GFX_Sprite_TurtleWeapon_Pose45.bin"
GFX_Sprite_TurtleWeapon_Pose45End:
GFX_Sprite_TurtleWeapon_Pose46:
	db "GFX_Sprite_TurtleWeapon_Pose46.bin"
GFX_Sprite_TurtleWeapon_Pose46End:
GFX_Sprite_TurtleWeapon_Pose47:
	db "GFX_Sprite_TurtleWeapon_Pose47.bin"
GFX_Sprite_TurtleWeapon_Pose47End:
GFX_Sprite_TurtleWeapon_Pose48:
	db "GFX_Sprite_TurtleWeapon_Pose48.bin"
GFX_Sprite_TurtleWeapon_Pose48End:
GFX_Sprite_TurtleWeapon_Pose49:
	db "GFX_Sprite_TurtleWeapon_Pose49.bin"
GFX_Sprite_TurtleWeapon_Pose49End:
GFX_Sprite_TurtleWeapon_Pose50:
	db "GFX_Sprite_TurtleWeapon_Pose50.bin"
GFX_Sprite_TurtleWeapon_Pose50End:
GFX_Sprite_TurtleWeapon_Pose51:
	db "GFX_Sprite_TurtleWeapon_Pose51.bin"
GFX_Sprite_TurtleWeapon_Pose51End:
GFX_Sprite_TurtleWeapon_Pose52:
	db "GFX_Sprite_TurtleWeapon_Pose52.bin"
GFX_Sprite_TurtleWeapon_Pose52End:
GFX_Sprite_TurtleWeapon_Pose53:
	db "GFX_Sprite_TurtleWeapon_Pose53.bin"
GFX_Sprite_TurtleWeapon_Pose53End:
GFX_Sprite_TurtleWeapon_Pose54:
	db "GFX_Sprite_TurtleWeapon_Pose54.bin"
GFX_Sprite_TurtleWeapon_Pose54End:
GFX_Sprite_TurtleWeapon_Pose55:
	db "GFX_Sprite_TurtleWeapon_Pose55.bin"
GFX_Sprite_TurtleWeapon_Pose55End:
GFX_Sprite_TurtleWeapon_Pose56:
	db "GFX_Sprite_TurtleWeapon_Pose56.bin"
GFX_Sprite_TurtleWeapon_Pose56End:
GFX_Sprite_TurtleWeapon_Pose57:
	db "GFX_Sprite_TurtleWeapon_Pose57.bin"
GFX_Sprite_TurtleWeapon_Pose57End:
GFX_Sprite_TurtleWeapon_Pose58:
	db "GFX_Sprite_TurtleWeapon_Pose58.bin"
GFX_Sprite_TurtleWeapon_Pose58End:
GFX_Sprite_TurtleWeapon_Pose59:
	db "GFX_Sprite_TurtleWeapon_Pose59.bin"
GFX_Sprite_TurtleWeapon_Pose59End:
GFX_Sprite_TurtleWeapon_Pose60:
	db "GFX_Sprite_TurtleWeapon_Pose60.bin"
GFX_Sprite_TurtleWeapon_Pose60End:
GFX_Sprite_TurtleWeapon_Pose61:
	db "GFX_Sprite_TurtleWeapon_Pose61.bin"
GFX_Sprite_TurtleWeapon_Pose61End:
GFX_Sprite_TurtleWeapon_Pose62:
	db "GFX_Sprite_TurtleWeapon_Pose62.bin"
GFX_Sprite_TurtleWeapon_Pose62End:
GFX_Sprite_TurtleWeapon_Pose63:
	db "GFX_Sprite_TurtleWeapon_Pose63.bin"
GFX_Sprite_TurtleWeapon_Pose63End:
GFX_Sprite_TurtleWeapon_Pose64:
	db "GFX_Sprite_TurtleWeapon_Pose64.bin"
GFX_Sprite_TurtleWeapon_Pose64End:
GFX_Sprite_TurtleWeapon_Pose65:
	db "GFX_Sprite_TurtleWeapon_Pose65.bin"
GFX_Sprite_TurtleWeapon_Pose65End:
GFX_Sprite_TurtleWeapon_Pose66:
	db "GFX_Sprite_TurtleWeapon_Pose66.bin"
GFX_Sprite_TurtleWeapon_Pose66End:
GFX_Sprite_TurtleWeapon_Pose67:
	db "GFX_Sprite_TurtleWeapon_Pose67.bin"
GFX_Sprite_TurtleWeapon_Pose67End:
GFX_Sprite_TurtleWeapon_Pose68:
	db "GFX_Sprite_TurtleWeapon_Pose68.bin"
GFX_Sprite_TurtleWeapon_Pose68End:
GFX_Sprite_TurtleWeapon_Pose69:
	db "GFX_Sprite_TurtleWeapon_Pose69.bin"
GFX_Sprite_TurtleWeapon_Pose69End:
GFX_Sprite_TurtleWeapon_Pose70:
	db "GFX_Sprite_TurtleWeapon_Pose70.bin"
GFX_Sprite_TurtleWeapon_Pose70End:
GFX_Sprite_TurtleWeapon_Pose71:
	db "GFX_Sprite_TurtleWeapon_Pose71.bin"
GFX_Sprite_TurtleWeapon_Pose71End:
GFX_Sprite_TurtleWeapon_Pose72:
	db "GFX_Sprite_TurtleWeapon_Pose72.bin"
GFX_Sprite_TurtleWeapon_Pose72End:
GFX_Sprite_TurtleWeapon_Pose73:
	db "GFX_Sprite_TurtleWeapon_Pose73.bin"
GFX_Sprite_TurtleWeapon_Pose73End:
GFX_Sprite_TurtleWeapon_Pose74:
	db "GFX_Sprite_TurtleWeapon_Pose74.bin"
GFX_Sprite_TurtleWeapon_Pose74End:
GFX_Sprite_TurtleWeapon_Pose75:
	db "GFX_Sprite_TurtleWeapon_Pose75.bin"
GFX_Sprite_TurtleWeapon_Pose75End:
GFX_Sprite_TurtleWeapon_Pose76:
	db "GFX_Sprite_TurtleWeapon_Pose76.bin"
GFX_Sprite_TurtleWeapon_Pose76End:
GFX_Sprite_TurtleWeapon_Pose77:
	db "GFX_Sprite_TurtleWeapon_Pose77.bin"
GFX_Sprite_TurtleWeapon_Pose77End:
GFX_Sprite_TurtleWeapon_Pose78:
	db "GFX_Sprite_TurtleWeapon_Pose78.bin"
GFX_Sprite_TurtleWeapon_Pose78End:
GFX_Sprite_TurtleWeapon_Pose79:
	db "GFX_Sprite_TurtleWeapon_Pose79.bin"
GFX_Sprite_TurtleWeapon_Pose79End:
GFX_Sprite_TurtleWeapon_Pose80:
	db "GFX_Sprite_TurtleWeapon_Pose80.bin"
GFX_Sprite_TurtleWeapon_Pose80End:
GFX_Sprite_TurtleWeapon_Pose81:
	db "GFX_Sprite_TurtleWeapon_Pose81.bin"
GFX_Sprite_TurtleWeapon_Pose81End:
GFX_Sprite_TurtleWeapon_Pose82:
	db "GFX_Sprite_TurtleWeapon_Pose82.bin"
GFX_Sprite_TurtleWeapon_Pose82End:
GFX_Sprite_TurtleWeapon_Pose83:
	db "GFX_Sprite_TurtleWeapon_Pose83.bin"
GFX_Sprite_TurtleWeapon_Pose83End:
GFX_Sprite_TurtleWeapon_Pose84:
	db "GFX_Sprite_TurtleWeapon_Pose84.bin"
GFX_Sprite_TurtleWeapon_Pose84End:
GFX_Sprite_TurtleWeapon_Pose85:
	db "GFX_Sprite_TurtleWeapon_Pose85.bin"
GFX_Sprite_TurtleWeapon_Pose85End:
GFX_Sprite_TurtleWeapon_Pose86:
	db "GFX_Sprite_TurtleWeapon_Pose86.bin"
GFX_Sprite_TurtleWeapon_Pose86End:
GFX_Sprite_TurtleWeapon_Pose87:
	db "GFX_Sprite_TurtleWeapon_Pose87.bin"
GFX_Sprite_TurtleWeapon_Pose87End:
GFX_Sprite_TurtleWeapon_Pose88:
	db "GFX_Sprite_TurtleWeapon_Pose88.bin"
GFX_Sprite_TurtleWeapon_Pose88End:
GFX_Sprite_TurtleWeapon_Pose89:
	db "GFX_Sprite_TurtleWeapon_Pose89.bin"
GFX_Sprite_TurtleWeapon_Pose89End:
GFX_Sprite_TurtleWeapon_Pose90:
	db "GFX_Sprite_TurtleWeapon_Pose90.bin"
GFX_Sprite_TurtleWeapon_Pose90End:
GFX_Sprite_TurtleWeapon_Pose91:
	db "GFX_Sprite_TurtleWeapon_Pose91.bin"
GFX_Sprite_TurtleWeapon_Pose91End:
GFX_Sprite_TurtleWeapon_Pose92:
	db "GFX_Sprite_TurtleWeapon_Pose92.bin"
GFX_Sprite_TurtleWeapon_Pose92End:
GFX_Sprite_TurtleWeapon_Pose93:
	db "GFX_Sprite_TurtleWeapon_Pose93.bin"
GFX_Sprite_TurtleWeapon_Pose93End:
GFX_Sprite_TurtleWeapon_Pose94:
	db "GFX_Sprite_TurtleWeapon_Pose94.bin"
GFX_Sprite_TurtleWeapon_Pose94End:
GFX_Sprite_TurtleWeapon_Pose95:
	db "GFX_Sprite_TurtleWeapon_Pose95.bin"
GFX_Sprite_TurtleWeapon_Pose95End:
GFX_Sprite_TurtleWeapon_Pose96:
	db "GFX_Sprite_TurtleWeapon_Pose96.bin"
GFX_Sprite_TurtleWeapon_Pose96End:
GFX_Sprite_TurtleWeapon_Pose97:
	db "GFX_Sprite_TurtleWeapon_Pose97.bin"
GFX_Sprite_TurtleWeapon_Pose97End:
GFX_Sprite_TurtleWeapon_Pose98:
	db "GFX_Sprite_TurtleWeapon_Pose98.bin"
GFX_Sprite_TurtleWeapon_Pose98End:
GFX_Sprite_TurtleWeapon_Pose99:
	db "GFX_Sprite_TurtleWeapon_Pose99.bin"
GFX_Sprite_TurtleWeapon_Pose99End:
GFX_Sprite_TurtleWeapon_Pose100:
	db "GFX_Sprite_TurtleWeapon_Pose100.bin"
GFX_Sprite_TurtleWeapon_Pose100End:
GFX_Sprite_TurtleWeapon_Pose101:
	db "GFX_Sprite_TurtleWeapon_Pose101.bin"
GFX_Sprite_TurtleWeapon_Pose101End:
GFX_Sprite_TurtleWeapon_Pose102:
	db "GFX_Sprite_TurtleWeapon_Pose102.bin"
GFX_Sprite_TurtleWeapon_Pose102End:
GFX_Sprite_Turtle_RollThrow3:
	db "GFX_Sprite_Turtle_RollThrow3.bin"
GFX_Sprite_Turtle_RollThrow3End:
GFX_Sprite_Turtle_BeginThrowEnemy2:
	db "GFX_Sprite_Turtle_BeginThrowEnemy2.bin"
GFX_Sprite_Turtle_BeginThrowEnemy2End:
GFX_Sprite_Turtle_Hurt_DevolvedPoses:
	db "GFX_Sprite_Turtle_Hurt_DevolvedPoses.bin"
GFX_Sprite_Turtle_Hurt_DevolvedPosesEnd:
GFX_Sprite_Michaelangelo_Stand:
	db "GFX_Sprite_Michaelangelo_Stand.bin"
GFX_Sprite_Michaelangelo_StandEnd:
GFX_Sprite_Turtle_Hurt_SitOnGround:
	db "GFX_Sprite_Turtle_Hurt_SitOnGround.bin"
GFX_Sprite_Turtle_Hurt_SitOnGroundEnd:
GFX_Sprite_Turtle_Grabbed1:
	db "GFX_Sprite_Turtle_Grabbed1.bin"
GFX_Sprite_Turtle_Grabbed1End:
GFX_Sprite_Turtle_Grabbed2:
	db "GFX_Sprite_Turtle_Grabbed2.bin"
GFX_Sprite_Turtle_Grabbed2End:
GFX_Sprite_Turtle_GetUpOffGround1:
	db "GFX_Sprite_Turtle_GetUpOffGround1.bin"
GFX_Sprite_Turtle_GetUpOffGround1End:
GFX_Sprite_Turtle_GetUpOffGround2:
	db "GFX_Sprite_Turtle_GetUpOffGround2.bin"
GFX_Sprite_Turtle_GetUpOffGround2End:
GFX_Sprite_Turtle_GetUpOffGround3:
	db "GFX_Sprite_Turtle_GetUpOffGround3.bin"
GFX_Sprite_Turtle_GetUpOffGround3End:
GFX_Sprite_Turtle_GetUpOffGround4:
	db "GFX_Sprite_Turtle_GetUpOffGround4.bin"
GFX_Sprite_Turtle_GetUpOffGround4End:
GFX_Sprite_Turtle_StartRollAttack1:
	db "GFX_Sprite_Turtle_StartRollAttack1.bin"
GFX_Sprite_Turtle_StartRollAttack1End:
GFX_Sprite_Turtle_StartRollAttack2:
	db "GFX_Sprite_Turtle_StartRollAttack2.bin"
GFX_Sprite_Turtle_StartRollAttack2End:
GFX_Sprite_Turtle_Hurt_TripOver1:
	db "GFX_Sprite_Turtle_Hurt_TripOver1.bin"
GFX_Sprite_Turtle_Hurt_TripOver1End:
GFX_Sprite_Turtle_Hurt_TripOver2:
	db "GFX_Sprite_Turtle_Hurt_TripOver2.bin"
GFX_Sprite_Turtle_Hurt_TripOver2End:
GFX_Sprite_Turtle_Hurt_TripOver3:
	db "GFX_Sprite_Turtle_Hurt_TripOver3.bin"
GFX_Sprite_Turtle_Hurt_TripOver3End:
GFX_Sprite_Turtle_Hurt_KnockedUpAndBack1:
	db "GFX_Sprite_Turtle_Hurt_KnockedUpAndBack1.bin"
GFX_Sprite_Turtle_Hurt_KnockedUpAndBack1End:
GFX_Sprite_Turtle_Hurt_KnockedUpAndBack2:
	db "GFX_Sprite_Turtle_Hurt_KnockedUpAndBack2.bin"
GFX_Sprite_Turtle_Hurt_KnockedUpAndBack2End:
GFX_Sprite_Turtle_Hurt_PunchedInGut:
	db "GFX_Sprite_Turtle_Hurt_PunchedInGut.bin"
GFX_Sprite_Turtle_Hurt_PunchedInGutEnd:
GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnBack:
	db "GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnBack.bin"
GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnBackEnd:
GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnStomach:
	db "GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnStomach.bin"
GFX_Sprite_Turtle_Hurt_SlammedIntoWallOnStomachEnd:
GFX_Sprite_Turtle_Hurt_SpinningLikeTop:
	db "GFX_Sprite_Turtle_Hurt_SpinningLikeTop.bin"
GFX_Sprite_Turtle_Hurt_SpinningLikeTopEnd:
GFX_Sprite_Turtle_Hurt_SmackedByPlank:
	db "GFX_Sprite_Turtle_Hurt_SmackedByPlank.bin"
GFX_Sprite_Turtle_Hurt_SmackedByPlankEnd:
GFX_Sprite_Turtle_Hurt_Electrified1:
	db "GFX_Sprite_Turtle_Hurt_Electrified1.bin"
GFX_Sprite_Turtle_Hurt_Electrified1End:
GFX_Sprite_Turtle_Hurt_Electrified2:
	db "GFX_Sprite_Turtle_Hurt_Electrified2.bin"
GFX_Sprite_Turtle_Hurt_Electrified2End:
GFX_Sprite_Turtle_Hurt_TrappedByEnergy:
	db "GFX_Sprite_Turtle_Hurt_TrappedByEnergy.bin"
GFX_Sprite_Turtle_Hurt_TrappedByEnergyEnd:
GFX_Sprite_Turtle_Hurt_BurntFootJump:
	db "GFX_Sprite_Turtle_Hurt_BurntFootJump.bin"
GFX_Sprite_Turtle_Hurt_BurntFootJumpEnd:
GFX_Sprite_Turtle_Hurt_BurntFace:
	db "GFX_Sprite_Turtle_Hurt_BurntFace.bin"
GFX_Sprite_Turtle_Hurt_BurntFaceEnd:
GFX_Sprite_Turtle_Hurt_Squished:
	db "GFX_Sprite_Turtle_Hurt_Squished.bin"
GFX_Sprite_Turtle_Hurt_SquishedEnd:
GFX_Sprite_Turtle_FellInHolePoses:
	db "GFX_Sprite_Turtle_FellInHolePoses.bin"
GFX_Sprite_Turtle_FellInHolePosesEnd:
GFX_Sprite_Turtle_Hurt_Frozen:
	db "GFX_Sprite_Turtle_Hurt_Frozen.bin"
GFX_Sprite_Turtle_Hurt_FrozenEnd:
GFX_Sprite_Turtle_Hurt_InBubble:
	db "GFX_Sprite_Turtle_Hurt_InBubble.bin"
GFX_Sprite_Turtle_Hurt_InBubbleEnd:
GFX_Sprite_Raphael_4thStandingAttack:
	db "GFX_Sprite_Raphael_4thStandingAttack.bin"
GFX_Sprite_Raphael_4thStandingAttackEnd:
GFX_Sprite_TurtleWeapon_Pose103:
	db "GFX_Sprite_TurtleWeapon_Pose103.bin"
GFX_Sprite_TurtleWeapon_Pose103End:
GFX_Sprite_TurtleWeapon_Pose104:
	db "GFX_Sprite_TurtleWeapon_Pose104.bin"
GFX_Sprite_TurtleWeapon_Pose104End:
GFX_Sprite_TurtleWeapon_Pose105:
	db "GFX_Sprite_TurtleWeapon_Pose105.bin"
GFX_Sprite_TurtleWeapon_Pose105End:
GFX_Sprite_TurtleWeapon_Pose106:
	db "GFX_Sprite_TurtleWeapon_Pose106.bin"
GFX_Sprite_TurtleWeapon_Pose106End:
GFX_Sprite_TurtleWeapon_Pose107:
	db "GFX_Sprite_TurtleWeapon_Pose107.bin"
GFX_Sprite_TurtleWeapon_Pose107End:
GFX_Sprite_TurtleWeapon_Pose108:
	db "GFX_Sprite_TurtleWeapon_Pose108.bin"
GFX_Sprite_TurtleWeapon_Pose108End:
GFX_Sprite_TurtleWeapon_Pose109:
	db "GFX_Sprite_TurtleWeapon_Pose109.bin"
GFX_Sprite_TurtleWeapon_Pose109End:
GFX_Sprite_TurtleWeapon_Pose110:
	db "GFX_Sprite_TurtleWeapon_Pose110.bin"
GFX_Sprite_TurtleWeapon_Pose110End:
GFX_Sprite_TurtleWeapon_Pose111:
	db "GFX_Sprite_TurtleWeapon_Pose111.bin"
GFX_Sprite_TurtleWeapon_Pose111End:
GFX_Sprite_TurtleWeapon_Pose112:
	db "GFX_Sprite_TurtleWeapon_Pose112.bin"
GFX_Sprite_TurtleWeapon_Pose112End:
GFX_Sprite_TurtleWeapon_Pose113:
	db "GFX_Sprite_TurtleWeapon_Pose113.bin"
GFX_Sprite_TurtleWeapon_Pose113End:
GFX_Sprite_TurtleWeapon_Pose114:
	db "GFX_Sprite_TurtleWeapon_Pose114.bin"
GFX_Sprite_TurtleWeapon_Pose114End:
GFX_Sprite_TurtleWeapon_Pose115:
	db "GFX_Sprite_TurtleWeapon_Pose115.bin"
GFX_Sprite_TurtleWeapon_Pose115End:
GFX_Sprite_TurtleWeapon_Pose116:
	db "GFX_Sprite_TurtleWeapon_Pose116.bin"
GFX_Sprite_TurtleWeapon_Pose116End:
GFX_Sprite_TurtleWeapon_Pose117:
	db "GFX_Sprite_TurtleWeapon_Pose117.bin"
GFX_Sprite_TurtleWeapon_Pose117End:
GFX_Sprite_TurtleWeapon_Pose118:
	db "GFX_Sprite_TurtleWeapon_Pose118.bin"
GFX_Sprite_TurtleWeapon_Pose118End:
GFX_Sprite_TurtleWeapon_Pose119:
	db "GFX_Sprite_TurtleWeapon_Pose119.bin"
GFX_Sprite_TurtleWeapon_Pose119End:
GFX_Sprite_TurtleWeapon_Pose120:
	db "GFX_Sprite_TurtleWeapon_Pose120.bin"
GFX_Sprite_TurtleWeapon_Pose120End:
GFX_Sprite_TurtleWeapon_Pose121:
	db "GFX_Sprite_TurtleWeapon_Pose121.bin"
GFX_Sprite_TurtleWeapon_Pose121End:
GFX_Sprite_TurtleWeapon_Pose122:
	db "GFX_Sprite_TurtleWeapon_Pose122.bin"
GFX_Sprite_TurtleWeapon_Pose122End:
GFX_Sprite_TurtleWeapon_Pose123:
	db "GFX_Sprite_TurtleWeapon_Pose123.bin"
GFX_Sprite_TurtleWeapon_Pose123End:
GFX_Sprite_TurtleWeapon_Pose124:
	db "GFX_Sprite_TurtleWeapon_Pose124.bin"
GFX_Sprite_TurtleWeapon_Pose124End:
GFX_Sprite_TurtleWeapon_Pose125:
	db "GFX_Sprite_TurtleWeapon_Pose125.bin"
GFX_Sprite_TurtleWeapon_Pose125End:
GFX_Sprite_TurtleWeapon_Pose126:
	db "GFX_Sprite_TurtleWeapon_Pose126.bin"
GFX_Sprite_TurtleWeapon_Pose126End:
GFX_Sprite_TurtleWeapon_Pose127:
	db "GFX_Sprite_TurtleWeapon_Pose127.bin"
GFX_Sprite_TurtleWeapon_Pose127End:
GFX_Sprite_TurtleWeapon_Pose128:
	db "GFX_Sprite_TurtleWeapon_Pose128.bin"
GFX_Sprite_TurtleWeapon_Pose128End:
GFX_Sprite_TurtleWeapon_Pose129:
	db "GFX_Sprite_TurtleWeapon_Pose129.bin"
GFX_Sprite_TurtleWeapon_Pose129End:
GFX_Sprite_TurtleWeapon_Pose130:
	db "GFX_Sprite_TurtleWeapon_Pose130.bin"
GFX_Sprite_TurtleWeapon_Pose130End:
GFX_Sprite_TurtleWeapon_Pose131:
	db "GFX_Sprite_TurtleWeapon_Pose131.bin"
GFX_Sprite_TurtleWeapon_Pose131End:
GFX_Sprite_TurtleWeapon_Pose132:
	db "GFX_Sprite_TurtleWeapon_Pose132.bin"
GFX_Sprite_TurtleWeapon_Pose132End:
GFX_Sprite_TurtleWeapon_Pose133:
	db "GFX_Sprite_TurtleWeapon_Pose133.bin"
GFX_Sprite_TurtleWeapon_Pose133End:
GFX_Sprite_TurtleWeapon_Pose134:
	db "GFX_Sprite_TurtleWeapon_Pose134.bin"
GFX_Sprite_TurtleWeapon_Pose134End:
GFX_Sprite_TurtleWeapon_Pose135:
	db "GFX_Sprite_TurtleWeapon_Pose135.bin"
GFX_Sprite_TurtleWeapon_Pose135End:
GFX_Sprite_TurtleWeapon_Pose136:
	db "GFX_Sprite_TurtleWeapon_Pose136.bin"
GFX_Sprite_TurtleWeapon_Pose136End:
GFX_Sprite_TurtleWeapon_Pose137:
	db "GFX_Sprite_TurtleWeapon_Pose137.bin"
GFX_Sprite_TurtleWeapon_Pose137End:
GFX_Sprite_TurtleWeapon_Pose138:
	db "GFX_Sprite_TurtleWeapon_Pose138.bin"
GFX_Sprite_TurtleWeapon_Pose138End:
GFX_Sprite_TurtleWeapon_Pose139:
	db "GFX_Sprite_TurtleWeapon_Pose139.bin"
GFX_Sprite_TurtleWeapon_Pose139End:
GFX_Sprite_TurtleWeapon_Pose140:
	db "GFX_Sprite_TurtleWeapon_Pose140.bin"
GFX_Sprite_TurtleWeapon_Pose140End:
GFX_Sprite_TurtleWeapon_Pose141:
	db "GFX_Sprite_TurtleWeapon_Pose141.bin"
GFX_Sprite_TurtleWeapon_Pose141End:
GFX_Sprite_TurtleWeapon_Pose142:
	db "GFX_Sprite_TurtleWeapon_Pose142.bin"
GFX_Sprite_TurtleWeapon_Pose142End:
GFX_Sprite_TurtleWeapon_Pose143:
	db "GFX_Sprite_TurtleWeapon_Pose143.bin"
GFX_Sprite_TurtleWeapon_Pose143End:
GFX_Sprite_TurtleWeapon_Pose144:
	db "GFX_Sprite_TurtleWeapon_Pose144.bin"
GFX_Sprite_TurtleWeapon_Pose144End:
GFX_Sprite_TurtleWeapon_Pose145:
	db "GFX_Sprite_TurtleWeapon_Pose145.bin"
GFX_Sprite_TurtleWeapon_Pose145End:
GFX_Sprite_TurtleWeapon_Pose146:
	db "GFX_Sprite_TurtleWeapon_Pose146.bin"
GFX_Sprite_TurtleWeapon_Pose146End:
GFX_Sprite_TurtleWeapon_Pose147:
	db "GFX_Sprite_TurtleWeapon_Pose147.bin"
GFX_Sprite_TurtleWeapon_Pose147End:
GFX_Sprite_TurtleWeapon_Pose148:
	db "GFX_Sprite_TurtleWeapon_Pose148.bin"
GFX_Sprite_TurtleWeapon_Pose148End:
GFX_Sprite_TurtleWeapon_Pose149:
	db "GFX_Sprite_TurtleWeapon_Pose149.bin"
GFX_Sprite_TurtleWeapon_Pose149End:
GFX_Sprite_TurtleWeapon_Pose150:
	db "GFX_Sprite_TurtleWeapon_Pose150.bin"
GFX_Sprite_TurtleWeapon_Pose150End:
GFX_Sprite_TurtleWeapon_Pose151:
	db "GFX_Sprite_TurtleWeapon_Pose151.bin"
GFX_Sprite_TurtleWeapon_Pose151End:
GFX_Sprite_TurtleWeapon_Pose152:
	db "GFX_Sprite_TurtleWeapon_Pose152.bin"
GFX_Sprite_TurtleWeapon_Pose152End:
GFX_Sprite_TurtleWeapon_Pose153:
	db "GFX_Sprite_TurtleWeapon_Pose153.bin"
GFX_Sprite_TurtleWeapon_Pose153End:
GFX_Sprite_TurtleWeapon_Pose154:
	db "GFX_Sprite_TurtleWeapon_Pose154.bin"
GFX_Sprite_TurtleWeapon_Pose154End:
GFX_Sprite_TurtleWeapon_Pose155:
	db "GFX_Sprite_TurtleWeapon_Pose155.bin"
GFX_Sprite_TurtleWeapon_Pose155End:
GFX_Sprite_TurtleWeapon_Pose156:
	db "GFX_Sprite_TurtleWeapon_Pose156.bin"
GFX_Sprite_TurtleWeapon_Pose156End:
GFX_Sprite_TurtleWeapon_Pose157:
	db "GFX_Sprite_TurtleWeapon_Pose157.bin"
GFX_Sprite_TurtleWeapon_Pose157End:
GFX_Sprite_TurtleWeapon_Pose158:
	db "GFX_Sprite_TurtleWeapon_Pose158.bin"
GFX_Sprite_TurtleWeapon_Pose158End:
GFX_Sprite_TurtleWeapon_Pose159:
	db "GFX_Sprite_TurtleWeapon_Pose159.bin"
GFX_Sprite_TurtleWeapon_Pose159End:
GFX_Sprite_TurtleWeapon_Pose160:
	db "GFX_Sprite_TurtleWeapon_Pose160.bin"
GFX_Sprite_TurtleWeapon_Pose160End:
GFX_Sprite_TurtleWeapon_Pose161:
	db "GFX_Sprite_TurtleWeapon_Pose161.bin"
GFX_Sprite_TurtleWeapon_Pose161End:
GFX_Sprite_TurtleWeapon_Pose162:
	db "GFX_Sprite_TurtleWeapon_Pose162.bin"
GFX_Sprite_TurtleWeapon_Pose162End:
GFX_Sprite_TurtleWeapon_Pose163:
	db "GFX_Sprite_TurtleWeapon_Pose163.bin"
GFX_Sprite_TurtleWeapon_Pose163End:
GFX_Sprite_TurtleWeapon_Pose164:
	db "GFX_Sprite_TurtleWeapon_Pose164.bin"
GFX_Sprite_TurtleWeapon_Pose164End:
GFX_Sprite_TurtleWeapon_Pose165:
	db "GFX_Sprite_TurtleWeapon_Pose165.bin"
GFX_Sprite_TurtleWeapon_Pose165End:
GFX_Sprite_TurtleWeapon_Pose166:
	db "GFX_Sprite_TurtleWeapon_Pose166.bin"
GFX_Sprite_TurtleWeapon_Pose166End:
GFX_Sprite_TurtleWeapon_Pose167:
	db "GFX_Sprite_TurtleWeapon_Pose167.bin"
GFX_Sprite_TurtleWeapon_Pose167End:
GFX_Sprite_TurtleWeapon_Pose168:
	db "GFX_Sprite_TurtleWeapon_Pose168.bin"
GFX_Sprite_TurtleWeapon_Pose168End:
GFX_Sprite_TurtleWeapon_Pose169:
	db "GFX_Sprite_TurtleWeapon_Pose169.bin"
GFX_Sprite_TurtleWeapon_Pose169End:
GFX_Sprite_TurtleWeapon_Pose170:
	db "GFX_Sprite_TurtleWeapon_Pose170.bin"
GFX_Sprite_TurtleWeapon_Pose170End:
GFX_Sprite_TurtleWeapon_Pose171:
	db "GFX_Sprite_TurtleWeapon_Pose171.bin"
GFX_Sprite_TurtleWeapon_Pose171End:
GFX_Sprite_TurtleWeapon_Pose172:
	db "GFX_Sprite_TurtleWeapon_Pose172.bin"
GFX_Sprite_TurtleWeapon_Pose172End:
GFX_Sprite_TurtleWeapon_Pose173:
	db "GFX_Sprite_TurtleWeapon_Pose173.bin"
GFX_Sprite_TurtleWeapon_Pose173End:
GFX_Sprite_TurtleWeapon_Pose174:
	db "GFX_Sprite_TurtleWeapon_Pose174.bin"
GFX_Sprite_TurtleWeapon_Pose174End:
GFX_Sprite_TurtleWeapon_Pose175:
	db "GFX_Sprite_TurtleWeapon_Pose175.bin"
GFX_Sprite_TurtleWeapon_Pose175End:
GFX_Sprite_TurtleWeapon_Pose176:
	db "GFX_Sprite_TurtleWeapon_Pose176.bin"
GFX_Sprite_TurtleWeapon_Pose176End:
GFX_Sprite_TurtleWeapon_Pose177:
	db "GFX_Sprite_TurtleWeapon_Pose177.bin"
GFX_Sprite_TurtleWeapon_Pose177End:
GFX_Sprite_TurtleWeapon_Pose178:
	db "GFX_Sprite_TurtleWeapon_Pose178.bin"
GFX_Sprite_TurtleWeapon_Pose178End:
GFX_Sprite_TurtleWeapon_Pose179:
	db "GFX_Sprite_TurtleWeapon_Pose179.bin"
GFX_Sprite_TurtleWeapon_Pose179End:
GFX_Sprite_TurtleWeapon_Pose180:
	db "GFX_Sprite_TurtleWeapon_Pose180.bin"
GFX_Sprite_TurtleWeapon_Pose180End:
GFX_Sprite_TurtleWeapon_Pose181:
	db "GFX_Sprite_TurtleWeapon_Pose181.bin"
GFX_Sprite_TurtleWeapon_Pose181End:
GFX_Sprite_TurtleWeapon_Pose182:
	db "GFX_Sprite_TurtleWeapon_Pose182.bin"
GFX_Sprite_TurtleWeapon_Pose182End:
GFX_Sprite_TurtleWeapon_Pose183:
	db "GFX_Sprite_TurtleWeapon_Pose183.bin"
GFX_Sprite_TurtleWeapon_Pose183End:
GFX_Sprite_TurtleWeapon_Pose184:
	db "GFX_Sprite_TurtleWeapon_Pose184.bin"
GFX_Sprite_TurtleWeapon_Pose184End:
GFX_Sprite_TurtleWeapon_Pose185:
	db "GFX_Sprite_TurtleWeapon_Pose185.bin"
GFX_Sprite_TurtleWeapon_Pose185End:
GFX_Sprite_TurtleWeapon_Pose186:
	db "GFX_Sprite_TurtleWeapon_Pose186.bin"
GFX_Sprite_TurtleWeapon_Pose186End:
GFX_Sprite_TurtleWeapon_Pose187:
	db "GFX_Sprite_TurtleWeapon_Pose187.bin"
GFX_Sprite_TurtleWeapon_Pose187End:
GFX_Sprite_TurtleWeapon_Pose188:
	db "GFX_Sprite_TurtleWeapon_Pose188.bin"
GFX_Sprite_TurtleWeapon_Pose188End:
GFX_Sprite_TurtleWeapon_Pose189:
	db "GFX_Sprite_TurtleWeapon_Pose189.bin"
GFX_Sprite_TurtleWeapon_Pose189End:
GFX_Sprite_TurtleWeapon_Pose190:
	db "GFX_Sprite_TurtleWeapon_Pose190.bin"
GFX_Sprite_TurtleWeapon_Pose190End:
GFX_Sprite_TurtleWeapon_Pose191:
	db "GFX_Sprite_TurtleWeapon_Pose191.bin"
GFX_Sprite_TurtleWeapon_Pose191End:
GFX_Sprite_TurtleWeapon_Pose192:
	db "GFX_Sprite_TurtleWeapon_Pose192.bin"
GFX_Sprite_TurtleWeapon_Pose192End:
GFX_Sprite_TurtleWeapon_Pose193:
	db "GFX_Sprite_TurtleWeapon_Pose193.bin"
GFX_Sprite_TurtleWeapon_Pose193End:
GFX_Sprite_TurtleWeapon_Pose194:
	db "GFX_Sprite_TurtleWeapon_Pose194.bin"
GFX_Sprite_TurtleWeapon_Pose194End:
GFX_Sprite_TurtleWeapon_Pose195:
	db "GFX_Sprite_TurtleWeapon_Pose195.bin"
GFX_Sprite_TurtleWeapon_Pose195End:
GFX_Sprite_TurtleWeapon_Pose196:
	db "GFX_Sprite_TurtleWeapon_Pose196.bin"
GFX_Sprite_TurtleWeapon_Pose196End:
GFX_Sprite_TurtleWeapon_Pose197:
	db "GFX_Sprite_TurtleWeapon_Pose197.bin"
GFX_Sprite_TurtleWeapon_Pose197End:
GFX_Sprite_TurtleWeapon_Pose198:
	db "GFX_Sprite_TurtleWeapon_Pose198.bin"
GFX_Sprite_TurtleWeapon_Pose198End:
GFX_Sprite_TurtleWeapon_Pose199:
	db "GFX_Sprite_TurtleWeapon_Pose199.bin"
GFX_Sprite_TurtleWeapon_Pose199End:
GFX_Sprite_TurtleWeapon_Pose200:
	db "GFX_Sprite_TurtleWeapon_Pose200.bin"
GFX_Sprite_TurtleWeapon_Pose200End:
GFX_Sprite_TurtleWeapon_Pose201:
	db "GFX_Sprite_TurtleWeapon_Pose201.bin"
GFX_Sprite_TurtleWeapon_Pose201End:
GFX_Sprite_Turtle_ThrowEnemyTowardsScreen1:
	db "GFX_Sprite_Turtle_ThrowEnemyTowardsScreen1.bin"
GFX_Sprite_Turtle_ThrowEnemyTowardsScreen1End:
GFX_Sprite_Turtle_ThrowEnemyTowardsScreen2:
	db "GFX_Sprite_Turtle_ThrowEnemyTowardsScreen2.bin"
GFX_Sprite_Turtle_ThrowEnemyTowardsScreen2End:
GFX_Sprite_TurtleWeapon_Pose202:
	db "GFX_Sprite_TurtleWeapon_Pose202.bin"
GFX_Sprite_TurtleWeapon_Pose202End:
GFX_Sprite_TurtleWeapon_Pose203:
	db "GFX_Sprite_TurtleWeapon_Pose203.bin"
GFX_Sprite_TurtleWeapon_Pose203End:
GFX_Sprite_TurtleWeapon_Pose204:
	db "GFX_Sprite_TurtleWeapon_Pose204.bin"
GFX_Sprite_TurtleWeapon_Pose204End:
GFX_Sprite_TurtleWeapon_Pose205:
	db "GFX_Sprite_TurtleWeapon_Pose205.bin"
GFX_Sprite_TurtleWeapon_Pose205End:
GFX_Sprite_TurtleWeapon_Pose206:
	db "GFX_Sprite_TurtleWeapon_Pose206.bin"
GFX_Sprite_TurtleWeapon_Pose206End:
GFX_Sprite_TurtleWeapon_Pose207:
	db "GFX_Sprite_TurtleWeapon_Pose207.bin"
GFX_Sprite_TurtleWeapon_Pose207End:
GFX_Sprite_TurtleWeapon_Pose208:
	db "GFX_Sprite_TurtleWeapon_Pose208.bin"
GFX_Sprite_TurtleWeapon_Pose208End:
GFX_Sprite_TurtleWeapon_Pose209:
	db "GFX_Sprite_TurtleWeapon_Pose209.bin"
GFX_Sprite_TurtleWeapon_Pose209End:
GFX_Sprite_Turtle_SlamEnemyIntoGround1:
	db "GFX_Sprite_Turtle_SlamEnemyIntoGround1.bin"
GFX_Sprite_Turtle_SlamEnemyIntoGround1End:
GFX_Sprite_Turtle_SlamEnemyIntoGround2:
	db "GFX_Sprite_Turtle_SlamEnemyIntoGround2.bin"
GFX_Sprite_Turtle_SlamEnemyIntoGround2End:
GFX_Sprite_Turtle_VictoryPoses:
	db "GFX_Sprite_Turtle_VictoryPoses.bin"
GFX_Sprite_Turtle_VictoryPosesEnd:
GFX_Sprite_Leonardo_Stand:
	db "GFX_Sprite_Leonardo_Stand.bin"
GFX_Sprite_Leonardo_StandEnd:
GFX_Sprite_Leonardo_1stStandingAttack1:
	db "GFX_Sprite_Leonardo_1stStandingAttack1.bin"
GFX_Sprite_Leonardo_1stStandingAttack1End:
GFX_Sprite_Leonardo_1stStandingAttack2:
	db "GFX_Sprite_Leonardo_1stStandingAttack2.bin"
GFX_Sprite_Leonardo_1stStandingAttack2End:
GFX_Sprite_Leonardo_2ndStandingAttack1:
	db "GFX_Sprite_Leonardo_2ndStandingAttack1.bin"
GFX_Sprite_Leonardo_2ndStandingAttack1End:
GFX_Sprite_Leonardo_2ndStandingAttack2:
	db "GFX_Sprite_Leonardo_2ndStandingAttack2.bin"
GFX_Sprite_Leonardo_2ndStandingAttack2End:
GFX_Sprite_Leonardo_3rdStandingAttack1:
	db "GFX_Sprite_Leonardo_3rdStandingAttack1.bin"
GFX_Sprite_Leonardo_3rdStandingAttack1End:
GFX_Sprite_Leonardo_BackAttack1:
	db "GFX_Sprite_Leonardo_BackAttack1.bin"
GFX_Sprite_Leonardo_BackAttack1End:
GFX_Sprite_Leonardo_BackAttack2:
	db "GFX_Sprite_Leonardo_BackAttack2.bin"
GFX_Sprite_Leonardo_BackAttack2End:
GFX_Sprite_Leonardo_EndOfSpinAttack:
	db "GFX_Sprite_Leonardo_EndOfSpinAttack.bin"
GFX_Sprite_Leonardo_EndOfSpinAttackEnd:
GFX_Sprite_Turtle_BeginThrowEnemy1:
	db "GFX_Sprite_Turtle_BeginThrowEnemy1.bin"
GFX_Sprite_Turtle_BeginThrowEnemy1End:
GFX_Sprite_Michaelangelo_1stStandingAttack1:
	db "GFX_Sprite_Michaelangelo_1stStandingAttack1.bin"
GFX_Sprite_Michaelangelo_1stStandingAttack1End:
GFX_Sprite_Michaelangelo_1stStandingAttack2:
	db "GFX_Sprite_Michaelangelo_1stStandingAttack2.bin"
GFX_Sprite_Michaelangelo_1stStandingAttack2End:
GFX_Sprite_Michaelangelo_2ndStandingAttack1:
	db "GFX_Sprite_Michaelangelo_2ndStandingAttack1.bin"
GFX_Sprite_Michaelangelo_2ndStandingAttack1End:
GFX_Sprite_Michaelangelo_2ndStandingAttack2:
	db "GFX_Sprite_Michaelangelo_2ndStandingAttack2.bin"
GFX_Sprite_Michaelangelo_2ndStandingAttack2End:
GFX_Sprite_Michaelangelo_3rdStandingAttack1:
	db "GFX_Sprite_Michaelangelo_3rdStandingAttack1.bin"
GFX_Sprite_Michaelangelo_3rdStandingAttack1End:
GFX_Sprite_Turtle_Hurt_HandBitten:
	db "GFX_Sprite_Turtle_Hurt_HandBitten.bin"
GFX_Sprite_Turtle_Hurt_HandBittenEnd:
GFX_Sprite_Michaelangelo_BackAttack1:
	db "GFX_Sprite_Michaelangelo_BackAttack1.bin"
GFX_Sprite_Michaelangelo_BackAttack1End:
GFX_Sprite_Michaelangelo_BackAttack2:
	db "GFX_Sprite_Michaelangelo_BackAttack2.bin"
GFX_Sprite_Michaelangelo_BackAttack2End:
GFX_Sprite_Michaelangelo_JumpSwingAttack2:
	db "GFX_Sprite_Michaelangelo_JumpSwingAttack2.bin"
GFX_Sprite_Michaelangelo_JumpSwingAttack2End:
GFX_Sprite_Raphael_RoundhouseKick3:
	db "GFX_Sprite_Raphael_RoundhouseKick3.bin"
GFX_Sprite_Raphael_RoundhouseKick3End:
GFX_Sprite_CreepyCaveSpeechBubble:
	db "GFX_Sprite_CreepyCaveSpeechBubble.bin"
GFX_Sprite_CreepyCaveSpeechBubbleEnd:
GFX_Sprite_Michaelangelo_JumpSwingAttack1:
	db "GFX_Sprite_Michaelangelo_JumpSwingAttack1.bin"
GFX_Sprite_Michaelangelo_JumpSwingAttack1End:
GFX_Sprite_Donatello_1stStandingAttack1:
	db "GFX_Sprite_Donatello_1stStandingAttack1.bin"
GFX_Sprite_Donatello_1stStandingAttack1End:
GFX_Sprite_Donatello_1stStandingAttack2:
	db "GFX_Sprite_Donatello_1stStandingAttack2.bin"
GFX_Sprite_Donatello_1stStandingAttack2End:
GFX_Sprite_Donatello_2ndStandingAttack1:
	db "GFX_Sprite_Donatello_2ndStandingAttack1.bin"
GFX_Sprite_Donatello_2ndStandingAttack1End:
GFX_Sprite_Donatello_2ndStandingAttack2:
	db "GFX_Sprite_Donatello_2ndStandingAttack2.bin"
GFX_Sprite_Donatello_2ndStandingAttack2End:
GFX_Sprite_Donatello_Stand:
	db "GFX_Sprite_Donatello_Stand.bin"
GFX_Sprite_Donatello_StandEnd:
GFX_Sprite_Donatello_3rdStandingAttack1:
	db "GFX_Sprite_Donatello_3rdStandingAttack1.bin"
GFX_Sprite_Donatello_3rdStandingAttack1End:
GFX_Sprite_Donatello_3rdStandingAttack2:
	db "GFX_Sprite_Donatello_3rdStandingAttack2.bin"
GFX_Sprite_Donatello_3rdStandingAttack2End:
GFX_Sprite_Donatello_PoleVaultStrike1:
	db "GFX_Sprite_Donatello_PoleVaultStrike1.bin"
GFX_Sprite_Donatello_PoleVaultStrike1End:
GFX_Sprite_Donatello_PoleVaultStrike2:
	db "GFX_Sprite_Donatello_PoleVaultStrike2.bin"
GFX_Sprite_Donatello_PoleVaultStrike2End:
GFX_Sprite_Donatello_4thStandingAttack1:
	db "GFX_Sprite_Donatello_4thStandingAttack1.bin"
GFX_Sprite_Donatello_4thStandingAttack1End:
GFX_Sprite_Donatello_4thStandingAttack2:
	db "GFX_Sprite_Donatello_4thStandingAttack2.bin"
GFX_Sprite_Donatello_4thStandingAttack2End:
GFX_Sprite_Raphael_Stand:
	db "GFX_Sprite_Raphael_Stand.bin"
GFX_Sprite_Raphael_StandEnd:
GFX_Sprite_Raphael_1stStandingAttack1:
	db "GFX_Sprite_Raphael_1stStandingAttack1.bin"
GFX_Sprite_Raphael_1stStandingAttack1End:
GFX_Sprite_Raphael_1stStandingAttack2:
	db "GFX_Sprite_Raphael_1stStandingAttack2.bin"
GFX_Sprite_Raphael_1stStandingAttack2End:
GFX_Sprite_Raphael_2ndStandingAttack1:
	db "GFX_Sprite_Raphael_2ndStandingAttack1.bin"
GFX_Sprite_Raphael_2ndStandingAttack1End:
GFX_Sprite_Raphael_3rdStandingAttack2:
	db "GFX_Sprite_Raphael_3rdStandingAttack2.bin"
GFX_Sprite_Raphael_3rdStandingAttack2End:
GFX_Sprite_Raphael_3rdStandingAttack1:
	db "GFX_Sprite_Raphael_3rdStandingAttack1.bin"
GFX_Sprite_Raphael_3rdStandingAttack1End:
GFX_Sprite_Raphael_2ndStandingAttack2:
	db "GFX_Sprite_Raphael_2ndStandingAttack2.bin"
GFX_Sprite_Raphael_2ndStandingAttack2End:
GFX_Sprite_Raphael_BackAttack1:
	db "GFX_Sprite_Raphael_BackAttack1.bin"
GFX_Sprite_Raphael_BackAttack1End:
GFX_Sprite_Raphael_BackAttack2:
	db "GFX_Sprite_Raphael_BackAttack2.bin"
GFX_Sprite_Raphael_BackAttack2End:
GFX_Sprite_Raphael_RoundhouseKick1:
	db "GFX_Sprite_Raphael_RoundhouseKick1.bin"
GFX_Sprite_Raphael_RoundhouseKick1End:
GFX_Sprite_Raphael_RoundhouseKick2:
	db "GFX_Sprite_Raphael_RoundhouseKick2.bin"
GFX_Sprite_Raphael_RoundhouseKick2End:
GFX_Sprite_Raphael_RoundhouseKick4:
	db "GFX_Sprite_Raphael_RoundhouseKick4.bin"
GFX_Sprite_Raphael_RoundhouseKick4End:
GFX_Sprite_Turtle_RollThrow1:
	db "GFX_Sprite_Turtle_RollThrow1.bin"
GFX_Sprite_Turtle_RollThrow1End:
GFX_Sprite_Turtle_RollThrow2:
	db "GFX_Sprite_Turtle_RollThrow2.bin"
GFX_Sprite_Turtle_RollThrow2End:
GFX_Sprite_TurtleWeapon_Pose210:
	db "GFX_Sprite_TurtleWeapon_Pose210.bin"
GFX_Sprite_TurtleWeapon_Pose210End:
GFX_Sprite_Turtle_Blocking:
	db "GFX_Sprite_Turtle_Blocking.bin"
GFX_Sprite_Turtle_BlockingEnd:
GFX_Sprite_TurtleWeapon_Pose211:
	db "GFX_Sprite_TurtleWeapon_Pose211.bin"
GFX_Sprite_TurtleWeapon_Pose211End:
GFX_Sprite_TurtleWeapon_Pose212:
	db "GFX_Sprite_TurtleWeapon_Pose212.bin"
GFX_Sprite_TurtleWeapon_Pose212End:
GFX_Sprite_TurtleWeapon_Pose213:
	db "GFX_Sprite_TurtleWeapon_Pose213.bin"
GFX_Sprite_TurtleWeapon_Pose213End:

;--------------------------------------------------------------------

TM_Layer1_TechnodromeTheFinalShellShock:
	db "TM_Layer1_TechnodromeTheFinalShellShock.bin"
TM_Layer1_TechnodromeTheFinalShellShockEnd:
TM_Layer2_TechnodromeTheFinalShellShock:
	db "TM_Layer2_TechnodromeTheFinalShellShock.bin"
TM_Layer2_TechnodromeTheFinalShellShockEnd:
TM_Layer3_TimeTrialCharacterSelectScreen_StatusBar:
	db "TM_Layer3_TimeTrialCharacterSelectScreen_StatusBar.bin"
TM_Layer3_TimeTrialCharacterSelectScreen_StatusBarEnd:
TM_Layer2_NeonNightRiders_LeftHalf:
	db "TM_Layer2_NeonNightRiders_LeftHalf.bin"
TM_Layer2_NeonNightRiders_LeftHalfEnd:
TM_Layer2_NeonNightRiders_RightHalf:
	db "TM_Layer2_NeonNightRiders_RightHalf.bin"
TM_Layer2_NeonNightRiders_RightHalfEnd:
TM_Layer1_TurtlesWatchTVScene:
	db "TM_Layer1_TurtlesWatchTVScene.bin"
TM_Layer1_TurtlesWatchTVSceneEnd:
TM_Layer2_CreditsScene:
	db "TM_Layer2_CreditsScene.bin"
TM_Layer2_CreditsSceneEnd:
TM_Layer1_EndScreen:
	db "TM_Layer1_EndScreen.bin"
TM_Layer1_EndScreenEnd:
TM_Layer3_OptionsScreen_StatusBar:
	db "TM_Layer3_OptionsScreen_StatusBar.bin"
TM_Layer3_OptionsScreen_StatusBarEnd:
TM_Layer3_CreditsScene:
	db "TM_Layer3_CreditsScene.bin"
TM_Layer3_CreditsSceneEnd:
TM_Layer1_CreditsScene:
	db "TM_Layer1_CreditsScene.bin"
TM_Layer1_CreditsSceneEnd:
TM_Mode7_TimeWarpScene_Icons:
	db "TM_Mode7_TimeWarpScene_Icons.bin"
TM_Mode7_TimeWarpScene_IconsEnd:
TM_Layer2_TurtlesWatchTVScene:
	db "TM_Layer2_TurtlesWatchTVScene.bin"
TM_Layer2_TurtlesWatchTVSceneEnd:
TM_Layer2_KonamiLogoScreen:
	db "TM_Layer2_KonamiLogoScreen.bin"
TM_Layer2_KonamiLogoScreenEnd:
TM_Layer3_VersusModeCharacterSelectScreen_StatusBar:
	db "TM_Layer3_VersusModeCharacterSelectScreen_StatusBar.bin"
TM_Layer3_VersusModeCharacterSelectScreen_StatusBarEnd:
TM_Layer1_CharacterSelectScreen:
	db "TM_Layer1_CharacterSelectScreen.bin"
TM_Layer1_CharacterSelectScreenEnd:
TM_Layer1_KonamiLogoScreen_BottomHalf:
	db "TM_Layer1_KonamiLogoScreen_BottomHalf.bin"
TM_Layer1_KonamiLogoScreen_BottomHalfEnd:
TM_Layer3_TimeTrialScreen_StatusBar:
	db "TM_Layer3_TimeTrialScreen_StatusBar.bin"
TM_Layer3_TimeTrialScreen_StatusBarEnd:
TM_Layer1_KonamiLogoScreen_TopHalf:
	db "TM_Layer1_KonamiLogoScreen_TopHalf.bin"
TM_Layer1_KonamiLogoScreen_TopHalfEnd:
TM_Mode7_TurtlesWatchTVScene:
	db "TM_Mode7_TurtlesWatchTVScene.bin"
TM_Mode7_TurtlesWatchTVSceneEnd:
TM_Layer2_TitleScreen_LeftHalf:
if !ROMVer&(!TMNTIV_E) != $00
	db "TM_Layer2_TitleScreen_LeftHalf_TMNTIV_E.bin"
else
	db "TM_Layer2_TitleScreen_LeftHalf_TMNTIV_U.bin"
endif
TM_Layer2_TitleScreen_LeftHalfEnd:
TM_Layer2_TitleScreen_RightHalf:
	db "TM_Layer2_TitleScreen_RightHalf.bin"
TM_Layer2_TitleScreen_RightHalfEnd:
TM_Layer2_ContinueScreen_LeftHalf:
	db "TM_Layer2_ContinueScreen_LeftHalf.bin"
TM_Layer2_ContinueScreen_LeftHalfEnd:
TM_Layer2_VersusModeArena:
	db "TM_Layer2_VersusModeArena.bin"
TM_Layer2_VersusModeArenaEnd:
TM_Layer2_BigApple3AM:
	db "TM_Layer2_BigApple3AM.bin"
TM_Layer2_BigApple3AMEnd:
TM_Layer1_BigApple3AM:
	db "TM_Layer1_BigApple3AM.bin"
TM_Layer1_BigApple3AMEnd:
TM_Layer3_BackgroundKrang:
	db "TM_Layer3_BackgroundKrang.bin"
TM_Layer3_BackgroundKrangEnd:
TM_Layer1_AlleycatBlues:
	db "TM_Layer1_AlleycatBlues.bin"
TM_Layer1_AlleycatBluesEnd:
TM_Layer2_AlleycatBlues:
	db "TM_Layer2_AlleycatBlues.bin"
TM_Layer2_AlleycatBluesEnd:
TM_Layer2_SewerSurfin_CeilingSpikes:
	db "TM_Layer2_SewerSurfin_CeilingSpikes.bin"
TM_Layer2_SewerSurfin_CeilingSpikesEnd:
TM_Layer1_SewerSurfin:
	db "TM_Layer1_SewerSurfin.bin"
TM_Layer1_SewerSurfinEnd:
TM_Layer2_RatKingsBoat:
	db "TM_Layer2_RatKingsBoat.bin"
TM_Layer2_RatKingsBoatEnd:
TM_Layer1_TechnodromeLetsKickShell_FirstSection:
	db "TM_Layer1_TechnodromeLetsKickShell_FirstSection.bin"
TM_Layer1_TechnodromeLetsKickShell_FirstSectionEnd:
TM_Layer2_TechnodromeLetsKickShell_FirstSection:
	db "TM_Layer2_TechnodromeLetsKickShell_FirstSection.bin"
TM_Layer2_TechnodromeLetsKickShell_FirstSectionEnd:
TM_Layer1_TechnodromeLetsKickShell_ElevatorSection:
	db "TM_Layer1_TechnodromeLetsKickShell_ElevatorSection.bin"
TM_Layer1_TechnodromeLetsKickShell_ElevatorSectionEnd:
TM_Layer2_TechnodromeLetsKickShell_ElevatorSection:
	db "TM_Layer2_TechnodromeLetsKickShell_ElevatorSection.bin"
TM_Layer2_TechnodromeLetsKickShell_ElevatorSectionEnd:
TM_Layer2_TechnodromeLetsKickShell_ShredderFight:
	db "TM_Layer2_TechnodromeLetsKickShell_ShredderFight.bin"
TM_Layer2_TechnodromeLetsKickShell_ShredderFightEnd:
TM_Layer1_TechnodromeLetsKickShell_ShredderFight:
	db "TM_Layer1_TechnodromeLetsKickShell_ShredderFight.bin"
TM_Layer1_TechnodromeLetsKickShell_ShredderFightEnd:
TM_Layer1_SkullAndCrossbones:
	db "TM_Layer1_SkullAndCrossbones.bin"
TM_Layer1_SkullAndCrossbonesEnd:
TM_Layer1_BuryMyShellAtWoundedKnee:
	db "TM_Layer1_BuryMyShellAtWoundedKnee.bin"
TM_Layer1_BuryMyShellAtWoundedKneeEnd:
TM_Layer2_BuryMyShellAtWoundedKnee:
	db "TM_Layer2_BuryMyShellAtWoundedKnee.bin"
TM_Layer2_BuryMyShellAtWoundedKneeEnd:
TM_Layer1_PrehistoricTurtlesauras:
	db "TM_Layer1_PrehistoricTurtlesauras.bin"
TM_Layer1_PrehistoricTurtlesaurasEnd:
TM_Layer2_PrehistoricTurtlesauras:
	db "TM_Layer2_PrehistoricTurtlesauras.bin"
TM_Layer2_PrehistoricTurtlesaurasEnd:
TM_Layer1_StarbaseWhereNoTurtleHasGoneBefore:
	db "TM_Layer1_StarbaseWhereNoTurtleHasGoneBefore.bin"
TM_Layer1_StarbaseWhereNoTurtleHasGoneBeforeEnd:
TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_LeftHalf:
	db "TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_LeftHalf.bin"
TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_LeftHalfEnd:
TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_RightHalf:
	db "TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_RightHalf.bin"
TM_Layer2_StarbaseWhereNoTurtleHasGoneBefore_RightHalfEnd:
TM_FGBG_LevelStatusBar:
	db "TM_FGBG_LevelStatusBar.bin"
TM_FGBG_LevelStatusBarEnd:
TM_Layer3_Unknown1:
	db "TM_Layer3_Unknown1.bin"
TM_Layer3_Unknown1End:
TM_Layer1_GameOverScreen:
	db "TM_Layer1_GameOverScreen.bin"
TM_Layer1_GameOverScreenEnd:
TM_Layer2_SkullAndCrossbones:
	db "TM_Layer2_SkullAndCrossbones.bin"
TM_Layer2_SkullAndCrossbonesEnd:
TM_Layer1_VersusModeArena:
	db "TM_Layer1_VersusModeArena.bin"
TM_Layer1_VersusModeArenaEnd:
TM_Layer1_OptionsScreen_LeftHalf:
	db "TM_Layer1_OptionsScreen_LeftHalf.bin"
TM_Layer1_OptionsScreen_LeftHalfEnd:
TM_Layer1_OptionsScreen_RightHalf:
	db "TM_Layer1_OptionsScreen_RightHalf.bin"
TM_Layer1_OptionsScreen_RightHalfEnd:
TM_Layer2_KrangsUFO_Normal:
	db "TM_Layer2_KrangsUFO_Normal.bin"
TM_Layer2_KrangsUFO_NormalEnd:
TM_Layer2_KrangsUFO_Tilted:
	db "TM_Layer2_KrangsUFO_Tilted.bin"
TM_Layer2_KrangsUFO_TiltedEnd:
TM_Layer2_ContinueScreen_RightHalf:
	db "TM_Layer2_ContinueScreen_RightHalf.bin"
TM_Layer2_ContinueScreen_RightHalfEnd:
TM_Mode7_TimeWarpScene_Turtle:
	db "TM_Mode7_TimeWarpScene_Turtle.bin"
TM_Mode7_TimeWarpScene_TurtleEnd:
TM_Layer3_TurtlesWatchTVScene_SpeechBubbles:
	db "TM_Layer3_TurtlesWatchTVScene_SpeechBubbles.bin"
TM_Layer3_TurtlesWatchTVScene_SpeechBubblesEnd:
TM_Layer3_EveningNewsScreen:
	db "TM_Layer3_EveningNewsScreen.bin"
TM_Layer3_EveningNewsScreenEnd:
TM_Mode7_IntroCutscene_TurtlePoses:
	db "TM_Mode7_IntroCutscene_TurtlePoses.bin"
TM_Mode7_IntroCutscene_TurtlePosesEnd:
TM_Layer3_IntroCutscene_SewerLight:
	db "TM_Layer3_IntroCutscene_SewerLight.bin"
TM_Layer3_IntroCutscene_SewerLightEnd:
TM_Layer1_IntroCutscene_CityScene:
	db "TM_Layer1_IntroCutscene_CityScene.bin"
TM_Layer1_IntroCutscene_CitySceneEnd:
TM_Layer2_IntroCutscene_CityScene:
	db "TM_Layer2_IntroCutscene_CityScene.bin"
TM_Layer2_IntroCutscene_CitySceneEnd:
TM_Layer1_IntroCutscene_ScreenTearEffect:
	db "TM_Layer1_IntroCutscene_ScreenTearEffect.bin"
TM_Layer1_IntroCutscene_ScreenTearEffectEnd:
TM_Layer1_EveningNewsScreen:
	db "TM_Layer1_EveningNewsScreen.bin"
TM_Layer1_EveningNewsScreenEnd:
TM_Layer2_EveningNewsScreen:
	db "TM_Layer2_EveningNewsScreen.bin"
TM_Layer2_EveningNewsScreenEnd:
TM_Layer3_TechnodromeTheFinalShellShock:
	db "TM_Layer3_TechnodromeTheFinalShellShock.bin"
TM_Layer3_TechnodromeTheFinalShellShockEnd:
TM_Layer2_TechnodromeAppearsScene:
	db "TM_Layer2_TechnodromeAppearsScene.bin"
TM_Layer2_TechnodromeAppearsSceneEnd:
TM_Layer1_TechnodromeAppearsScene:
	db "TM_Layer1_TechnodromeAppearsScene.bin"
TM_Layer1_TechnodromeAppearsSceneEnd:
TM_Layer2_StatueOfLibertyReturnedScene1:
	db "TM_Layer2_StatueOfLibertyReturnedScene1.bin"
TM_Layer2_StatueOfLibertyReturnedScene1End:
TM_Layer3_CopyrightScreen:
if !ROMVer&(!TMNTIV_E) != $00
	db "TM_Layer3_CopyrightScreen_TMNTIV_E.bin"
else
	db "TM_Layer3_CopyrightScreen_TMNTIV_U.bin"
endif
TM_Layer3_CopyrightScreenEnd:

;--------------------------------------------------------------------

MAP32_Layer2_KrangsUFO_Tiles:
	db "MAP32_Layer2_KrangsUFO_Tiles.bin"
MAP32_Layer2_KrangsUFO_TilesEnd:
MAP32_Layer2_KrangsUFO_Properties:
	db "MAP32_Layer2_KrangsUFO_Properties.bin"
MAP32_Layer2_KrangsUFO_PropertiesEnd:
MAP32_Layer2_CreditsScene_Tiles:
	db "MAP32_Layer2_CreditsScene_Tiles.bin"
MAP32_Layer2_CreditsScene_TilesEnd:
MAP32_Layer2_CreditsScene_Properties:
	db "MAP32_Layer2_CreditsScene_Properties.bin"
MAP32_Layer2_CreditsScene_PropertiesEnd:
MAP32_UnknownStarbaseMap32Tiles_Tiles:
	db "MAP32_UnknownStarbaseMap32Tiles_Tiles.bin"
MAP32_UnknownStarbaseMap32Tiles_TilesEnd:
MAP32_UnknownStarbaseMap32Tiles_Properties:
	db "MAP32_UnknownStarbaseMap32Tiles_Properties.bin"
MAP32_UnknownStarbaseMap32Tiles_PropertiesEnd:
MAP32_Layer1_CreditsScene_Tiles:
	db "MAP32_Layer1_CreditsScene_Tiles.bin"
MAP32_Layer1_CreditsScene_TilesEnd:
MAP32_Layer1_CreditsScene_Properties:
	db "MAP32_Layer1_CreditsScene_Properties.bin"
MAP32_Layer1_CreditsScene_PropertiesEnd:
MAP32_Layer3_ContinueScreen_Tiles:
	db "MAP32_Layer3_ContinueScreen_Tiles.bin"
MAP32_Layer3_ContinueScreen_TilesEnd:
MAP32_Layer3_ContinueScreen_Properties:
	db "MAP32_Layer3_ContinueScreen_Properties.bin"
MAP32_Layer3_ContinueScreen_PropertiesEnd:
MAP32_Layer2_BigApple3AM_Tiles:
	db "MAP32_Layer2_BigApple3AM_Tiles.bin"
MAP32_Layer2_BigApple3AM_TilesEnd:
MAP32_Layer2_BigApple3AM_Properties:
	db "MAP32_Layer2_BigApple3AM_Properties.bin"
MAP32_Layer2_BigApple3AM_PropertiesEnd:
MAP32_Layer1_BigApple3AM_Tiles:
	db "MAP32_Layer1_BigApple3AM_Tiles.bin"
MAP32_Layer1_BigApple3AM_TilesEnd:
MAP32_Layer1_BigApple3AM_Properties:
	db "MAP32_Layer1_BigApple3AM_Properties.bin"
MAP32_Layer1_BigApple3AM_PropertiesEnd:
MAP32_Layer3_BackgroundKrang_Tiles:
	db "MAP32_Layer3_BackgroundKrang_Tiles.bin"
MAP32_Layer3_BackgroundKrang_TilesEnd:
MAP32_Layer3_BackgroundKrang_Properties:
	db "MAP32_Layer3_BackgroundKrang_Properties.bin"
MAP32_Layer3_BackgroundKrang_PropertiesEnd:
MAP32_Layer1_AlleycatBlues_Tiles:
	db "MAP32_Layer1_AlleycatBlues_Tiles.bin"
MAP32_Layer1_AlleycatBlues_TilesEnd:
MAP32_Layer1_AlleycatBlues_Properties:
	db "MAP32_Layer1_AlleycatBlues_Properties.bin"
MAP32_Layer1_AlleycatBlues_PropertiesEnd:
MAP32_Layer2_AlleycatBlues_Tiles:
	db "MAP32_Layer2_AlleycatBlues_Tiles.bin"
MAP32_Layer2_AlleycatBlues_TilesEnd:
MAP32_Layer2_AlleycatBlues_Properties:
	db "MAP32_Layer2_AlleycatBlues_Properties.bin"
MAP32_Layer2_AlleycatBlues_PropertiesEnd:
MAP32_Layer1_SewerSurfin_Tiles:
	db "MAP32_Layer1_SewerSurfin_Tiles.bin"
MAP32_Layer1_SewerSurfin_TilesEnd:
MAP32_Layer1_SewerSurfin_Properties:
	db "MAP32_Layer1_SewerSurfin_Properties.bin"
MAP32_Layer1_SewerSurfin_PropertiesEnd:
MAP32_Layer2_RatKingsBoat_Tiles:
	db "MAP32_Layer2_RatKingsBoat_Tiles.bin"
MAP32_Layer2_RatKingsBoat_TilesEnd:
MAP32_Layer2_RatKingsBoat_Properties:
	db "MAP32_Layer2_RatKingsBoat_Properties.bin"
MAP32_Layer2_RatKingsBoat_PropertiesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Tiles:
	db "MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Tiles.bin"
MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_TilesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Properties:
	db "MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_Properties.bin"
MAP32_FGBG_TechnodromeLetsKickShell_FirstSection_PropertiesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Tiles:
	db "MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Tiles.bin"
MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_TilesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Properties:
	db "MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_Properties.bin"
MAP32_FGBG_TechnodromeLetsKickShell_ElevatorSection_PropertiesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Tiles:
	db "MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Tiles.bin"
MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_TilesEnd:
MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Properties:
	db "MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_Properties.bin"
MAP32_FGBG_TechnodromeLetsKickShell_ShredderFight_PropertiesEnd:
MAP32_Layer1_SkullAndCrossbones_Tiles:
	db "MAP32_Layer1_SkullAndCrossbones_Tiles.bin"
MAP32_Layer1_SkullAndCrossbones_TilesEnd:
MAP32_Layer1_SkullAndCrossbones_Properties:
	db "MAP32_Layer1_SkullAndCrossbones_Properties.bin"
MAP32_Layer1_SkullAndCrossbones_PropertiesEnd:
MAP32_Layer2_SkullAndCrossbones_Tiles:
	db "MAP32_Layer2_SkullAndCrossbones_Tiles.bin"
MAP32_Layer2_SkullAndCrossbones_TilesEnd:
MAP32_Layer2_SkullAndCrossbones_Properties:
	db "MAP32_Layer2_SkullAndCrossbones_Properties.bin"
MAP32_Layer2_SkullAndCrossbones_PropertiesEnd:
MAP32_Layer1_BuryMyShellAtWoundedKnee_Tiles:
	db "MAP32_Layer1_BuryMyShellAtWoundedKnee_Tiles.bin"
MAP32_Layer1_BuryMyShellAtWoundedKnee_TilesEnd:
MAP32_Layer1_BuryMyShellAtWoundedKnee_Properties:
	db "MAP32_Layer1_BuryMyShellAtWoundedKnee_Properties.bin"
MAP32_Layer1_BuryMyShellAtWoundedKnee_PropertiesEnd:
MAP32_Layer2_BuryMyShellAtWoundedKnee_Tiles:
	db "MAP32_Layer2_BuryMyShellAtWoundedKnee_Tiles.bin"
MAP32_Layer2_BuryMyShellAtWoundedKnee_TilesEnd:
MAP32_Layer2_BuryMyShellAtWoundedKnee_Properties:
	db "MAP32_Layer2_BuryMyShellAtWoundedKnee_Properties.bin"
MAP32_Layer2_BuryMyShellAtWoundedKnee_PropertiesEnd:
MAP32_Layer1_PrehistoricTurtlesauras_Tiles:
	db "MAP32_Layer1_PrehistoricTurtlesauras_Tiles.bin"
MAP32_Layer1_PrehistoricTurtlesauras_TilesEnd:
MAP32_Layer1_PrehistoricTurtlesauras_Properties:
	db "MAP32_Layer1_PrehistoricTurtlesauras_Properties.bin"
MAP32_Layer1_PrehistoricTurtlesauras_PropertiesEnd:
MAP32_Layer2_PrehistoricTurtlesauras_Tiles:
	db "MAP32_Layer2_PrehistoricTurtlesauras_Tiles.bin"
MAP32_Layer2_PrehistoricTurtlesauras_TilesEnd:
MAP32_Layer2_PrehistoricTurtlesauras_Properties:
	db "MAP32_Layer2_PrehistoricTurtlesauras_Properties.bin"
MAP32_Layer2_PrehistoricTurtlesauras_PropertiesEnd:
MAP32_Layer3_ThrownEnemies_Tiles:
	db "MAP32_Layer3_ThrownEnemies_Tiles.bin"
MAP32_Layer3_ThrownEnemies_TilesEnd:
MAP32_Layer3_ThrownEnemies_Properties:
	db "MAP32_Layer3_ThrownEnemies_Properties.bin"
MAP32_Layer3_ThrownEnemies_PropertiesEnd:
MAP32_UnknownLevelMap32_Tiles:
	db "MAP32_UnknownLevelMap32_Tiles.bin"
MAP32_UnknownLevelMap32_TilesEnd:
MAP32_UnknownLevelMap32_Properties:
	db "MAP32_UnknownLevelMap32_Properties.bin"
MAP32_UnknownLevelMap32_PropertiesEnd:
MAP32_FGBG_VersusModeArena_Tiles:
	db "MAP32_FGBG_VersusModeArena_Tiles.bin"
MAP32_FGBG_VersusModeArena_TilesEnd:
MAP32_FGBG_VersusModeArena_Properties:
	db "MAP32_FGBG_VersusModeArena_Properties.bin"
MAP32_FGBG_VersusModeArena_PropertiesEnd:
MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Tiles:
	db "MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Tiles.bin"
MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_TilesEnd:
MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Properties:
	db "MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_Properties.bin"
MAP32_Layer1_StarbaseWhereNoTurtleHasGoneBefore_PropertiesEnd:
MAP32_FGBG_TechnodromeTheFinalShellShock_Tiles:
	db "MAP32_FGBG_TechnodromeTheFinalShellShock_Tiles.bin"
MAP32_FGBG_TechnodromeTheFinalShellShock_TilesEnd:
MAP32_FGBG_TechnodromeTheFinalShellShock_Properties:
	db "MAP32_FGBG_TechnodromeTheFinalShellShock_Properties.bin"
MAP32_FGBG_TechnodromeTheFinalShellShock_PropertiesEnd:
MAP32_Layer1_TurtlesWatchTVScene_Tiles:
	db "MAP32_Layer1_TurtlesWatchTVScene_Tiles.bin"
MAP32_Layer1_TurtlesWatchTVScene_TilesEnd:
MAP32_Layer1_TurtlesWatchTVScene_Properties:
	db "MAP32_Layer1_TurtlesWatchTVScene_Properties.bin"
MAP32_Layer1_TurtlesWatchTVScene_PropertiesEnd:
MAP32_Layer2_TurtlesWatchTVScene_Tiles:
	db "MAP32_Layer2_TurtlesWatchTVScene_Tiles.bin"
MAP32_Layer2_TurtlesWatchTVScene_TilesEnd:
MAP32_Layer2_TurtlesWatchTVScene_Properties:
	db "MAP32_Layer2_TurtlesWatchTVScene_Properties.bin"
MAP32_Layer2_TurtlesWatchTVScene_PropertiesEnd:
MAP32_Layer3_SuperShredderAura_Tiles:
	db "MAP32_Layer3_SuperShredderAura_Tiles.bin"
MAP32_Layer3_SuperShredderAura_TilesEnd:
MAP32_Layer3_SuperShredderAura_Properties:
	db "MAP32_Layer3_SuperShredderAura_Properties.bin"
MAP32_Layer3_SuperShredderAura_PropertiesEnd:
MAP32_FGBF_IntroCutscene_CityScene_Tiles:
	db "MAP32_FGBF_IntroCutscene_CityScene_Tiles.bin"
MAP32_FGBF_IntroCutscene_CityScene_TilesEnd:
MAP32_FGBG_IntroCutscene_CityScene_Properties:
	db "MAP32_FGBG_IntroCutscene_CityScene_Properties.bin"
MAP32_FGBG_IntroCutscene_CityScene_PropertiesEnd:
MAP32_Layer1_IntroCutscene_ScreenTearEffect_Tiles:
	db "MAP32_Layer1_IntroCutscene_ScreenTearEffect_Tiles.bin"
MAP32_Layer1_IntroCutscene_ScreenTearEffect_TilesEnd:
MAP32_Layer1_IntroCutscene_ScreenTearEffect_Properties:
	db "MAP32_Layer1_IntroCutscene_ScreenTearEffect_Properties.bin"
MAP32_Layer1_IntroCutscene_ScreenTearEffect_PropertiesEnd:
MAP32_Layer3_SpeechBubble_Tiles:
	db "MAP32_Layer3_SpeechBubble_Tiles.bin"
MAP32_Layer3_SpeechBubble_TilesEnd:
MAP32_Layer3_SpeechBubble_Properties:
	db "MAP32_Layer3_SpeechBubble_Properties.bin"
MAP32_Layer3_SpeechBubble_PropertiesEnd:

;--------------------------------------------------------------------

LVL_StarbaseWhereNoTurtleHasGoneBefore:
	db "LVL_StarbaseWhereNoTurtleHasGoneBefore.bin"
LVL_StarbaseWhereNoTurtleHasGoneBeforeEnd:
LVL_TechnodromeLetsKickShell_ShredderFight:
	db "LVL_TechnodromeLetsKickShell_ShredderFight.bin"
LVL_TechnodromeLetsKickShell_ShredderFightEnd:
LVL_TechnodromeTheFinalShellShock:
	db "LVL_TechnodromeTheFinalShellShock.bin"
LVL_TechnodromeTheFinalShellShockEnd:
LVL_TechnodromeLetsKickShell_FirstSection:
	db "LVL_TechnodromeLetsKickShell_FirstSection.bin"
LVL_TechnodromeLetsKickShell_FirstSectionEnd:
LVL_TechnodromeLetsKickShell_ElevatorSection:
	db "LVL_TechnodromeLetsKickShell_ElevatorSection.bin"
LVL_TechnodromeLetsKickShell_ElevatorSectionEnd:
LVL_BigApple3AM:
	db "LVL_BigApple3AM.bin"
LVL_BigApple3AMEnd:
LVL_VersusModeArena:
	db "LVL_VersusModeArena.bin"
LVL_VersusModeArenaEnd:
LVL_AlleycatBlues:
	db "LVL_AlleycatBlues.bin"
LVL_AlleycatBluesEnd:
LVL_SkullAndCrossbones:
	db "LVL_SkullAndCrossbones.bin"
LVL_SkullAndCrossbonesEnd:
LVL_PrehistoricTurtlesauras:
	db "LVL_PrehistoricTurtlesauras.bin"
LVL_PrehistoricTurtlesaurasEnd:
LVL_BuryMyShellAtWoundedKnee:
	db "LVL_BuryMyShellAtWoundedKnee.bin"
LVL_BuryMyShellAtWoundedKneeEnd:
LVL_SewerSurfin:
	db "LVL_SewerSurfin.bin"
LVL_SewerSurfinEnd:

;--------------------------------------------------------------------

PAL_Layer1_KonamiLogoScreen:
	db "PAL_Layer1_KonamiLogoScreen.bin"
PAL_Layer1_KonamiLogoScreenEnd:
PAL_Layer2_KonamiLogoScreen_DarkKonami:
	db "PAL_Layer2_KonamiLogoScreen_DarkKonami.bin"
PAL_Layer2_KonamiLogoScreen_DarkKonamiEnd:
PAL_Layer2_KonamiLogoScreen_DarkLogo:
	db "PAL_Layer2_KonamiLogoScreen_DarkLogo.bin"
PAL_Layer2_KonamiLogoScreen_DarkLogoEnd:
PAL_Layer2_KonamiLogoScreen_LitUpKonami:
	db "PAL_Layer2_KonamiLogoScreen_LitUpKonami.bin"
PAL_Layer2_KonamiLogoScreen_LitUpKonamiEnd:
PAL_Layer2_KonamiLogoScreen_YellowLogoPart:
	db "PAL_Layer2_KonamiLogoScreen_YellowLogoPart.bin"
PAL_Layer2_KonamiLogoScreen_YellowLogoPartEnd:
PAL_Layer2_KonamiLogoScreen_OrangeLogoPart:
	db "PAL_Layer2_KonamiLogoScreen_OrangeLogoPart.bin"
PAL_Layer2_KonamiLogoScreen_OrangeLogoPartEnd:
PAL_UnknownPalette1:
	db "PAL_UnknownPalette1.bin"
PAL_UnknownPalette1End:
PAL_UnknownPalette2:
	db "PAL_UnknownPalette2.bin"
PAL_UnknownPalette2End:
PAL_Sprite_FootClanGrunt_Yellow:
	db "PAL_Sprite_FootClanGrunt_Yellow.bin"
PAL_Sprite_FootClanGrunt_YellowEnd:
PAL_Sprite_FootClanGrunt_Green:
	db "PAL_Sprite_FootClanGrunt_Green.bin"
PAL_Sprite_FootClanGrunt_GreenEnd:
PAL_Sprite_FootClanGrunt_Orange:
	db "PAL_Sprite_FootClanGrunt_Orange.bin"
PAL_Sprite_FootClanGrunt_OrangeEnd:
PAL_Sprite_FootClanGrunt_Purple:
	db "PAL_Sprite_FootClanGrunt_Purple.bin"
PAL_Sprite_FootClanGrunt_PurpleEnd:
PAL_Sprite_FootClanGrunt_Blue:
	db "PAL_Sprite_FootClanGrunt_Blue.bin"
PAL_Sprite_FootClanGrunt_BlueEnd:
PAL_Sprite_FootClanGrunt_Red:
	db "PAL_Sprite_FootClanGrunt_Red.bin"
PAL_Sprite_FootClanGrunt_RedEnd:
PAL_Sprite_FootClanGrunt_White:
	db "PAL_Sprite_FootClanGrunt_White.bin"
PAL_Sprite_FootClanGrunt_WhiteEnd:
PAL_Sprite_Horse:
	db "PAL_Sprite_Horse.bin"
PAL_Sprite_HorseEnd:
PAL_Sprite_FootClanGrunt_OozeFromFloorAnimaton:
	db "PAL_Sprite_FootClanGrunt_OozeFromFloorAnimaton.bin"
PAL_Sprite_FootClanGrunt_OozeFromFloorAnimatonEnd:
PAL_Sprite_StoneWarrior:
	db "PAL_Sprite_StoneWarrior.bin"
PAL_Sprite_StoneWarriorEnd:
PAL_Sprite_MiscLevelSprites:
	db "PAL_Sprite_MiscLevelSprites.bin"
PAL_Sprite_MiscLevelSpritesEnd:
PAL_Sprite_MetalBarrel:
	db "PAL_Sprite_MetalBarrel.bin"
PAL_Sprite_MetalBarrelEnd:
PAL_Sprite_BoxOfExplosives:
	db "PAL_Sprite_BoxOfExplosives.bin"
PAL_Sprite_BoxOfExplosivesEnd:
PAL_Sprite_WoodBarrel:
	db "PAL_Sprite_WoodBarrel.bin"
PAL_Sprite_WoodBarrelEnd:
PAL_Sprite_FallingStalactite:
	db "PAL_Sprite_FallingStalactite.bin"
PAL_Sprite_FallingStalactiteEnd:
PAL_Sprite_WreckingBall:
	db "PAL_Sprite_WreckingBall.bin"
PAL_Sprite_WreckingBallEnd:
PAL_Sprite_TrafficCone:
	db "PAL_Sprite_TrafficCone.bin"
PAL_Sprite_TrafficConeEnd:
PAL_Sprite_HydrantSpray:
	db "PAL_Sprite_HydrantSpray.bin"
PAL_Sprite_HydrantSprayEnd:
PAL_UnknownPalette3:
	db "PAL_UnknownPalette3.bin"
PAL_UnknownPalette3End:
PAL_Sprite_KrangEyeLasers:
	db "PAL_Sprite_KrangEyeLasers.bin"
PAL_Sprite_KrangEyeLasersEnd:
PAL_Layer3_BackgroundKrangHeadAndBody:
	db "PAL_Layer3_BackgroundKrangHeadAndBody.bin"
PAL_Layer3_BackgroundKrangHeadAndBodyEnd:
PAL_Layer3_BackgroundKrangEyes:
	db "PAL_Layer3_BackgroundKrangEyes.bin"
PAL_Layer3_BackgroundKrangEyesEnd:
PAL_Layer3_BossHealthBars:
	db "PAL_Layer3_BossHealthBars.bin"
PAL_Layer3_BossHealthBarsEnd:
PAL_Sprite_WallBrickRubble:
	db "PAL_Sprite_WallBrickRubble.bin"
PAL_Sprite_WallBrickRubbleEnd:
PAL_Sprite_PlankTrapAndPirateShip:
	db "PAL_Sprite_PlankTrapAndPirateShip.bin"
PAL_Sprite_PlankTrapAndPirateShipEnd:
PAL_Sprite_Cannonball:
	db "PAL_Sprite_Cannonball.bin"
PAL_Sprite_CannonballEnd:
PAL_Sprite_SewerMinesAndPoles:
	db "PAL_Sprite_SewerMinesAndPoles.bin"
PAL_Sprite_SewerMinesAndPolesEnd:
PAL_Sprite_Mouser:
	db "PAL_Sprite_Mouser.bin"
PAL_Sprite_MouserEnd:
PAL_Sprite_RoadkillRodney:
	db "PAL_Sprite_RoadkillRodney.bin"
PAL_Sprite_RoadkillRodneyEnd:
PAL_Sprite_RobotWalker:
	db "PAL_Sprite_RobotWalker.bin"
PAL_Sprite_RobotWalkerEnd:
PAL_Sprite_MasterSplinter:
	db "PAL_Sprite_MasterSplinter.bin"
PAL_Sprite_MasterSplinterEnd:
PAL_UnknownPalette4:
	db "PAL_UnknownPalette4.bin"
PAL_UnknownPalette4End:
PAL_UnknownPalette5:
	db "PAL_UnknownPalette5.bin"
PAL_UnknownPalette5End:
PAL_Layer3_OptionsScreen_Unknown:
	db "PAL_Layer3_OptionsScreen_Unknown.bin"
PAL_Layer3_OptionsScreen_UnknownEnd:
PAL_Layer3_EndOfIntroCutscene:
	db "PAL_Layer3_EndOfIntroCutscene.bin"
PAL_Layer3_EndOfIntroCutsceneEnd:
PAL_Layer3_StatusBar_P1Leo:
	db "PAL_Layer3_StatusBar_P1Leo.bin"
PAL_Layer3_StatusBar_P1LeoEnd:
PAL_Layer3_StatusBar_P1Mike:
	db "PAL_Layer3_StatusBar_P1Mike.bin"
PAL_Layer3_StatusBar_P1MikeEnd:
PAL_Layer3_StatusBar_P1Don:
	db "PAL_Layer3_StatusBar_P1Don.bin"
PAL_Layer3_StatusBar_P1DonEnd:
PAL_Layer3_StatusBar_P1Raph:
	db "PAL_Layer3_StatusBar_P1Raph.bin"
PAL_Layer3_StatusBar_P1RaphEnd:
PAL_Layer3_StatusBar_P2Leo:
	db "PAL_Layer3_StatusBar_P2Leo.bin"
PAL_Layer3_StatusBar_P2LeoEnd:
PAL_Layer3_StatusBar_P2Mike:
	db "PAL_Layer3_StatusBar_P2Mike.bin"
PAL_Layer3_StatusBar_P2MikeEnd:
PAL_Layer3_StatusBar_P2Don:
	db "PAL_Layer3_StatusBar_P2Don.bin"
PAL_Layer3_StatusBar_P2DonEnd:
PAL_Layer3_StatusBar_P2Raph:
	db "PAL_Layer3_StatusBar_P2Raph.bin"
PAL_Layer3_StatusBar_P2RaphEnd:
PAL_Layer3_VersusModeCharacterSelect_Time:
	db "PAL_Layer3_VersusModeCharacterSelect_Time.bin"
PAL_Layer3_VersusModeCharacterSelect_TimeEnd:
PAL_Layer3_OptionsMenu_UnselectedOptions:
	db "PAL_Layer3_OptionsMenu_UnselectedOptions.bin"
PAL_Layer3_OptionsMenu_UnselectedOptionsEnd:
PAL_Layer3_VersusMode_TimeDisplay:
	db "PAL_Layer3_VersusMode_TimeDisplay.bin"
PAL_Layer3_VersusMode_TimeDisplayEnd:
PAL_Layer3_WhiteLevelName:
	db "PAL_Layer3_WhiteLevelName.bin"
PAL_Layer3_WhiteLevelNameEnd:
PAL_Layer3_YellowLevelName:
	db "PAL_Layer3_YellowLevelName.bin"
PAL_Layer3_YellowLevelNameEnd:
PAL_Layer3_DarkBlueLevelName:
	db "PAL_Layer3_DarkBlueLevelName.bin"
PAL_Layer3_DarkBlueLevelNameEnd:
PAL_Layer3_ThrownFootClanGrunt_Purple:
	db "PAL_Layer3_ThrownFootClanGrunt_Purple.bin"
PAL_Layer3_ThrownFootClanGrunt_PurpleEnd:
PAL_Layer3_ThrownFootClanGrunt_ArmsAndFeet:
	db "PAL_Layer3_ThrownFootClanGrunt_ArmsAndFeet.bin"
PAL_Layer3_ThrownFootClanGrunt_ArmsAndFeetEnd:
PAL_Layer3_ThrownFootClanGrunt_Green:
	db "PAL_Layer3_ThrownFootClanGrunt_Green.bin"
PAL_Layer3_ThrownFootClanGrunt_GreenEnd:
PAL_Layer3_ThrownFootClanGrunt_Blue:
	db "PAL_Layer3_ThrownFootClanGrunt_Blue.bin"
PAL_Layer3_ThrownFootClanGrunt_BlueEnd:
PAL_Layer3_ThrownFootClanGrunt_Yellow:
	db "PAL_Layer3_ThrownFootClanGrunt_Yellow.bin"
PAL_Layer3_ThrownFootClanGrunt_YellowEnd:
PAL_Layer3_ThrownFootClanGrunt_Red:
	db "PAL_Layer3_ThrownFootClanGrunt_Red.bin"
PAL_Layer3_ThrownFootClanGrunt_RedEnd:
PAL_Layer3_ThrownFootClanGrunt_White:
	db "PAL_Layer3_ThrownFootClanGrunt_White.bin"
PAL_Layer3_ThrownFootClanGrunt_WhiteEnd:
PAL_Layer3_ThrownFootClanGrunt_Orange:
	db "PAL_Layer3_ThrownFootClanGrunt_Orange.bin"
PAL_Layer3_ThrownFootClanGrunt_OrangeEnd:
PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Animation:
	db "PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Animation.bin"
PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Animation:
	db "PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Animation.bin"
PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Animation:
	db "PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Animation.bin"
PAL_Layer1_CharacterSelectScreen_SelectedDonatello_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Animation:
	db "PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Animation.bin"
PAL_Layer1_CharacterSelectScreen_SelectedRaphael_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Animation:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Animation.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Animation:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Animation.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Animation:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Animation.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Animation:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Animation.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_AnimationEnd:
PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Comic:
	db "PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_Comic.bin"
PAL_Layer1_CharacterSelectScreen_SelectedLeonardo_ComicEnd:
PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Comic:
	db "PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_Comic.bin"
PAL_Layer1_CharacterSelectScreen_SelectedMichaelangelo_ComicEnd:
PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Comic:
	db "PAL_Layer1_CharacterSelectScreen_SelectedDonatello_Comic.bin"
PAL_Layer1_CharacterSelectScreen_SelectedDonatello_ComicEnd:
PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Comic:
	db "PAL_Layer1_CharacterSelectScreen_SelectedRaphael_Comic.bin"
PAL_Layer1_CharacterSelectScreen_SelectedRaphael_ComicEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Comic:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_Comic.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedLeonardo_ComicEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Comic:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_Comic.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedMichaelangelo_ComicEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Comic:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_Comic.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedDonatello_ComicEnd:
PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Comic:
	db "PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_Comic.bin"
PAL_Layer1_CharacterSelectScreen_UnselectedRaphael_ComicEnd:
PAL_FGBG_BigApple3AM:
	db "PAL_FGBG_BigApple3AM.bin"
PAL_FGBG_BigApple3AMEnd:
PAL_FGBG_AlleycatBlues_Main:
	db "PAL_FGBG_AlleycatBlues_Main.bin"
PAL_FGBG_AlleycatBlues_MainEnd:
PAL_FGBG_AlleycatBlues_BossArea:
	db "PAL_FGBG_AlleycatBlues_BossArea.bin"
PAL_FGBG_AlleycatBlues_BossAreaEnd:
PAL_FGBG_SewerSurfin:
	db "PAL_FGBG_SewerSurfin.bin"
PAL_FGBG_SewerSurfinEnd:
PAL_FGBG_TechnodromeLetsKickShell:
	db "PAL_FGBG_TechnodromeLetsKickShell.bin"
PAL_FGBG_TechnodromeLetsKickShellEnd:
PAL_FGBG_ShredderBossFight:
	db "PAL_FGBG_ShredderBossFight.bin"
PAL_FGBG_ShredderBossFightEnd:
PAL_FGBG_SkullAndCrossbones:
	db "PAL_FGBG_SkullAndCrossbones.bin"
PAL_FGBG_SkullAndCrossbonesEnd:
PAL_FGBG_BuryMyShellAtWoundedKnee:
	db "PAL_FGBG_BuryMyShellAtWoundedKnee.bin"
PAL_FGBG_BuryMyShellAtWoundedKneeEnd:
PAL_FGBG_PrehistoricTurtlesauras:
	db "PAL_FGBG_PrehistoricTurtlesauras.bin"
PAL_FGBG_PrehistoricTurtlesaurasEnd:
PAL_FGBG_NeonNightRiders:
	db "PAL_FGBG_NeonNightRiders.bin"
PAL_FGBG_NeonNightRidersEnd:
PAL_FGBG_StarbaseWhereNoTurtleHasGoneBefore:
	db "PAL_FGBG_StarbaseWhereNoTurtleHasGoneBefore.bin"
PAL_FGBG_StarbaseWhereNoTurtleHasGoneBeforeEnd:
PAL_FGBG_FinalBossRoom:
	db "PAL_FGBG_FinalBossRoom.bin"
PAL_FGBG_FinalBossRoomEnd:
PAL_Sprite_Leonardo_Animation:
	db "PAL_Sprite_Leonardo_Animation.bin"
PAL_Sprite_Leonardo_AnimationEnd:
PAL_Sprite_Michaelangelo_Animation:
	db "PAL_Sprite_Michaelangelo_Animation.bin"
PAL_Sprite_Michaelangelo_AnimationEnd:
PAL_Sprite_Donatello_Animation:
	db "PAL_Sprite_Donatello_Animation.bin"
PAL_Sprite_Donatello_AnimationEnd:
PAL_Sprite_Raphael_Animation:
	db "PAL_Sprite_Raphael_Animation.bin"
PAL_Sprite_Raphael_AnimationEnd:
PAL_Sprite_FrozenTurtle:
	db "PAL_Sprite_FrozenTurtle.bin"
PAL_Sprite_FrozenTurtleEnd:
PAL_Sprite_Leonardo_Comic:
	db "PAL_Sprite_Leonardo_Comic.bin"
PAL_Sprite_Leonardo_ComicEnd:
PAL_Sprite_Michaelangelo_Comic:
	db "PAL_Sprite_Michaelangelo_Comic.bin"
PAL_Sprite_Michaelangelo_ComicEnd:
PAL_Sprite_Donatello_Comic:
	db "PAL_Sprite_Donatello_Comic.bin"
PAL_Sprite_Donatello_ComicEnd:
PAL_Sprite_Raphael_Comic:
	db "PAL_Sprite_Raphael_Comic.bin"
PAL_Sprite_Raphael_ComicEnd:
PAL_Sprite_BaxterStockman:
	db "PAL_Sprite_BaxterStockman.bin"
PAL_Sprite_BaxterStockmanEnd:
PAL_Sprite_PizzaMonster:
	db "PAL_Sprite_PizzaMonster.bin"
PAL_Sprite_PizzaMonsterEnd:
PAL_Sprite_Metalhead:
	db "PAL_Sprite_Metalhead.bin"
PAL_Sprite_MetalheadEnd:
PAL_Sprite_TokkaAndRahzar:
	db "PAL_Sprite_TokkaAndRahzar.bin"
PAL_Sprite_TokkaAndRahzarEnd:
PAL_Sprite_Leatherhead:
	db "PAL_Sprite_Leatherhead.bin"
PAL_Sprite_LeatherheadEnd:
PAL_Sprite_RatKing_Normal:
	db "PAL_Sprite_RatKing_Normal.bin"
PAL_Sprite_RatKing_NormalEnd:
PAL_Sprite_RatKing_Flash:
	db "PAL_Sprite_RatKing_Flash.bin"
PAL_Sprite_RatKing_FlashEnd:
PAL_Sprite_RatKingsTorpedos:
	db "PAL_Sprite_RatKingsTorpedos.bin"
PAL_Sprite_RatKingsTorpedosEnd:
PAL_Layer2_RatKingsBoat:
	db "PAL_Layer2_RatKingsBoat.bin"
PAL_Layer2_RatKingsBoatEnd:
PAL_UnknownPalette6:
	db "PAL_UnknownPalette6.bin"
PAL_UnknownPalette6End:
PAL_Sprite_BebopAndRocksteady:
	db "PAL_Sprite_BebopAndRocksteady.bin"
PAL_Sprite_BebopAndRocksteadyEnd:
PAL_Sprite_KrangBody:
	db "PAL_Sprite_KrangBody.bin"
PAL_Sprite_KrangBodyEnd:
PAL_Sprite_Slash:
	db "PAL_Sprite_Slash.bin"
PAL_Sprite_SlashEnd:
PAL_Sprite_KrangInUFOAndEffects:
	db "PAL_Sprite_KrangInUFOAndEffects.bin"
PAL_Sprite_KrangInUFOAndEffectsEnd:
PAL_Layer2_KrangsUFO_Normal:
	db "PAL_Layer2_KrangsUFO_Normal.bin"
PAL_Layer2_KrangsUFO_NormalEnd:
PAL_Layer2_KrangsUFO_Flash:
	db "PAL_Layer2_KrangsUFO_Flash.bin"
PAL_Layer2_KrangsUFO_FlashEnd:
PAL_Layer2_KrangsUFO_Destroyed:
	db "PAL_Layer2_KrangsUFO_Destroyed.bin"
PAL_Layer2_KrangsUFO_DestroyedEnd:
PAL_Sprite_ShedderProjectionHands:
	db "PAL_Sprite_ShedderProjectionHands.bin"
PAL_Sprite_ShedderProjectionHandsEnd:
PAL_Sprite_ShedderProjectionHead:
	db "PAL_Sprite_ShedderProjectionHead.bin"
PAL_Sprite_ShedderProjectionHeadEnd:
PAL_FGBG_VersusModeArena:
	db "PAL_FGBG_VersusModeArena.bin"
PAL_FGBG_VersusModeArenaEnd:
PAL_Layer1_GameOverScreen_RainbowBorder:
	db "PAL_Layer1_GameOverScreen_RainbowBorder.bin"
PAL_Layer1_GameOverScreen_RainbowBorderEnd:
PAL_Layer1_GameOverScreen_GameOverText_Frame1:
	db "PAL_Layer1_GameOverScreen_GameOverText_Frame1.bin"
PAL_Layer1_GameOverScreen_GameOverText_Frame1End:
PAL_Layer1_GameOverScreen_GameOverText_Frame2:
	db "PAL_Layer1_GameOverScreen_GameOverText_Frame2.bin"
PAL_Layer1_GameOverScreen_GameOverText_Frame2End:
PAL_Layer1_GameOverScreen_GameOverText_Frame3:
	db "PAL_Layer1_GameOverScreen_GameOverText_Frame3.bin"
PAL_Layer1_GameOverScreen_GameOverText_Frame3End:
PAL_Layer1_GameOverScreen_GameOverText_Frame4:
	db "PAL_Layer1_GameOverScreen_GameOverText_Frame4.bin"
PAL_Layer1_GameOverScreen_GameOverText_Frame4End:
PAL_Sprite_PurpleSilhouette:
	db "PAL_Sprite_PurpleSilhouette.bin"
PAL_Sprite_PurpleSilhouetteEnd:
PAL_Sprite_GreenSilhouette:
	db "PAL_Sprite_GreenSilhouette.bin"
PAL_Sprite_GreenSilhouetteEnd:
PAL_Sprite_YellowSilhouette:
	db "PAL_Sprite_YellowSilhouette.bin"
PAL_Sprite_YellowSilhouetteEnd:
PAL_Sprite_OrangeSilhouette:
	db "PAL_Sprite_OrangeSilhouette.bin"
PAL_Sprite_OrangeSilhouetteEnd:
PAL_Sprite_SmallRingLaserShootingRobots:
	db "PAL_Sprite_SmallRingLaserShootingRobots.bin"
PAL_Sprite_SmallRingLaserShootingRobotsEnd:
PAL_UnknownPalette7:
	db "PAL_UnknownPalette7.bin"
PAL_UnknownPalette7End:
PAL_Sprite_TitleScreen:
	db "PAL_Sprite_TitleScreen.bin"
PAL_Sprite_TitleScreenEnd:
PAL_FGBG_TitleScreen:
	db "PAL_FGBG_TitleScreen.bin"
PAL_FGBG_TitleScreenEnd:
PAL_FGBG_TurtlesWatchTvScene_Animation:
	db "PAL_FGBG_TurtlesWatchTvScene_Animation.bin"
PAL_FGBG_TurtlesWatchTvScene_AnimationEnd:
PAL_FGBG_IntroCutscene_CityScene:
	db "PAL_FGBG_IntroCutscene_CityScene.bin"
PAL_FGBG_IntroCutscene_CitySceneEnd:
PAL_FGBG_EveningNewsScene:
	db "PAL_FGBG_EveningNewsScene.bin"
PAL_FGBG_EveningNewsSceneEnd:
PAL_UnknownPalette8:
	db "PAL_UnknownPalette8.bin"
PAL_UnknownPalette8End:
PAL_FGBG_CreditsScene_Sepia:
	db "PAL_FGBG_CreditsScene_Sepia.bin"
PAL_FGBG_CreditsScene_SepiaEnd:
PAL_FGBG_CreditsScene_Normal:
	db "PAL_FGBG_CreditsScene_Normal.bin"
PAL_FGBG_CreditsScene_NormalEnd:
PAL_Layer3_CreditsScene_Normal:
	db "PAL_Layer3_CreditsScene_Normal.bin"
PAL_Layer3_CreditsScene_NormalEnd:
PAL_Layer3_CreditsScene_Sepia:
	db "PAL_Layer3_CreditsScene_Sepia.bin"
PAL_Layer3_CreditsScene_SepiaEnd:
PAL_Layer3_EveningNewsScene:
	db "PAL_Layer3_EveningNewsScene.bin"
PAL_Layer3_EveningNewsSceneEnd:
PAL_FGBG_ContinueScreen:
	db "PAL_FGBG_ContinueScreen.bin"
PAL_FGBG_ContinueScreenEnd:
PAL_Sprite_EveningNewsScene:
	db "PAL_Sprite_EveningNewsScene.bin"
PAL_Sprite_EveningNewsSceneEnd:
PAL_Sprite_IntroCutscene_CityScene_Frame1:
	db "PAL_Sprite_IntroCutscene_CityScene_Frame1.bin"
PAL_Sprite_IntroCutscene_CityScene_Frame1End:
PAL_Sprite_IntroCutscene_CityScene_Frame2:
	db "PAL_Sprite_IntroCutscene_CityScene_Frame2.bin"
PAL_Sprite_IntroCutscene_CityScene_Frame2End:
PAL_Sprite_IntroCutscene_CityScene_Frame3:
	db "PAL_Sprite_IntroCutscene_CityScene_Frame3.bin"
PAL_Sprite_IntroCutscene_CityScene_Frame3End:
PAL_Sprite_IntroCutscene_CityScene_Frame4:
	db "PAL_Sprite_IntroCutscene_CityScene_Frame4.bin"
PAL_Sprite_IntroCutscene_CityScene_Frame4End:
PAL_FGBG_TimeWarpLevelEntryFlash_Red:
	db "PAL_FGBG_TimeWarpLevelEntryFlash_Red.bin"
PAL_FGBG_TimeWarpLevelEntryFlash_RedEnd:
PAL_Layer1_OptionsMenu:
	db "PAL_Layer1_OptionsMenu.bin"
PAL_Layer1_OptionsMenuEnd:
PAL_Sprite_AprilONeilSayingFight:
	db "PAL_Sprite_AprilONeilSayingFight.bin"
PAL_Sprite_AprilONeilSayingFightEnd:
PAL_Sprite_StatueOfLibertyReturnedScene2:
	db "PAL_Sprite_StatueOfLibertyReturnedScene2.bin"
PAL_Sprite_StatueOfLibertyReturnedScene2End:
PAL_Layer3_TimeTrialMenu:
	db "PAL_Layer3_TimeTrialMenu.bin"
PAL_Layer3_TimeTrialMenuEnd:
PAL_Sprite_TechnodromeAppearsScene_Smoke:
	db "PAL_Sprite_TechnodromeAppearsScene_Smoke.bin"
PAL_Sprite_TechnodromeAppearsScene_SmokeEnd:
PAL_Layer2_TechnodromeAppearsScene:
	db "PAL_Layer2_TechnodromeAppearsScene.bin"
PAL_Layer2_TechnodromeAppearsSceneEnd:
PAL_Layer1_TechnodromeAppearsScene:
	db "PAL_Layer1_TechnodromeAppearsScene.bin"
PAL_Layer1_TechnodromeAppearsSceneEnd:
PAL_UnknownPalette9:
	db "PAL_UnknownPalette9.bin"
PAL_UnknownPalette9End:
PAL_Sprite_CreditsScene:
	db "PAL_Sprite_CreditsScene.bin"
PAL_Sprite_CreditsSceneEnd:
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame4:
	db "PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame4.bin"
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame4End:
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame3:
	db "PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame3.bin"
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame3End:
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame1:
	db "PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame1.bin"
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame1End:
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame2:
	db "PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame2.bin"
PAL_Sprite_FootClanGrunt_PhaseInAnimation_Frame2End:
PAL_Sprite_Velociraptor:
	db "PAL_Sprite_Velociraptor.bin"
PAL_Sprite_VelociraptorEnd:
PAL_Sprite_StarbaseChuteDoor:
	db "PAL_Sprite_StarbaseChuteDoor.bin"
PAL_Sprite_StarbaseChuteDoorEnd:
PAL_Sprite_Pterodactyl:
	db "PAL_Sprite_Pterodactyl.bin"
PAL_Sprite_PterodactylEnd:
PAL_Sprite_StatueOfLiberty:
	db "PAL_Sprite_StatueOfLiberty.bin"
PAL_Sprite_StatueOfLibertyEnd:
PAL_Layer2_StatueOfLibertyReturnedScene1:
	db "PAL_Layer2_StatueOfLibertyReturnedScene1.bin"
PAL_Layer2_StatueOfLibertyReturnedScene1End:
PAL_Layer2_StatueOfLibertyReturnedScene2:
	db "PAL_Layer2_StatueOfLibertyReturnedScene2.bin"
PAL_Layer2_StatueOfLibertyReturnedScene2End:
PAL_Sprite_LaserGate_Green:
	db "PAL_Sprite_LaserGate_Green.bin"
PAL_Sprite_LaserGate_GreenEnd:
PAL_Sprite_LaserGate_Yellow:
	db "PAL_Sprite_LaserGate_Yellow.bin"
PAL_Sprite_LaserGate_YellowEnd:
PAL_Sprite_SuperShredder_Purple:
	db "PAL_Sprite_SuperShredder_Purple.bin"
PAL_Sprite_SuperShredder_PurpleEnd:
PAL_Sprite_SuperShredder_BeforeTransformation:
	db "PAL_Sprite_SuperShredder_BeforeTransformation.bin"
PAL_Sprite_SuperShredder_BeforeTransformationEnd:
PAL_Sprite_SuperShredder_Blue:
	db "PAL_Sprite_SuperShredder_Blue.bin"
PAL_Sprite_SuperShredder_BlueEnd:
PAL_Sprite_SuperShredder_Red:
	db "PAL_Sprite_SuperShredder_Red.bin"
PAL_Sprite_SuperShredder_RedEnd:
PAL_Sprite_SuperShredder_Green:
	db "PAL_Sprite_SuperShredder_Green.bin"
PAL_Sprite_SuperShredder_GreenEnd:
PAL_Layer3_SuperShredderTransformationLight:
	db "PAL_Layer3_SuperShredderTransformationLight.bin"
PAL_Layer3_SuperShredderTransformationLightEnd:
PAL_Layer3_SuperShredderAura_Frame1:
	db "PAL_Layer3_SuperShredderAura_Frame1.bin"
PAL_Layer3_SuperShredderAura_Frame1End:
PAL_Layer3_SuperShredderAura_Frame2:
	db "PAL_Layer3_SuperShredderAura_Frame2.bin"
PAL_Layer3_SuperShredderAura_Frame2End:
PAL_Layer3_SuperShredderAura_Frame3:
	db "PAL_Layer3_SuperShredderAura_Frame3.bin"
PAL_Layer3_SuperShredderAura_Frame3End:
PAL_Layer3_SuperShredderAura_Frame4:
	db "PAL_Layer3_SuperShredderAura_Frame4.bin"
PAL_Layer3_SuperShredderAura_Frame4End:
PAL_Sprite_ShredderClawAndCursor:
	db "PAL_Sprite_ShredderClawAndCursor.bin"
PAL_Sprite_ShredderClawAndCursorEnd:
PAL_UnknownPalette10:
	db "PAL_UnknownPalette10.bin"
PAL_UnknownPalette10End:
PAL_Sprite_TimeWarpLevelEntryAnimation:
	db "PAL_Sprite_TimeWarpLevelEntryAnimation.bin"
PAL_Sprite_TimeWarpLevelEntryAnimationEnd:
PAL_FGBG_TimeWarpLevelEntryFlash_Green:
	db "PAL_FGBG_TimeWarpLevelEntryFlash_Green.bin"
PAL_FGBG_TimeWarpLevelEntryFlash_GreenEnd:
PAL_Sprite_IcePanel:
	db "PAL_Sprite_IcePanel.bin"
PAL_Sprite_IcePanelEnd:
PAL_Sprite_TimeWarpScene_DinosaurIcon:
	db "PAL_Sprite_TimeWarpScene_DinosaurIcon.bin"
PAL_Sprite_TimeWarpScene_DinosaurIconEnd:
PAL_Sprite_TimeWarpScene_PirateShipIcon:
	db "PAL_Sprite_TimeWarpScene_PirateShipIcon.bin"
PAL_Sprite_TimeWarpScene_PirateShipIconEnd:
PAL_Sprite_TimeWarpScene_TrainIcon:
	db "PAL_Sprite_TimeWarpScene_TrainIcon.bin"
PAL_Sprite_TimeWarpScene_TrainIconEnd:
PAL_Sprite_TimeWarpScene_FutureCityIcon:
	db "PAL_Sprite_TimeWarpScene_FutureCityIcon.bin"
PAL_Sprite_TimeWarpScene_FutureCityIconEnd:
PAL_Sprite_TimeWarpScene_PlanetIcon:
	db "PAL_Sprite_TimeWarpScene_PlanetIcon.bin"
PAL_Sprite_TimeWarpScene_PlanetIconEnd:
PAL_Sprite_TimeWarpScene_TechnodromeIcon:
	db "PAL_Sprite_TimeWarpScene_TechnodromeIcon.bin"
PAL_Sprite_TimeWarpScene_TechnodromeIconEnd:
PAL_Sprite_TimeWarpParticles:
	db "PAL_Sprite_TimeWarpParticles.bin"
PAL_Sprite_TimeWarpParticlesEnd:
PAL_Sprite_StoneWarriorGunAndGirder:
	db "PAL_Sprite_StoneWarriorGunAndGirder.bin"
PAL_Sprite_StoneWarriorGunAndGirderEnd:
PAL_Sprite_StoneWarriorBazooka:
	db "PAL_Sprite_StoneWarriorBazooka.bin"
PAL_Sprite_StoneWarriorBazookaEnd:
PAL_Sprite_StoneWarriorNapalmGun:
	db "PAL_Sprite_StoneWarriorNapalmGun.bin"
PAL_Sprite_StoneWarriorNapalmGunEnd:
PAL_Sprite_StoneWarriorElectricGun:
	db "PAL_Sprite_StoneWarriorElectricGun.bin"
PAL_Sprite_StoneWarriorElectricGunEnd:
PAL_All_ClearPalette:
	db "PAL_All_ClearPalette.bin"
PAL_All_ClearPaletteEnd:
PAL_Sprite_GiantGreenBall:
	db "PAL_Sprite_GiantGreenBall.bin"
PAL_Sprite_GiantGreenBallEnd:
PAL_Sprite_FootClanGrunt_InHelicopterChairThing:
	db "PAL_Sprite_FootClanGrunt_InHelicopterChairThing.bin"
PAL_Sprite_FootClanGrunt_InHelicopterChairThingEnd:
PAL_FGBG_TurtlesWatchTvScene_Comic:
	db "PAL_FGBG_TurtlesWatchTvScene_Comic.bin"
PAL_FGBG_TurtlesWatchTvScene_ComicEnd:
PAL_Sprite_NeonNightRidersMousers:
	db "PAL_Sprite_NeonNightRidersMousers.bin"
PAL_Sprite_NeonNightRidersMousersEnd:
PAL_Sprite_NeonNightRidersOpeningText:
	db "PAL_Sprite_NeonNightRidersOpeningText.bin"
PAL_Sprite_NeonNightRidersOpeningTextEnd:
PAL_Layer3_LevelClearWhiteTextAnimation_Frame1:
	db "PAL_Layer3_LevelClearWhiteTextAnimation_Frame1.bin"
PAL_Layer3_LevelClearWhiteTextAnimation_Frame1End:
PAL_Layer3_LevelClearYellowTextAnimation_Frame1:
	db "PAL_Layer3_LevelClearYellowTextAnimation_Frame1.bin"
PAL_Layer3_LevelClearYellowTextAnimation_Frame1End:
PAL_Layer3_LevelClearWhiteTextAnimation_Frame2:
	db "PAL_Layer3_LevelClearWhiteTextAnimation_Frame2.bin"
PAL_Layer3_LevelClearWhiteTextAnimation_Frame2End:
PAL_Layer3_LevelClearYellowTextAnimation_Frame2:
	db "PAL_Layer3_LevelClearYellowTextAnimation_Frame2.bin"
PAL_Layer3_LevelClearYellowTextAnimation_Frame2End:
PAL_Layer3_EndScreen:
if !ROMVer&(!TMNTIV_E|!TMNTIV_A) != $00
	db "PAL_Layer3_EndScreen_TMNTIV_E.bin"
else
	db "PAL_Layer3_EndScreen_TMNTIV_U.bin"
endif
PAL_Layer3_EndScreenEnd:
PAL_Layer1_EndScreen:
	db "PAL_Layer1_EndScreen.bin"
PAL_Layer1_EndScreenEnd:

;--------------------------------------------------------------------

DATA_0F8000:
	db "DATA_0F8000.bin"
DATA_0F8000End:
DATA_0F80B2:
	db "DATA_0F80B2.bin"
DATA_0F80B2End:
COD_VersusModeArenaSprites:
	db "COD_VersusModeArenaSprites.bin"
COD_VersusModeArenaSpritesEnd:
COD_CowabungaSpeechBubble:
	db "COD_CowabungaSpeechBubble.bin"
COD_CowabungaSpeechBubbleEnd:
DATA_0F833E:
	db "DATA_0F833E.bin"
DATA_0F833EEnd:
DATA_0F867C:
	db "DATA_0F867C.bin"
DATA_0F867CEnd:
DATA_0F87D5:
	db "DATA_0F87D5.bin"
DATA_0F87D5End:
DATA_0F8831:
	db "DATA_0F8831.bin"
DATA_0F8831End:
DATA_0F892F:
	db "DATA_0F892F.bin"
DATA_0F892FEnd:
DATA_0F8A33:
	db "DATA_0F8A33.bin"
DATA_0F8A33End:
DATA_0F8C14:
	db "DATA_0F8C14.bin"
DATA_0F8C14End:
DATA_0F8DD7:
	db "DATA_0F8DD7.bin"
DATA_0F8DD7End:
DATA_0F901E:
	db "DATA_0F901E.bin"
DATA_0F901EEnd:
DATA_0F92D1:
	db "DATA_0F92D1.bin"
DATA_0F92D1End:
DATA_0F9451:
	db "DATA_0F9451.bin"
DATA_0F9451End:
DATA_0F96F0:
	db "DATA_0F96F0.bin"
DATA_0F96F0End:
DATA_0F9A49:
	db "DATA_0F9A49.bin"
DATA_0F9A49End:
DATA_0F9C0A:
	db "DATA_0F9C0A.bin"
DATA_0F9C0AEnd:
DATA_0F9C64:
	db "DATA_0F9C64.bin"
DATA_0F9C64End:
DATA_0F9C9A:
	db "DATA_0F9C9A.bin"
DATA_0F9C9AEnd:
DATA_0F9CE0:
	db "DATA_0F9CE0.bin"
DATA_0F9CE0End:
DATA_0F9D1B:
	db "DATA_0F9D1B.bin"
DATA_0F9D1BEnd:
DATA_0F9DB3:
	db "DATA_0F9DB3.bin"
DATA_0F9DB3End:
DATA_0F9E47:
	db "DATA_0F9E47.bin"
DATA_0F9E47End:
DATA_0F9EB1:
	db "DATA_0F9EB1.bin"
DATA_0F9EB1End:
DATA_0FA008:
	db "DATA_0FA008.bin"
DATA_0FA008End:
DATA_0FA204:
	db "DATA_0FA204.bin"
DATA_0FA204End:
DATA_0FA2FF:
	db "DATA_0FA2FF.bin"
DATA_0FA2FFEnd:
DATA_0FA391:
	db "DATA_0FA391.bin"
DATA_0FA391End:
DATA_0FA449:
	db "DATA_0FA449.bin"
DATA_0FA449End:
DATA_0FA572:
	db "DATA_0FA572.bin"
DATA_0FA572End:
DATA_0FA5C1:
	db "DATA_0FA5C1.bin"
DATA_0FA5C1End:
DATA_0FA7B0:
	db "DATA_0FA7B0.bin"
DATA_0FA7B0End:
DATA_0FA7FA:
	db "DATA_0FA7FA.bin"
DATA_0FA7FAEnd:
DATA_0FA88D:
	db "DATA_0FA88D.bin"
DATA_0FA88DEnd:
DATA_0FA8BE:
	db "DATA_0FA8BE.bin"
DATA_0FA8BEEnd:
DATA_0FA907:
	db "DATA_0FA907.bin"
DATA_0FA907End:
DATA_0FA93D:
	db "DATA_0FA93D.bin"
DATA_0FA93DEnd:
DATA_0FAA48:
	db "DATA_0FAA48.bin"
DATA_0FAA48End:
DATA_0FAAEF:
	db "DATA_0FAAEF.bin"
DATA_0FAAEFEnd:
DATA_0FAB24:
	db "DATA_0FAB24.bin"
DATA_0FAB24End:
DATA_0FABBA:
	db "DATA_0FABBA.bin"
DATA_0FABBAEnd:
DATA_0FABF5:
	db "DATA_0FABF5.bin"
DATA_0FABF5End:
DATA_0FACE0:
	db "DATA_0FACE0.bin"
DATA_0FACE0End:
DATA_0FAD27:
	db "DATA_0FAD27.bin"
DATA_0FAD27End:
DATA_0FAD48:
	db "DATA_0FAD48.bin"
DATA_0FAD48End:
DATA_0FADA3:
	db "DATA_0FADA3.bin"
DATA_0FADA3End:
DATA_0FAE33:
	db "DATA_0FAE33.bin"
DATA_0FAE33End:
DATA_0FAE61:
	db "DATA_0FAE61.bin"
DATA_0FAE61End:
DATA_0FAE91:
	db "DATA_0FAE91.bin"
DATA_0FAE91End:
DATA_0FAEB9:
	db "DATA_0FAEB9.bin"
DATA_0FAEB9End:
DATA_0FAF8F:
	db "DATA_0FAF8F.bin"
DATA_0FAF8FEnd:
DATA_0FB084:
	db "DATA_0FB084.bin"
DATA_0FB084End:
DATA_0FB3FC:
	db "DATA_0FB3FC.bin"
DATA_0FB3FCEnd:
DATA_0FB469:
	db "DATA_0FB469.bin"
DATA_0FB469End:
DATA_0FB899:
	db "DATA_0FB899.bin"
DATA_0FB899End:
DATA_0FBA6F:
	db "DATA_0FBA6F.bin"
DATA_0FBA6FEnd:
DATA_0FBC26:
	db "DATA_0FBC26.bin"
DATA_0FBC26End:
DATA_0FBD65:
	db "DATA_0FBD65.bin"
DATA_0FBD65End:
DATA_0FBF1E:
	db "DATA_0FBF1E.bin"
DATA_0FBF1EEnd:
DATA_0FC05B:
	db "DATA_0FC05B.bin"
DATA_0FC05BEnd:
DATA_0FC17A:
	db "DATA_0FC17A.bin"
DATA_0FC17AEnd:
COD_BaxterStockman:
	db "COD_BaxterStockman.bin"
COD_BaxterStockmanEnd:
DATA_0FCA26:
	db "DATA_0FCA26.bin"
DATA_0FCA26End:
DATA_0FCEC3:
	db "DATA_0FCEC3.bin"
DATA_0FCEC3End:
COD_CharacterSelectScreenSprites:
	db "COD_CharacterSelectScreenSprites.bin"
COD_CharacterSelectScreenSpritesEnd:
DATA_0FD76B:
	db "DATA_0FD76B.bin"
DATA_0FD76BEnd:
DATA_0FDD22:
	db "DATA_0FDD22.bin"
DATA_0FDD22End:
DATA_0FDF5C:
	db "DATA_0FDF5C.bin"
DATA_0FDF5CEnd:
COD_KrangBodySprites1:
	db "COD_KrangBodySprites1.bin"
COD_KrangBodySprites1End:
DATA_0FE816:
	db "DATA_0FE816.bin"
DATA_0FE816End:
DATA_0FE875:
	db "DATA_0FE875.bin"
DATA_0FE875End:
DATA_0FEAC3:
	db "DATA_0FEAC3.bin"
DATA_0FEAC3End:
DATA_0FECC7:
	db "DATA_0FECC7.bin"
DATA_0FECC7End:
DATA_0FECF5:
	db "DATA_0FECF5.bin"
DATA_0FECF5End:
DATA_0FF070:
	db "DATA_0FF070.bin"
DATA_0FF070End:
COD_TitleScreenSprites:
	db "COD_TitleScreenSprites.bin"
COD_TitleScreenSpritesEnd:
COD_EveningNewsScreen_AprilONeil:
	db "COD_EveningNewsScreen_AprilONeil.bin"
COD_EveningNewsScreen_AprilONeilEnd:
DATA_0FF679:
if !ROMVer&(!TMNTIV_E) != $00
	db "DATA_0FF679_TMNTIV_E.bin"
else
	db "DATA_0FF679_TMNTIV_U.bin"
endif
DATA_0FF679End:
DATA_0FF8C1:
	db "DATA_0FF8C1.bin"
DATA_0FF8C1End:
DATA_0FFA30:
	db "DATA_0FFA30.bin"
DATA_0FFA30End:
DATA_0FFA91:
	db "DATA_0FFA91.bin"
DATA_0FFA91End:
DATA_0FFBC6:
	db "DATA_0FFBC6.bin"
DATA_0FFBC6End:
DATA_0FFC06:
	db "DATA_0FFC06.bin"
DATA_0FFC06End:
DATA_0FFD8C:
	db "DATA_0FFD8C.bin"
DATA_0FFD8CEnd:

;--------------------------------------------------------------------

SPC700_Engine_TMNTIV:
	db "SPC700_Engine_TMNTIV.bin"
SPC700_Engine_TMNTIVEnd:

;--------------------------------------------------------------------

Music_BigApple3AM:
	db "Music_BigApple3AM.bin"
Music_BigApple3AMEnd:
Music_AlleycatBlues:
	db "Music_AlleycatBlues.bin"
Music_AlleycatBluesEnd:
Music_LevelClear:
	db "Music_LevelClear.bin"
Music_LevelClearEnd:
Music_BossBattle:
	db "Music_BossBattle.bin"
Music_BossBattleEnd:
Music_CharacterSelect:
	db "Music_CharacterSelect.bin"
Music_CharacterSelectEnd:
Music_EveningNewsScene:
	db "Music_EveningNewsScene.bin"
Music_EveningNewsSceneEnd:
Music_EasyOrNormalEnding:
	db "Music_EasyOrNormalEnding.bin"
Music_EasyOrNormalEndingEnd:
Music_StarbaseWhereNoTurtleHasGoneBefore:
	db "Music_StarbaseWhereNoTurtleHasGoneBefore.bin"
Music_StarbaseWhereNoTurtleHasGoneBeforeEnd:
Music_TechnodromeTheFinalShellShock:
	db "Music_TechnodromeTheFinalShellShock.bin"
Music_TechnodromeTheFinalShellShockEnd:
Music_GameOver:
	db "Music_GameOver.bin"
Music_GameOverMusic_GameOverEnd:
Music_IntroScene:
	db "Music_IntroScene.bin"
Music_IntroSceneEnd:
Music_VersusMode:
	db "Music_VersusMode.bin"
Music_VersusModeEnd:
Music_SewerSurfin:
	db "Music_SewerSurfin.bin"
Music_SewerSurfinEnd:
Music_PrehistoricTurtlesauras:
	db "Music_PrehistoricTurtlesauras.bin"
Music_PrehistoricTurtlesaurasEnd:
Music_SkullAndCrossbones:
	db "Music_SkullAndCrossbones.bin"
Music_SkullAndCrossbonesEnd:
Music_BuryMyShellAtWoundedKnee:
	db "Music_BuryMyShellAtWoundedKnee.bin"
Music_BuryMyShellAtWoundedKneeEnd:
Music_NeonNightRiders:
	db "Music_NeonNightRiders.bin"
Music_NeonNightRidersEnd:
Music_VersusModeFinish:
	db "Music_VersusModeFinish.bin"
Music_VersusModeFinishEnd:
Music_SentForwardInTime:
	db "Music_SentForwardInTime.bin"
Music_SentForwardInTimeEnd:
Music_TechnodromeElevator:
	db "Music_TechnodromeElevator.bin"
Music_TechnodromeElevatorEnd:
Music_SuperShredderScreamSound:
	db "Music_SuperShredderScreamSound.bin"
Music_SuperShredderScreamSoundEnd:
Music_KonamiLogoScreen:
	db "Music_KonamiLogoScreen.bin"
Music_KonamiLogoScreenEnd:
Music_TimeTrialVictory:
	db "Music_TimeTrialVictory.bin"
Music_TimeTrialVictoryEnd:
Music_TimeTrialLevel:
	db "Music_TimeTrialLevel.bin"
Music_TimeTrialLevelEnd:
Music_ContinueScreen:
	db "Music_ContinueScreen.bin"
Music_ContinueScreenEnd:
Music_EndingCrowdCheerSound:
	db "Music_EndingCrowdCheerSound.bin"
Music_EndingCrowdCheerSoundEnd:
Music_BossExplosionSound:
	db "Music_BossExplosionSound.bin"
Music_BossExplosionSoundEnd:
Music_UnknownSong1:
	db "Music_UnknownSong1.bin"
Music_UnknownSong1End:
Music_StatueOfLibertyReturned:
	db "Music_StatueOfLibertyReturned.bin"
Music_StatueOfLibertyReturnedEnd:
Music_Credits:
	db "Music_Credits.bin"
Music_CreditsEnd:
Music_TechnodromeLetsKickShell:
	db "Music_TechnodromeLetsKickShell.bin"
Music_TechnodromeLetsKickShellEnd:
Music_TechnodromeAppears:
	db "Music_TechnodromeAppears.bin"
Music_TechnodromeAppearsEnd:
Music_SentBackInTime:
	db "Music_SentBackInTime.bin"
Music_SentBackInTimeEnd:
Music_TimeTrialMenu:
	db "Music_TimeTrialMenu.bin"
Music_TimeTrialMenuEnd:
Music_CastOfCharacters:
	db "Music_CastOfCharacters.bin"
Music_CastOfCharactersEnd:
Music_ShredderSendsTurtlesAway:
	db "Music_ShredderSendsTurtlesAway.bin"
Music_ShredderSendsTurtlesAwayEnd:

;--------------------------------------------------------------------

BRR_VoiceClip_AlleycatBlues:
	db "VoiceClip_AlleycatBlues.brr"
BRR_VoiceClip_AlleycatBluesEnd:
BRR_UnknownSample3:
	db "UnknownSample3.brr"
BRR_UnknownSample3End:
BRR_VoiceClip_SewerSurfin:
	db "VoiceClip_SewerSurfin.brr"
BRR_VoiceClip_SewerSurfinEnd:
BRR_UnknownSample4:
	db "UnknownSample4.brr"
BRR_UnknownSample4End:
BRR_VoiceClip_PrehistoricTurtlesauras:
	db "VoiceClip_PrehistoricTurtlesauras.brr"
BRR_VoiceClip_PrehistoricTurtlesaurasEnd:
BRR_UnknownSample6:
	db "UnknownSample6.brr"
BRR_UnknownSample6End:
BRR_VoiceClip_SkullAndCrossbones:
	db "VoiceClip_SkullAndCrossbones.brr"
BRR_VoiceClip_SkullAndCrossbonesEnd:
BRR_VoiceClip_BuryMyShellAtWoundedKnee:
	db "VoiceClip_BuryMyShellAtWoundedKnee.brr"
BRR_VoiceClip_BuryMyShellAtWoundedKneeEnd:
BRR_VoiceClip_TechnodromeTheFinalShellShock:
	db "VoiceClip_TechnodromeTheFinalShellShock.brr"
BRR_VoiceClip_TechnodromeTheFinalShellShockEnd:
BRR_VoiceClip_NeonNightRiders:
	db "VoiceClip_NeonNightRiders.brr"
BRR_VoiceClip_NeonNightRidersEnd:
BRR_UnknownSample9:
	db "UnknownSample9.brr"
BRR_UnknownSample9End:
BRR_VoiceClip_StarbaseWhereNoTurtleHasGoneBefore:
	db "VoiceClip_StarbaseWhereNoTurtleHasGoneBefore.brr"
BRR_VoiceClip_StarbaseWhereNoTurtleHasGoneBeforeEnd:
BRR_UnknownSample11:
	db "UnknownSample11.brr"
BRR_UnknownSample11End:
BRR_VoiceClip_BigApple3AM:
	db "VoiceClip_BigApple3AM.brr"
BRR_VoiceClip_BigApple3AMEnd:
BRR_UnknownSample2:
	db "UnknownSample2.brr"
BRR_UnknownSample2End:
BRR_VoiceClip_TechnodromeLetsKickShell:
	db "VoiceClip_TechnodromeLetsKickShell.brr"
BRR_VoiceClip_TechnodromeLetsKickShellEnd:
BRR_UnknownSample10:
	db "UnknownSample10.brr"
BRR_UnknownSample10End:
BRR_UnknownSample8:
	db "UnknownSample8.brr"
BRR_UnknownSample8End:
BRR_UnknownSample7:
	db "UnknownSample7.brr"
BRR_UnknownSample7End:
BRR_UnknownSample5:
	db "UnknownSample5.brr"
BRR_UnknownSample5End:
BRR_CrowdCheering:
	db "CrowdCheering.brr"
BRR_CrowdCheeringEnd:
BRR_UnknownSample12:
	db "UnknownSample12.brr"
BRR_UnknownSample12End:
BRR_GlobalSampleBank:
	db "GlobalSampleBank.bin"
BRR_GlobalSampleBankEnd:
BRR_UnknownSample13:
	db "UnknownSample13.brr"
BRR_UnknownSample13End:
BRR_UnknownSample1:
	db "UnknownSample1.brr"
BRR_UnknownSample1End:

;--------------------------------------------------------------------
