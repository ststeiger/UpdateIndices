
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Kostenstelle_ZO_KTKST_KT_UID_ZO_KTKST_Status_ZO_KTKST_DatumVon_ZO_KTKST_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Kostenstelle] ([ZO_KTKST_KT_UID], [ZO_KTKST_Status],[ZO_KTKST_DatumVon], [ZO_KTKST_DatumBis])
CREATE INDEX [IX_T_ZO_AP_Arbeitsplatz_AP_Belegung_ZO_APBEL_Status_ZO_APBEL_Zweitarbeitsplatz_ZO_APBEL_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Arbeitsplatz_AP_Belegung] ([ZO_APBEL_Status], [ZO_APBEL_Zweitarbeitsplatz],[ZO_APBEL_DatumBis]) INCLUDE ([ZO_APBEL_AP_UID], [ZO_APBEL_KT_UID], [ZO_APBEL_DatumVon])
CREATE INDEX [IX_T_AP_Arbeitsplatz_AP_Status] ON [RoomPlanning].[dbo].[T_AP_Arbeitsplatz] ([AP_Status]) INCLUDE ([AP_UID], [AP_RM_UID])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Kostenstelle_ZO_KTKST_KT_UID_ZO_KTKST_Status_ZO_KTKST_DatumVon_ZO_KTKST_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Kostenstelle] ([ZO_KTKST_KT_UID], [ZO_KTKST_Status],[ZO_KTKST_DatumVon], [ZO_KTKST_DatumBis]) INCLUDE ([ZO_KTKST_KST_UID])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Kostenstelle_ZO_KTKST_KT_UID_ZO_KTKST_Status] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Kostenstelle] ([ZO_KTKST_KT_UID], [ZO_KTKST_Status]) INCLUDE ([ZO_KTKST_UID], [ZO_KTKST_KST_UID], [ZO_KTKST_DatumVon], [ZO_KTKST_DatumBis])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit_ZO_KTKOE_KT_UID_ZO_KTKOE_Status_ZO_KTKOE_DatumVon_ZO_KTKOE_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit] ([ZO_KTKOE_KT_UID], [ZO_KTKOE_Status],[ZO_KTKOE_DatumVon], [ZO_KTKOE_DatumBis])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit_ZO_KTKOE_KT_UID_ZO_KTKOE_Status] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit] ([ZO_KTKOE_KT_UID], [ZO_KTKOE_Status])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit_ZO_KTKOE_KT_UID_ZO_KTKOE_Status] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Organisationseinheit] ([ZO_KTKOE_KT_UID], [ZO_KTKOE_Status]) INCLUDE ([ZO_KTKOE_UID], [ZO_KTKOE_KOE_UID], [ZO_KTKOE_DatumVon], [ZO_KTKOE_DatumBis])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Kostenstelle_ZO_KTKST_Status_ZO_KTKST_DatumVon_ZO_KTKST_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Kostenstelle] ([ZO_KTKST_Status],[ZO_KTKST_DatumVon], [ZO_KTKST_DatumBis]) INCLUDE ([ZO_KTKST_KT_UID])
CREATE INDEX [IX_T_ZO_AP_Kontakte_AP_Ref_Kostenstelle_ZO_KTKST_KT_UID_ZO_KTKST_Status] ON [RoomPlanning].[dbo].[T_ZO_AP_Kontakte_AP_Ref_Kostenstelle] ([ZO_KTKST_KT_UID], [ZO_KTKST_Status])
CREATE INDEX [IX_T_UM_Umzug_UMU_UMP_UID_UMU_Status] ON [RoomPlanning].[dbo].[T_UM_Umzug] ([UMU_UMP_UID], [UMU_Status])
CREATE INDEX [IX_T_UM_Umzug_UMU_UMP_UID_UMU_Status] ON [RoomPlanning].[dbo].[T_UM_Umzug] ([UMU_UMP_UID], [UMU_Status]) INCLUDE ([UMU_UID], [UMU_KT_UID], [UMU_SO_UID], [UMU_GB_UID], [UMU_TK_UID], [UMU_GS_UID], [UMU_RM_UID], [UMU_AP_UID], [UMU_UmzugDatum], [UMU_Phase], [UMU_UmzugZeit], [UMU_AP_UID_old], [UMU_Beschaeftigungsgrad], [UMU_Sort])
CREATE INDEX [IX_T_SYS_Language_Forms_LANG_Object_LANG_Fieldname] ON [RoomPlanning].[dbo].[T_SYS_Language_Forms] ([LANG_Object], [LANG_Fieldname])
CREATE INDEX [IX_T_AP_Arbeitsplatz_AP_Status] ON [RoomPlanning].[dbo].[T_AP_Arbeitsplatz] ([AP_Status]) INCLUDE ([AP_RM_UID], [AP_DatumVon], [AP_DatumBis])
CREATE INDEX [IX_T_AP_Arbeitsplatz_AP_Status_AP_DatumVon_AP_DatumBis] ON [RoomPlanning].[dbo].[T_AP_Arbeitsplatz] ([AP_Status],[AP_DatumVon], [AP_DatumBis]) INCLUDE ([AP_UID], [AP_RM_UID], [AP_APK_UID])
CREATE INDEX [IX_T_ZO_AP_Raum_AP_Ref_Nutzungsart_ZO_RMNA_NA_UID_ZO_RMNA_Status_ZO_RMNA_DatumVon_ZO_RMNA_DatumBis] ON [RoomPlanning].[dbo].[T_ZO_AP_Raum_AP_Ref_Nutzungsart] ([ZO_RMNA_NA_UID], [ZO_RMNA_Status],[ZO_RMNA_DatumVon], [ZO_RMNA_DatumBis]) INCLUDE ([ZO_RMNA_RM_UID])
CREATE INDEX [IX_T_ZO_AP_Raum_AP_Ref_Nutzungsart_ZO_RMNA_NA_UID_ZO_RMNA_Status_ZO_RMNA_DatumVon] ON [RoomPlanning].[dbo].[T_ZO_AP_Raum_AP_Ref_Nutzungsart] ([ZO_RMNA_NA_UID], [ZO_RMNA_Status],[ZO_RMNA_DatumVon]) INCLUDE ([ZO_RMNA_RM_UID], [ZO_RMNA_DatumBis])
CREATE INDEX [IX_T_AP_Arbeitsplatz_AP_RM_UID_AP_Status_AP_DatumVon_AP_DatumBis] ON [RoomPlanning].[dbo].[T_AP_Arbeitsplatz] ([AP_RM_UID], [AP_Status],[AP_DatumVon], [AP_DatumBis])
CREATE INDEX [IX_T_AP_Arbeitsplatz_AP_Status_AP_DatumVon_AP_DatumBis] ON [RoomPlanning].[dbo].[T_AP_Arbeitsplatz] ([AP_Status],[AP_DatumVon], [AP_DatumBis]) INCLUDE ([AP_RM_UID])