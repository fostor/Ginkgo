USE [GinkgoDb]
GO
SET IDENTITY_INSERT [dbo].[AbpEditions] ON 

INSERT [dbo].[AbpEditions] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name]) VALUES (1, CAST(N'2019-03-04T10:06:14.4239112' AS DateTime2), NULL, NULL, NULL, N'Standard', 0, NULL, NULL, N'Standard')
SET IDENTITY_INSERT [dbo].[AbpEditions] OFF
SET IDENTITY_INSERT [dbo].[AbpUsers] ON 

INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (1, 0, NULL, N'7a79c40d-168f-4f0f-b98b-3bb62a7ec216', CAST(N'2019-03-04T10:06:15.1906530' AS DateTime2), NULL, NULL, NULL, N'admin@aspnetboilerplate.com', NULL, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, N'admin', N'ADMIN@ASPNETBOILERPLATE.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEC7tefdqt5VyqZ5tdYyf/xRRbDega9s9GNE9hE9gnewCq8/8D7uLna6tfoyfNXNeXg==', NULL, NULL, N'e967965a-f465-1545-8fee-39ec58a07297', N'admin', NULL, N'admin')
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (2, 0, NULL, N'985fc3ff-4df0-4b2f-8711-f2336e947fc4', CAST(N'2019-03-04T10:06:15.5616041' AS DateTime2), NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEL0ylzN4IfQTPJkeX72lEBVJ4ppJLzYnY33lQcKonPpeTctyOVSlSCoTy3JiGywfxQ==', NULL, NULL, N'f94cc110-8728-082b-4f4b-39ec58a07409', N'admin', 1, N'admin')
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (3, 0, NULL, N'52754863-8aed-44e4-9a69-6e43b7f1da15', CAST(N'2019-03-09T16:07:02.9930849' AS DateTime2), 2, NULL, NULL, N'user1@defaulttenant.com', NULL, 1, 0, 1, 1, 0, 0, CAST(N'2019-03-09T16:08:58.9719802' AS DateTime2), 2, NULL, N'光', N'USER1@DEFAULTTENANT.COM', N'USER1', N'AQAAAAEAACcQAAAAEDuPUOcruZhk/pS/MFNjJeK8jPblRerE3nMIdM0+0E0LAg/9zwf4thoFT/jQacYmow==', NULL, NULL, N'J7YXUMVCT3OMFFFNLDCITO777A5AP3DJ', N'阳', 1, N'User1')
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (4, 0, NULL, N'0c4c0a86-1775-4889-a668-eaa0f25a885b', CAST(N'2019-03-09T16:07:45.3623107' AS DateTime2), 2, NULL, NULL, N'user2@defaulttenant.com', NULL, 1, 0, 1, 1, 0, 0, CAST(N'2019-03-09T16:09:05.1159874' AS DateTime2), 2, NULL, N'地', N'USER2@DEFAULTTENANT.COM', N'USER2', N'AQAAAAEAACcQAAAAEA8Vv64orLnw43GOdXXbMLLjHOmlUkmu/PeBUgd4pFkc6Je+A10Jhp1wlaEKlDXIfQ==', NULL, NULL, N'UHAK2NDUTR5XVZYKLK7NKSMZ5ABKK6YS', N'大', 1, N'User2')
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (5, 0, NULL, N'af9e65f4-9828-4364-8d0d-1c57b041c1fa', CAST(N'2019-03-09T16:08:10.0683635' AS DateTime2), 2, NULL, NULL, N'user3@defaulttenant.com', NULL, 1, 0, 1, 1, 0, 0, CAST(N'2019-03-09T16:09:10.2911230' AS DateTime2), 2, NULL, N'滩', N'USER3@DEFAULTTENANT.COM', N'USER3', N'AQAAAAEAACcQAAAAEC5fiE3FpsvWP3dPQMVN5xNdFmFytcc0pyUEfb/0XvPopfYz5oYKGQdreYrPbzl07g==', NULL, NULL, N'ZCPU3IRM4KUUSFBRGLEVIFYQJ2RAY4UK', N'沙', 1, N'User3')
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (6, 0, NULL, N'd660e704-1fc6-4e9d-adb7-131cabe6d1e7', CAST(N'2019-03-09T16:08:47.3590405' AS DateTime2), 2, NULL, NULL, N'user4@defaulttenant.com', NULL, 1, 0, 1, 1, 0, 0, CAST(N'2019-03-09T16:09:15.4316024' AS DateTime2), 2, NULL, N'客', N'USER4@DEFAULTTENANT.COM', N'USER4', N'AQAAAAEAACcQAAAAEJLP7qh0Lz8bq+N8tdCmEwQABEUpYwHmS/yaMRFsWvD5TRrUJSBbDe7vhCFijiBY3Q==', NULL, NULL, N'WB6TSBLJMOIRJM5WUKG7LL2SWO7UXXFN', N'游', 1, N'User4')
SET IDENTITY_INSERT [dbo].[AbpUsers] OFF
SET IDENTITY_INSERT [dbo].[AbpTenants] ON 

INSERT [dbo].[AbpTenants] ([Id], [ConnectionString], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EditionId], [IsActive], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenancyName]) VALUES (1, NULL, CAST(N'2019-03-04T10:06:15.3572841' AS DateTime2), NULL, NULL, NULL, 1, 1, 0, NULL, NULL, N'Default', N'Default')
SET IDENTITY_INSERT [dbo].[AbpTenants] OFF
SET IDENTITY_INSERT [dbo].[AbpUserRoles] ON 

INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (1, CAST(N'2019-03-04T10:06:15.2720856' AS DateTime2), NULL, 1, NULL, 1)
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (2, CAST(N'2019-03-04T10:06:15.5753985' AS DateTime2), NULL, 2, 1, 2)
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (3, CAST(N'2019-03-09T16:08:58.9581527' AS DateTime2), 2, 4, 1, 3)
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (4, CAST(N'2019-03-09T16:09:05.1127330' AS DateTime2), 2, 4, 1, 4)
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (5, CAST(N'2019-03-09T16:09:10.2879087' AS DateTime2), 2, 4, 1, 5)
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (6, CAST(N'2019-03-09T16:09:15.4274091' AS DateTime2), 2, 4, 1, 6)
SET IDENTITY_INSERT [dbo].[AbpUserRoles] OFF
SET IDENTITY_INSERT [dbo].[AbpSettings] ON 

INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (1, CAST(N'2019-03-04T10:06:15.2997440' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromAddress', NULL, NULL, N'admin@mydomain.com')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (2, CAST(N'2019-03-04T10:06:15.3289216' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromDisplayName', NULL, NULL, N'mydomain.com mailer')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (3, CAST(N'2019-03-04T10:06:15.3341206' AS DateTime2), NULL, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, NULL, N'en')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (4, CAST(N'2019-03-04T10:07:16.2362683' AS DateTime2), 1, CAST(N'2019-03-05T13:48:11.6026440' AS DateTime2), 1, N'App.UiTheme', NULL, 1, N'teal')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (5, CAST(N'2019-03-05T11:03:39.9635076' AS DateTime2), 2, NULL, NULL, N'Abp.Localization.DefaultLanguageName', 1, 2, N'zh-Hans')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (8, CAST(N'2019-03-06T17:17:10.0579222' AS DateTime2), 1, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, 1, N'zh-Hans')
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (9, CAST(N'2019-03-07T14:26:17.7584999' AS DateTime2), 2, CAST(N'2019-03-07T14:35:19.0275705' AS DateTime2), 2, N'App.UiTheme', 1, 2, N'light-green')
SET IDENTITY_INSERT [dbo].[AbpSettings] OFF
SET IDENTITY_INSERT [dbo].[AbpRoles] ON 

INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (1, N'c21303a2-112a-45af-8417-d695c20b4a07', CAST(N'2019-03-04T10:06:14.9886215' AS DateTime2), NULL, NULL, NULL, N'Admin', 1, 0, 1, CAST(N'2019-03-07T10:58:08.1147542' AS DateTime2), 1, N'Admin', N'ADMIN', NULL, N'')
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (2, N'66f8996d-5476-4825-b748-04293b276064', CAST(N'2019-03-04T10:06:15.4459182' AS DateTime2), NULL, NULL, NULL, N'Admin', 0, 0, 1, CAST(N'2019-03-07T14:12:32.1933086' AS DateTime2), 2, N'Admin', N'ADMIN', 1, N'')
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (3, N'5175e484-7b46-481b-a6a7-e0730aafdf52', CAST(N'2019-03-06T14:18:26.9888812' AS DateTime2), 1, NULL, NULL, N'Test Role', 0, 0, 0, CAST(N'2019-03-06T14:18:50.4263700' AS DateTime2), 1, N'TestRole', N'TESTROLE', NULL, N'')
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (4, N'f99f9052-1c01-4cb2-9c44-21d37fe04122', CAST(N'2019-03-09T16:05:27.9012526' AS DateTime2), 2, NULL, NULL, N'TaskTester', 0, 0, 0, CAST(N'2019-03-09T16:05:49.1949368' AS DateTime2), 2, N'TaskTester', N'TASKTESTER', 1, N'流程测试角色')
SET IDENTITY_INSERT [dbo].[AbpRoles] OFF
SET IDENTITY_INSERT [dbo].[AbpPermissions] ON 

INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (1, CAST(N'2019-03-04T10:06:15.1030144' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (2, CAST(N'2019-03-04T10:06:15.1431329' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Roles', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (3, CAST(N'2019-03-04T10:06:15.1433181' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Tenants', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (4, CAST(N'2019-03-04T10:06:15.5018350' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (5, CAST(N'2019-03-04T10:06:15.5019919' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Roles', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (6, CAST(N'2019-03-06T13:39:55.7171629' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (7, CAST(N'2019-03-06T13:39:55.7310305' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Tenant', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (8, CAST(N'2019-03-06T13:39:55.7355678' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.SysObject', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (9, CAST(N'2019-03-06T13:39:55.7381371' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Role', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (10, CAST(N'2019-03-06T13:39:55.7407715' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.User', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (11, CAST(N'2019-03-06T13:39:55.7460949' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Localization', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (12, CAST(N'2019-03-06T13:39:55.7486643' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Sequence', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (13, CAST(N'2019-03-06T13:39:55.7507907' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.DataDictionary', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (14, CAST(N'2019-03-06T14:18:50.5551121' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin', NULL, 3, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (15, CAST(N'2019-03-06T14:18:50.5699541' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Sequence', NULL, 3, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (16, CAST(N'2019-03-06T14:18:50.5729345' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.DataDictionary', NULL, 3, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (17, CAST(N'2019-03-07T10:58:08.2121893' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (18, CAST(N'2019-03-07T10:58:08.2257082' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.TaskTemplate', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (19, CAST(N'2019-03-07T10:58:08.2277205' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.TaskRole', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (20, CAST(N'2019-03-07T10:58:08.2297210' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.MyFlow', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (21, CAST(N'2019-03-07T10:58:08.2316505' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.MyRequest', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (22, CAST(N'2019-03-07T10:58:08.2336483' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.ToDoList', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (23, CAST(N'2019-03-07T10:58:08.2375563' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.FlowMonitor', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (24, CAST(N'2019-03-07T10:58:08.2395905' AS DateTime2), 1, N'RolePermissionSetting', 1, N'TaskFlow.InstanceList', NULL, 1, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (27, CAST(N'2019-03-07T00:00:00.0000000' AS DateTime2), 1, N'RolePermissionSetting', 1, N'Admin.Role', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (29, CAST(N'2019-03-07T00:00:00.0000000' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Admin', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (30, CAST(N'2019-03-07T00:00:00.0000000' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Admin.User', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (31, CAST(N'2019-03-07T14:12:32.3275627' AS DateTime2), 2, N'RolePermissionSetting', 1, N'Admin.Localization', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (32, CAST(N'2019-03-07T14:12:32.3441497' AS DateTime2), 2, N'RolePermissionSetting', 1, N'Admin.Sequence', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (33, CAST(N'2019-03-07T14:12:32.3479619' AS DateTime2), 2, N'RolePermissionSetting', 1, N'Admin.DataDictionary', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (34, CAST(N'2019-03-07T14:12:32.3659310' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (35, CAST(N'2019-03-07T14:12:32.3696777' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.TaskTemplate', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (36, CAST(N'2019-03-07T14:12:32.3720939' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.TaskRole', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (37, CAST(N'2019-03-07T14:12:32.3747484' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.MyFlow', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (38, CAST(N'2019-03-07T14:12:32.3771595' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.MyRequest', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (39, CAST(N'2019-03-07T14:12:32.3797822' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.ToDoList', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (40, CAST(N'2019-03-07T14:12:32.3837003' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.FlowMonitor', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (41, CAST(N'2019-03-07T14:12:32.3859177' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.InstanceList', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (42, CAST(N'2019-03-07T14:12:32.3881578' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.Sample', 1, 2, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (43, CAST(N'2019-03-09T16:05:49.2827365' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (44, CAST(N'2019-03-09T16:05:49.2951838' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.TaskTemplate', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (45, CAST(N'2019-03-09T16:05:49.2996739' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.TaskRole', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (46, CAST(N'2019-03-09T16:05:49.3017753' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.MyFlow', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (47, CAST(N'2019-03-09T16:05:49.3036592' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.MyRequest', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (48, CAST(N'2019-03-09T16:05:49.3054863' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.ToDoList', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (49, CAST(N'2019-03-09T16:05:49.3073025' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.FlowMonitor', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (50, CAST(N'2019-03-09T16:05:49.3090959' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.InstanceList', 1, 4, NULL)
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (51, CAST(N'2019-03-09T16:05:49.3133889' AS DateTime2), 2, N'RolePermissionSetting', 1, N'TaskFlow.Sample', 1, 4, NULL)
SET IDENTITY_INSERT [dbo].[AbpPermissions] OFF
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170424115119_Initial_Migrations', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170608053244_Upgraded_To_Abp_2_1_0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170621153937_Added_Description_And_IsActive_To_Role', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170703134115_Remove_IsActive_From_Role', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170804083601_Upgraded_To_Abp_v2.2.2', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180201051646_Upgraded_To_Abp_v3.4.0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320131229_Upgraded_To_Abp_v3_5_0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180509121141_Upgraded_To_Abp_v3_6_1', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180726102703_Upgrade_ABP_3.8.0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180731132139_Upgrade_ABP_3.8.1', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180927062608_Upgrade_ABP_3.8.3', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181013103914_Upgraded_To_Abp_v3_9_0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208051931_Upgrade_ABP_4_2_0', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190304061644_AddSysTaskModule', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190304100458_UpdateTaskFlowUri', N'2.2.1-servicing-10028')
SET IDENTITY_INSERT [dbo].[AbpLanguages] ON 

INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (1, CAST(N'2019-03-04T10:06:14.8456886' AS DateTime2), NULL, NULL, NULL, N'English', N'famfamfam-flags gb', 0, NULL, NULL, N'en', NULL, 0)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (2, CAST(N'2019-03-04T10:06:14.8461702' AS DateTime2), NULL, NULL, NULL, N'العربية', N'famfamfam-flags sa', 0, NULL, NULL, N'ar', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (3, CAST(N'2019-03-04T10:06:14.8461711' AS DateTime2), NULL, NULL, NULL, N'German', N'famfamfam-flags de', 0, NULL, NULL, N'de', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (4, CAST(N'2019-03-04T10:06:14.8461712' AS DateTime2), NULL, NULL, NULL, N'Italiano', N'famfamfam-flags it', 0, NULL, NULL, N'it', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (5, CAST(N'2019-03-04T10:06:14.8461714' AS DateTime2), NULL, NULL, NULL, N'Français', N'famfamfam-flags fr', 0, NULL, NULL, N'fr', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (6, CAST(N'2019-03-04T10:06:14.8461725' AS DateTime2), NULL, NULL, NULL, N'Português', N'famfamfam-flags br', 0, NULL, NULL, N'pt-BR', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (7, CAST(N'2019-03-04T10:06:14.8461727' AS DateTime2), NULL, NULL, NULL, N'Türkçe', N'famfamfam-flags tr', 0, NULL, NULL, N'tr', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (8, CAST(N'2019-03-04T10:06:14.8461728' AS DateTime2), NULL, NULL, NULL, N'Русский', N'famfamfam-flags ru', 0, NULL, NULL, N'ru', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (9, CAST(N'2019-03-04T10:06:14.8461729' AS DateTime2), NULL, NULL, NULL, N'简体中文', N'famfamfam-flags cn', 0, NULL, NULL, N'zh-Hans', NULL, 0)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (10, CAST(N'2019-03-04T10:06:14.8461731' AS DateTime2), NULL, NULL, NULL, N'Español México', N'famfamfam-flags mx', 0, NULL, NULL, N'es-MX', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (11, CAST(N'2019-03-04T10:06:14.8461732' AS DateTime2), NULL, NULL, NULL, N'Nederlands', N'famfamfam-flags nl', 0, NULL, NULL, N'nl', NULL, 1)
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (12, CAST(N'2019-03-04T10:06:14.8461733' AS DateTime2), NULL, NULL, NULL, N'日本語', N'famfamfam-flags jp', 0, NULL, NULL, N'ja', NULL, 1)
SET IDENTITY_INSERT [dbo].[AbpLanguages] OFF

SET IDENTITY_INSERT [dbo].[AbpLanguageTexts] ON 
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (1, CAST(N'2019-03-05T16:27:45.2966247' AS DateTime2), 1, N'Localization', N'en', NULL, NULL, N'Ginkgo', NULL, N'Localization')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (2, CAST(N'2019-03-05T16:27:45.3995911' AS DateTime2), 1, N'Localization', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'本地化')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (3, CAST(N'2019-03-05T16:28:45.8723464' AS DateTime2), 1, N'LanguageName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Language')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (4, CAST(N'2019-03-05T16:28:45.9344533' AS DateTime2), 1, N'LanguageName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'语言')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (5, CAST(N'2019-03-05T16:29:23.3756251' AS DateTime2), 1, N'Save', N'en', NULL, NULL, N'Ginkgo', NULL, N'Save')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (6, CAST(N'2019-03-05T16:29:23.4452000' AS DateTime2), 1, N'Save', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'保存')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (7, CAST(N'2019-03-05T16:32:48.5451787' AS DateTime2), 1, N'LanguageKey', N'en', NULL, NULL, N'Ginkgo', NULL, N'Language Key')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (8, CAST(N'2019-03-05T16:32:48.6044970' AS DateTime2), 1, N'LanguageKey', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'语言键值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (9, CAST(N'2019-03-05T16:35:48.0000000' AS DateTime2), 1, N'LanguageValue', N'en', CAST(N'2019-03-22T23:28:44.8788359' AS DateTime2), 1, N'Ginkgo', NULL, N'Text')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (10, CAST(N'2019-03-05T16:35:48.3683749' AS DateTime2), 1, N'LanguageValue', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'文本')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (13, CAST(N'2019-03-05T16:45:55.0000000' AS DateTime2), 1, N'zh-Hans', N'en', CAST(N'2019-03-22T23:28:50.2197481' AS DateTime2), 1, N'Ginkgo', NULL, N'Chinese')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (14, CAST(N'2019-03-05T16:45:55.0000000' AS DateTime2), 1, N'zh-Hans', N'zh-Hans', CAST(N'2019-03-05T16:46:51.9477361' AS DateTime2), 1, N'Ginkgo', NULL, N'中文')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (15, CAST(N'2019-03-05T16:46:42.8051820' AS DateTime2), 1, N'en', N'en', NULL, NULL, N'Ginkgo', NULL, N'English')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (16, CAST(N'2019-03-05T16:46:42.8688928' AS DateTime2), 1, N'en', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'英语')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (17, CAST(N'2019-03-05T16:48:03.9457265' AS DateTime2), 1, N'AddLanguageText', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add language text')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (18, CAST(N'2019-03-05T16:48:04.0388130' AS DateTime2), 1, N'AddLanguageText', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'添加语言翻译')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (19, CAST(N'2019-03-05T16:48:49.0141613' AS DateTime2), 1, N'EditLanguageText', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit language text')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (20, CAST(N'2019-03-05T16:48:49.0835769' AS DateTime2), 1, N'EditLanguageText', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'修改语言翻译')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (21, CAST(N'2019-03-11T16:20:30.5642185' AS DateTime2), 2, N'Taskflows', N'en', NULL, NULL, N'Ginkgo', 1, N'Task & Flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (22, CAST(N'2019-03-11T16:20:30.6894846' AS DateTime2), 2, N'Taskflows', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'任务流程')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (23, CAST(N'2019-03-11T16:21:47.5400390' AS DateTime2), 2, N'TaskTemplates', N'en', NULL, NULL, N'Ginkgo', 1, N'Task templates')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (24, CAST(N'2019-03-11T16:21:47.6222864' AS DateTime2), 2, N'TaskTemplates', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (25, CAST(N'2019-03-11T16:22:15.9345128' AS DateTime2), 2, N'TaskRoles', N'en', NULL, NULL, N'Ginkgo', 1, N'Task roles')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (26, CAST(N'2019-03-11T16:22:15.9870842' AS DateTime2), 2, N'TaskRoles', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (27, CAST(N'2019-03-11T16:23:56.7949979' AS DateTime2), 2, N'MyFlows', N'en', NULL, NULL, N'Ginkgo', 1, N'My flows config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (28, CAST(N'2019-03-11T16:23:56.8686203' AS DateTime2), 2, N'MyFlows', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程个性化')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (29, CAST(N'2019-03-11T16:24:26.3677365' AS DateTime2), 2, N'MyRequests', N'en', NULL, NULL, N'Ginkgo', 1, N'My requests')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (30, CAST(N'2019-03-11T16:24:26.4595708' AS DateTime2), 2, N'MyRequests', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'我的申请')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (31, CAST(N'2019-03-11T16:25:09.8173926' AS DateTime2), 2, N'ToDoList', N'en', NULL, NULL, N'Ginkgo', 1, N'To do list')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (32, CAST(N'2019-03-11T16:25:09.9066869' AS DateTime2), 2, N'ToDoList', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'待办任务')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (33, CAST(N'2019-03-11T16:25:39.8369083' AS DateTime2), 2, N'FlowMonitor', N'en', NULL, NULL, N'Ginkgo', 1, N'Flow monitor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (34, CAST(N'2019-03-11T16:25:39.8884161' AS DateTime2), 2, N'FlowMonitor', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程监控')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (35, CAST(N'2019-03-11T16:26:55.3812837' AS DateTime2), 2, N'FlowInstanceList', N'en', NULL, NULL, N'Ginkgo', 1, N'Query tasks')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (36, CAST(N'2019-03-11T16:26:55.4672583' AS DateTime2), 2, N'FlowInstanceList', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'任务查询')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (37, CAST(N'2019-03-11T16:29:08.0000000' AS DateTime2), 2, N'TaskSample', N'en', CAST(N'2019-03-22T23:04:42.2145427' AS DateTime2), 2, N'Ginkgo', 1, N'Task sample')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (38, CAST(N'2019-03-11T16:29:08.3548459' AS DateTime2), 2, N'TaskSample', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'任务演示')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (39, CAST(N'2019-03-11T16:31:28.6365798' AS DateTime2), 2, N'TaskCode', N'en', NULL, NULL, N'Ginkgo', 1, N'Task code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (40, CAST(N'2019-03-11T16:31:28.0000000' AS DateTime2), 2, N'TaskCode', N'zh-Hans', CAST(N'2019-03-11T16:33:46.5260708' AS DateTime2), 2, N'Ginkgo', 1, N'流程类别码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (41, CAST(N'2019-03-11T16:33:13.9298571' AS DateTime2), 2, N'TaskName', N'en', NULL, NULL, N'Ginkgo', 1, N'Task name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (42, CAST(N'2019-03-11T16:33:13.0000000' AS DateTime2), 2, N'TaskName', N'zh-Hans', CAST(N'2019-03-11T16:33:59.0684941' AS DateTime2), 2, N'Ginkgo', 1, N'流程类别名')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (43, CAST(N'2019-03-11T16:35:06.6817585' AS DateTime2), 2, N'TaskDescription', N'en', NULL, NULL, N'Ginkgo', 1, N'Description')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (44, CAST(N'2019-03-11T16:35:06.7492872' AS DateTime2), 2, N'TaskDescription', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程描述')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (45, CAST(N'2019-03-11T16:36:07.6646235' AS DateTime2), 2, N'UseConditionControl', N'en', NULL, NULL, N'Ginkgo', 1, N'Use condition control')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (46, CAST(N'2019-03-11T16:36:07.7448880' AS DateTime2), 2, N'UseConditionControl', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'使用条件控制')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (47, CAST(N'2019-03-11T16:38:05.9035231' AS DateTime2), 2, N'CanAppendPhase', N'en', NULL, NULL, N'Ginkgo', 1, N'Can append phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (48, CAST(N'2019-03-11T16:38:05.9755038' AS DateTime2), 2, N'CanAppendPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可追加节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (49, CAST(N'2019-03-11T16:38:27.1608792' AS DateTime2), 2, N'Revocable', N'en', NULL, NULL, N'Ginkgo', 1, N'Revocable')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (50, CAST(N'2019-03-11T16:38:27.2133170' AS DateTime2), 2, N'Revocable', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可撤回')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (51, CAST(N'2019-03-11T16:39:21.6289259' AS DateTime2), 2, N'KeyInfoTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Key info template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (52, CAST(N'2019-03-11T16:39:21.0000000' AS DateTime2), 2, N'KeyInfoTemplate', N'zh-Hans', CAST(N'2019-03-11T17:41:59.2242910' AS DateTime2), 2, N'Ginkgo', 1, N'概要信息模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (53, CAST(N'2019-03-11T16:40:08.7984879' AS DateTime2), 2, N'FormUriTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Form uri template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (54, CAST(N'2019-03-11T16:40:08.8915130' AS DateTime2), 2, N'FormUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'表单Uri模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (55, CAST(N'2019-03-11T16:42:51.7598640' AS DateTime2), 2, N'IsDefaultForAllUser', N'en', NULL, NULL, N'Ginkgo', 1, N'Is default for all user')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (56, CAST(N'2019-03-11T16:42:51.8199258' AS DateTime2), 2, N'IsDefaultForAllUser', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'所有用户均可发起')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (57, CAST(N'2019-03-11T16:43:41.7190346' AS DateTime2), 2, N'FinalServiceTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Final service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (58, CAST(N'2019-03-11T16:43:41.7777254' AS DateTime2), 2, N'FinalServiceTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'Final service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (59, CAST(N'2019-03-11T16:44:22.8183249' AS DateTime2), 2, N'StartServiceTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Start service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (60, CAST(N'2019-03-11T16:44:22.8704406' AS DateTime2), 2, N'StartServiceTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'Start service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (61, CAST(N'2019-03-11T16:45:57.1320959' AS DateTime2), 2, N'EditFlow', N'en', NULL, NULL, N'Ginkgo', 1, N'Edit flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (62, CAST(N'2019-03-11T16:45:57.2145480' AS DateTime2), 2, N'EditFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'修改流程配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (63, CAST(N'2019-03-11T16:46:30.8570444' AS DateTime2), 2, N'AddFlow', N'en', NULL, NULL, N'Ginkgo', 1, N'Add flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (64, CAST(N'2019-03-11T16:46:30.9109596' AS DateTime2), 2, N'AddFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'新增流程配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (65, CAST(N'2019-03-11T16:48:04.8625200' AS DateTime2), 2, N'MoreTaskTemplateInfo', N'en', NULL, NULL, N'Ginkgo', 1, N'More template info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (66, CAST(N'2019-03-11T16:48:04.9145444' AS DateTime2), 2, N'MoreTaskTemplateInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'更多配置信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (67, CAST(N'2019-03-11T16:48:59.5386737' AS DateTime2), 2, N'NotifyTitleTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Notify title template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (68, CAST(N'2019-03-11T16:48:59.6336909' AS DateTime2), 2, N'NotifyTitleTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'通知标题模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (69, CAST(N'2019-03-11T16:49:35.6348051' AS DateTime2), 2, N'NotifyContentTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Notify content template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (70, CAST(N'2019-03-11T16:49:35.7060273' AS DateTime2), 2, N'NotifyContentTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'通知内容模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (71, CAST(N'2019-03-11T16:50:06.3697849' AS DateTime2), 2, N'ReturnType', N'en', NULL, NULL, N'Ginkgo', 1, N'Return type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (72, CAST(N'2019-03-11T16:50:06.4304962' AS DateTime2), 2, N'ReturnType', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'退回模式')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (73, CAST(N'2019-03-11T16:52:23.1288199' AS DateTime2), 2, N'ResubmitType', N'en', NULL, NULL, N'Ginkgo', 1, N'Resubmit type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (74, CAST(N'2019-03-11T16:52:23.1868553' AS DateTime2), 2, N'ResubmitType', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'重新送审方式')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (75, CAST(N'2019-03-11T16:53:30.6937091' AS DateTime2), 2, N'Condition1Name', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition1 Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (76, CAST(N'2019-03-11T16:53:30.7734323' AS DateTime2), 2, N'Condition1Name', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件1名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (77, CAST(N'2019-03-11T16:53:58.1955953' AS DateTime2), 2, N'Condition2Name', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition2 name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (78, CAST(N'2019-03-11T16:53:58.2950124' AS DateTime2), 2, N'Condition2Name', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件2名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (79, CAST(N'2019-03-11T16:54:23.0239905' AS DateTime2), 2, N'Condition3Name', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition3 name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (80, CAST(N'2019-03-11T16:54:23.0940269' AS DateTime2), 2, N'Condition3Name', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件3名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (81, CAST(N'2019-03-11T16:59:29.0823042' AS DateTime2), 2, N'PhaseCode', N'en', NULL, NULL, N'Ginkgo', 1, N'Phase Code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (82, CAST(N'2019-03-11T16:59:29.1762891' AS DateTime2), 2, N'PhaseCode', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'节点代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (83, CAST(N'2019-03-11T16:59:49.1021540' AS DateTime2), 2, N'PhaseName', N'en', NULL, NULL, N'Ginkgo', 1, N'Phase Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (84, CAST(N'2019-03-11T16:59:49.1601849' AS DateTime2), 2, N'PhaseName', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'节点名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (85, CAST(N'2019-03-11T17:06:51.8575741' AS DateTime2), 2, N'TaskRoleConfig', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Role Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (86, CAST(N'2019-03-11T17:06:51.9170972' AS DateTime2), 2, N'TaskRoleConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'角色设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (87, CAST(N'2019-03-11T17:09:32.9090052' AS DateTime2), 2, N'TaskUsersConfig', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Users Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (88, CAST(N'2019-03-11T17:09:32.9688745' AS DateTime2), 2, N'TaskUsersConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'用户设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (89, CAST(N'2019-03-11T17:09:53.6078723' AS DateTime2), 2, N'SelectableUsers', N'en', NULL, NULL, N'Ginkgo', 1, N'Selectable Users')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (90, CAST(N'2019-03-11T17:09:53.6681234' AS DateTime2), 2, N'SelectableUsers', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可选账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (91, CAST(N'2019-03-11T17:10:17.1547228' AS DateTime2), 2, N'SelectionUsers', N'en', NULL, NULL, N'Ginkgo', 1, N'Selection Users')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (92, CAST(N'2019-03-11T17:10:17.2363585' AS DateTime2), 2, N'SelectionUsers', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'已选账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (93, CAST(N'2019-03-11T17:10:47.8570995' AS DateTime2), 2, N'IsCountersignPhase', N'en', NULL, NULL, N'Ginkgo', 1, N'Is Countersign Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (94, CAST(N'2019-03-11T17:10:47.9638315' AS DateTime2), 2, N'IsCountersignPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'会签节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (95, CAST(N'2019-03-11T17:11:17.2762798' AS DateTime2), 2, N'IsSignInPhase', N'en', NULL, NULL, N'Ginkgo', 1, N'IsS ign In Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (96, CAST(N'2019-03-11T17:11:17.3425247' AS DateTime2), 2, N'IsSignInPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'签收节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (97, CAST(N'2019-03-11T17:13:37.8136534' AS DateTime2), 2, N'CanUpdateForm', N'en', NULL, NULL, N'Ginkgo', 1, N'Can Update Form')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (98, CAST(N'2019-03-11T17:13:37.8839233' AS DateTime2), 2, N'CanUpdateForm', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可修改表单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (99, CAST(N'2019-03-11T17:14:10.2583315' AS DateTime2), 2, N'UpdateFormUriTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Update Form Uri Template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (100, CAST(N'2019-03-11T17:14:10.3253832' AS DateTime2), 2, N'UpdateFormUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'表单修改模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (101, CAST(N'2019-03-11T17:15:00.7855799' AS DateTime2), 2, N'CanBatchHandle', N'en', NULL, NULL, N'Ginkgo', 1, N'Can Batch Handle')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (102, CAST(N'2019-03-11T17:15:00.8708752' AS DateTime2), 2, N'CanBatchHandle', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可批量审批')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (103, CAST(N'2019-03-11T17:15:29.4757913' AS DateTime2), 2, N'BatchHandleUriTemplate', N'en', NULL, NULL, N'Ginkgo', 1, N'Batch Handle Uri Template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (104, CAST(N'2019-03-11T17:15:29.5329167' AS DateTime2), 2, N'BatchHandleUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'批量审批模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (105, CAST(N'2019-03-11T17:16:07.7456801' AS DateTime2), 2, N'CanReject', N'en', NULL, NULL, N'Ginkgo', 1, N'Can Reject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (106, CAST(N'2019-03-11T17:16:07.8287496' AS DateTime2), 2, N'CanReject', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可终止(拒签)')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (107, CAST(N'2019-03-11T17:17:11.1692914' AS DateTime2), 2, N'Condition1EndValue', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition1 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (108, CAST(N'2019-03-11T17:17:11.2282526' AS DateTime2), 2, N'Condition1EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件1终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (109, CAST(N'2019-03-11T17:17:36.7456915' AS DateTime2), 2, N'Condition2EndValue', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition2 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (110, CAST(N'2019-03-11T17:17:36.8115182' AS DateTime2), 2, N'Condition2EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件2终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (111, CAST(N'2019-03-11T17:18:01.2111240' AS DateTime2), 2, N'Condition3EndValue', N'en', NULL, NULL, N'Ginkgo', 1, N'Condition3 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (112, CAST(N'2019-03-11T17:18:01.2672882' AS DateTime2), 2, N'Condition3EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'条件3终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (113, CAST(N'2019-03-11T17:19:27.4236374' AS DateTime2), 2, N'EditTaskPhase', N'en', NULL, NULL, N'Ginkgo', 1, N'EditT ask Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (114, CAST(N'2019-03-11T17:19:27.4825862' AS DateTime2), 2, N'EditTaskPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'节点配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (115, CAST(N'2019-03-11T17:20:02.0950815' AS DateTime2), 2, N'AddTaskPhase', N'en', NULL, NULL, N'Ginkgo', 1, N'Add Task Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (116, CAST(N'2019-03-11T17:20:02.1521983' AS DateTime2), 2, N'AddTaskPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'新增节点配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (117, CAST(N'2019-03-11T17:24:32.5875501' AS DateTime2), 2, N'View', N'en', NULL, NULL, N'Ginkgo', 1, N'View')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (118, CAST(N'2019-03-11T17:24:32.6426456' AS DateTime2), 2, N'View', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'查看')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (119, CAST(N'2019-03-11T17:25:21.2207515' AS DateTime2), 2, N'RoleCode', N'en', NULL, NULL, N'Ginkgo', 1, N'Role Code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (120, CAST(N'2019-03-11T17:25:21.3043130' AS DateTime2), 2, N'RoleCode', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'角色代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (121, CAST(N'2019-03-11T17:26:29.3613463' AS DateTime2), 2, N'TaskRoleList', N'en', NULL, NULL, N'Ginkgo', 1, N'Task role list')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (122, CAST(N'2019-03-11T17:26:29.4154549' AS DateTime2), 2, N'TaskRoleList', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程角色列表')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (123, CAST(N'2019-03-11T17:27:15.2144267' AS DateTime2), 2, N'AddTaskRole', N'en', NULL, NULL, N'Ginkgo', 1, N'Add Task Role')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (124, CAST(N'2019-03-11T17:27:15.3252465' AS DateTime2), 2, N'AddTaskRole', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'新增流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (125, CAST(N'2019-03-11T17:27:43.6799088' AS DateTime2), 2, N'EditTaskRole', N'en', NULL, NULL, N'Ginkgo', 1, N'Edit Task Role')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (126, CAST(N'2019-03-11T17:27:43.7504515' AS DateTime2), 2, N'EditTaskRole', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (127, CAST(N'2019-03-11T17:30:50.1959705' AS DateTime2), 2, N'RoleMembers', N'en', NULL, NULL, N'Ginkgo', 1, N'Role Members')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (128, CAST(N'2019-03-11T17:30:50.2558867' AS DateTime2), 2, N'RoleMembers', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'角色成员')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (129, CAST(N'2019-03-11T17:32:06.4941477' AS DateTime2), 2, N'MyFlowListTree', N'en', NULL, NULL, N'Ginkgo', 1, N'My Flow List')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (130, CAST(N'2019-03-11T17:32:06.6055037' AS DateTime2), 2, N'MyFlowListTree', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'我的可用流程清单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (131, CAST(N'2019-03-11T17:33:02.9809149' AS DateTime2), 2, N'FlowRouteConfig', N'en', NULL, NULL, N'Ginkgo', 1, N'Flow Route Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (132, CAST(N'2019-03-11T17:33:03.0745939' AS DateTime2), 2, N'FlowRouteConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程路由设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (133, CAST(N'2019-03-11T17:34:04.1767890' AS DateTime2), 2, N'SelectableActors', N'en', NULL, NULL, N'Ginkgo', 1, N'Selectable Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (134, CAST(N'2019-03-11T17:34:04.2688494' AS DateTime2), 2, N'SelectableActors', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'可选处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (135, CAST(N'2019-03-11T17:34:54.6107219' AS DateTime2), 2, N'SelectionActors', N'en', NULL, NULL, N'Ginkgo', 1, N'Selection Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (136, CAST(N'2019-03-11T17:34:54.6703957' AS DateTime2), 2, N'SelectionActors', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'已选处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (137, CAST(N'2019-03-11T17:36:22.8182365' AS DateTime2), 2, N'EditMyFlowPhaseActor', N'en', NULL, NULL, N'Ginkgo', 1, N'Edit my flow phase actor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (138, CAST(N'2019-03-11T17:36:22.9037032' AS DateTime2), 2, N'EditMyFlowPhaseActor', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'设置我的流程节点处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (139, CAST(N'2019-03-11T17:39:32.7463352' AS DateTime2), 2, N'InstanceTaskName', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (140, CAST(N'2019-03-11T17:39:32.8063827' AS DateTime2), 2, N'InstanceTaskName', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'流程类别')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (141, CAST(N'2019-03-11T17:40:43.7196216' AS DateTime2), 2, N'InstanceCode', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (142, CAST(N'2019-03-11T17:40:43.8042860' AS DateTime2), 2, N'InstanceCode', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'任务编号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (143, CAST(N'2019-03-11T17:41:18.2776701' AS DateTime2), 2, N'KeyInfo', N'en', NULL, NULL, N'Ginkgo', 1, N'Key Info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (144, CAST(N'2019-03-11T17:41:18.3328416' AS DateTime2), 2, N'KeyInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'概要信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (145, CAST(N'2019-03-11T17:42:38.8298834' AS DateTime2), 2, N'CurrentActors', N'en', NULL, NULL, N'Ginkgo', 1, N'Current Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (146, CAST(N'2019-03-11T17:42:38.8941508' AS DateTime2), 2, N'CurrentActors', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'当前处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (147, CAST(N'2019-03-11T17:43:44.0101053' AS DateTime2), 2, N'LastPhaseHandleTime', N'en', NULL, NULL, N'Ginkgo', 1, N'Last Handle Time')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (148, CAST(N'2019-03-11T17:43:44.1387923' AS DateTime2), 2, N'LastPhaseHandleTime', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'最近处理时间')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (149, CAST(N'2019-03-11T17:44:57.3471492' AS DateTime2), 2, N'ExecuteLog', N'en', NULL, NULL, N'Ginkgo', 1, N'Execute log')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (150, CAST(N'2019-03-11T17:44:57.3998026' AS DateTime2), 2, N'ExecuteLog', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'操作记录')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (151, CAST(N'2019-03-11T17:46:09.5492962' AS DateTime2), 2, N'Actor', N'en', NULL, NULL, N'Ginkgo', 1, N'Actor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (152, CAST(N'2019-03-11T17:46:09.0000000' AS DateTime2), 2, N'Actor', N'zh-Hans', CAST(N'2019-03-11T17:48:21.8636532' AS DateTime2), 2, N'Ginkgo', 1, N'操作账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (153, CAST(N'2019-03-11T17:47:12.5777284' AS DateTime2), 2, N'ActorName', N'en', NULL, NULL, N'Ginkgo', 1, N'Actor Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (154, CAST(N'2019-03-11T17:47:12.0000000' AS DateTime2), 2, N'ActorName', N'zh-Hans', CAST(N'2019-03-11T17:48:41.8457524' AS DateTime2), 2, N'Ginkgo', 1, N'操作人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (155, CAST(N'2019-03-11T17:47:58.8088959' AS DateTime2), 2, N'HandleResultName', N'en', NULL, NULL, N'Ginkgo', 1, N'Handle Result')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (156, CAST(N'2019-03-11T17:47:58.9677520' AS DateTime2), 2, N'HandleResultName', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'操作结果')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (157, CAST(N'2019-03-11T17:50:26.9945445' AS DateTime2), 2, N'Originator', N'en', NULL, NULL, N'Ginkgo', 1, N'Originator')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (158, CAST(N'2019-03-11T17:50:27.0520848' AS DateTime2), 2, N'Originator', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'发起人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (159, CAST(N'2019-03-11T17:52:45.2688627' AS DateTime2), 2, N'DoForm', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Handle')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (160, CAST(N'2019-03-11T17:52:45.3601981' AS DateTime2), 2, N'DoForm', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'处理待办')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (161, CAST(N'2019-03-11T17:53:43.0617996' AS DateTime2), 2, N'NextPhaseActors', N'en', NULL, NULL, N'Ginkgo', 1, N'Next Phase Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (162, CAST(N'2019-03-11T17:53:43.1363791' AS DateTime2), 2, N'NextPhaseActors', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'下一步提交给')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (163, CAST(N'2019-03-11T17:54:59.8094733' AS DateTime2), 2, N'ToReturnActors', N'en', NULL, NULL, N'Ginkgo', 1, N'Return to')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (164, CAST(N'2019-03-11T17:54:59.8759072' AS DateTime2), 2, N'ToReturnActors', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'退回到')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (165, CAST(N'2019-03-11T17:55:39.8856228' AS DateTime2), 2, N'Reject', N'en', NULL, NULL, N'Ginkgo', 1, N'Reject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (166, CAST(N'2019-03-11T17:55:39.9701527' AS DateTime2), 2, N'Reject', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'终止(拒签)')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (167, CAST(N'2019-03-11T17:56:28.7161272' AS DateTime2), 2, N'HandleMemo', N'en', NULL, NULL, N'Ginkgo', 1, N'Handle Memo')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (168, CAST(N'2019-03-11T17:56:28.7833492' AS DateTime2), 2, N'HandleMemo', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'意见说明')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (169, CAST(N'2019-03-11T17:57:32.2745090' AS DateTime2), 2, N'TaskInfo', N'en', NULL, NULL, N'Ginkgo', 1, N'Task Info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (170, CAST(N'2019-03-11T17:57:32.3573289' AS DateTime2), 2, N'TaskInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'任务信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (171, CAST(N'2019-03-11T17:59:02.8329490' AS DateTime2), 2, N'LeaveApplication', N'en', NULL, NULL, N'Ginkgo', 1, N'Leave Application')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (172, CAST(N'2019-03-11T17:59:02.8982358' AS DateTime2), 2, N'LeaveApplication', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (173, CAST(N'2019-03-11T17:59:23.0959130' AS DateTime2), 2, N'Applicant', N'en', NULL, NULL, N'Ginkgo', 1, N'Applicant')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (174, CAST(N'2019-03-11T17:59:23.1536641' AS DateTime2), 2, N'Applicant', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'申请人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (175, CAST(N'2019-03-11T18:00:01.5268660' AS DateTime2), 2, N'AppliNumber', N'en', NULL, NULL, N'Ginkgo', 1, N'Application Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (176, CAST(N'2019-03-11T18:00:02.0347296' AS DateTime2), 2, N'AppliNumber', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'申请单号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (179, CAST(N'2019-03-11T18:02:21.2979673' AS DateTime2), 2, N'LeaveType', N'en', NULL, NULL, N'Ginkgo', 1, N'LeaveType')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (180, CAST(N'2019-03-11T18:02:21.3583469' AS DateTime2), 2, N'LeaveType', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'请假类别')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (185, CAST(N'2019-03-11T18:03:53.9842512' AS DateTime2), 2, N'TotalHours', N'en', NULL, NULL, N'Ginkgo', 1, N'Total Hours')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (186, CAST(N'2019-03-11T18:03:54.0444471' AS DateTime2), 2, N'TotalHours', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'总时数')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (187, CAST(N'2019-03-11T18:04:58.0427023' AS DateTime2), 2, N'AddLeave', N'en', NULL, NULL, N'Ginkgo', 1, N'Add Leave')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (188, CAST(N'2019-03-11T18:04:58.1014868' AS DateTime2), 2, N'AddLeave', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'新增请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (189, CAST(N'2019-03-11T18:05:32.5743815' AS DateTime2), 2, N'EditLeave', N'en', NULL, NULL, N'Ginkgo', 1, N'Edit Leave')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (190, CAST(N'2019-03-11T18:05:32.6435409' AS DateTime2), 2, N'EditLeave', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (191, CAST(N'2019-03-11T18:06:20.2773038' AS DateTime2), 2, N'SendFlow', N'en', NULL, NULL, N'Ginkgo', 1, N'Send Flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (192, CAST(N'2019-03-11T18:06:20.3495586' AS DateTime2), 2, N'SendFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', 1, N'送审')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (193, CAST(N'2019-03-11T16:20:30.5642185' AS DateTime2), 2, N'Taskflows', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task & Flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (194, CAST(N'2019-03-11T16:20:30.6894846' AS DateTime2), 2, N'Taskflows', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'任务流程')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (195, CAST(N'2019-03-11T16:21:47.5400390' AS DateTime2), 2, N'TaskTemplates', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task templates')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (196, CAST(N'2019-03-11T16:21:47.6222864' AS DateTime2), 2, N'TaskTemplates', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (197, CAST(N'2019-03-11T16:22:15.9345128' AS DateTime2), 2, N'TaskRoles', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task roles')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (198, CAST(N'2019-03-11T16:22:15.9870842' AS DateTime2), 2, N'TaskRoles', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (199, CAST(N'2019-03-11T16:23:56.7949979' AS DateTime2), 2, N'MyFlows', N'en', NULL, NULL, N'Ginkgo', NULL, N'My flows config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (200, CAST(N'2019-03-11T16:23:56.8686203' AS DateTime2), 2, N'MyFlows', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程个性化')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (201, CAST(N'2019-03-11T16:24:26.3677365' AS DateTime2), 2, N'MyRequests', N'en', NULL, NULL, N'Ginkgo', NULL, N'My requests')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (202, CAST(N'2019-03-11T16:24:26.4595708' AS DateTime2), 2, N'MyRequests', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'我的申请')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (203, CAST(N'2019-03-11T16:25:09.8173926' AS DateTime2), 2, N'ToDoList', N'en', NULL, NULL, N'Ginkgo', NULL, N'To do list')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (204, CAST(N'2019-03-11T16:25:09.9066869' AS DateTime2), 2, N'ToDoList', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'待办任务')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (205, CAST(N'2019-03-11T16:25:39.8369083' AS DateTime2), 2, N'FlowMonitor', N'en', NULL, NULL, N'Ginkgo', NULL, N'Flow monitor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (206, CAST(N'2019-03-11T16:25:39.8884161' AS DateTime2), 2, N'FlowMonitor', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程监控')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (207, CAST(N'2019-03-11T16:26:55.3812837' AS DateTime2), 2, N'FlowInstanceList', N'en', NULL, NULL, N'Ginkgo', NULL, N'Query tasks')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (208, CAST(N'2019-03-11T16:26:55.4672583' AS DateTime2), 2, N'FlowInstanceList', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'任务查询')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (209, CAST(N'2019-03-11T16:29:08.2929554' AS DateTime2), 2, N'TaskSample', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task sample')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (210, CAST(N'2019-03-11T16:29:08.3548459' AS DateTime2), 2, N'TaskSample', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'任务演示')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (211, CAST(N'2019-03-11T16:31:28.6365798' AS DateTime2), 2, N'TaskCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (212, CAST(N'2019-03-11T16:31:28.0000000' AS DateTime2), 2, N'TaskCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程类别码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (213, CAST(N'2019-03-11T16:33:13.9298571' AS DateTime2), 2, N'TaskName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (214, CAST(N'2019-03-11T16:33:13.0000000' AS DateTime2), 2, N'TaskName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程类别名')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (215, CAST(N'2019-03-11T16:35:06.6817585' AS DateTime2), 2, N'TaskDescription', N'en', NULL, NULL, N'Ginkgo', NULL, N'Description')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (216, CAST(N'2019-03-11T16:35:06.7492872' AS DateTime2), 2, N'TaskDescription', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程描述')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (217, CAST(N'2019-03-11T16:36:07.6646235' AS DateTime2), 2, N'UseConditionControl', N'en', NULL, NULL, N'Ginkgo', NULL, N'Use condition control')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (218, CAST(N'2019-03-11T16:36:07.7448880' AS DateTime2), 2, N'UseConditionControl', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'使用条件控制')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (219, CAST(N'2019-03-11T16:38:05.9035231' AS DateTime2), 2, N'CanAppendPhase', N'en', NULL, NULL, N'Ginkgo', NULL, N'Can append phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (220, CAST(N'2019-03-11T16:38:05.9755038' AS DateTime2), 2, N'CanAppendPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可追加节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (221, CAST(N'2019-03-11T16:38:27.1608792' AS DateTime2), 2, N'Revocable', N'en', NULL, NULL, N'Ginkgo', NULL, N'Revocable')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (222, CAST(N'2019-03-11T16:38:27.2133170' AS DateTime2), 2, N'Revocable', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可撤回')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (223, CAST(N'2019-03-11T16:39:21.6289259' AS DateTime2), 2, N'KeyInfoTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Key info template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (224, CAST(N'2019-03-11T16:39:21.0000000' AS DateTime2), 2, N'KeyInfoTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'概要信息模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (225, CAST(N'2019-03-11T16:40:08.7984879' AS DateTime2), 2, N'FormUriTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Form uri template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (226, CAST(N'2019-03-11T16:40:08.8915130' AS DateTime2), 2, N'FormUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'表单Uri模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (227, CAST(N'2019-03-11T16:42:51.7598640' AS DateTime2), 2, N'IsDefaultForAllUser', N'en', NULL, NULL, N'Ginkgo', NULL, N'Is default for all user')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (228, CAST(N'2019-03-11T16:42:51.8199258' AS DateTime2), 2, N'IsDefaultForAllUser', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'所有用户均可发起')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (229, CAST(N'2019-03-11T16:43:41.7190346' AS DateTime2), 2, N'FinalServiceTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Final service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (230, CAST(N'2019-03-11T16:43:41.7777254' AS DateTime2), 2, N'FinalServiceTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'Final service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (231, CAST(N'2019-03-11T16:44:22.8183249' AS DateTime2), 2, N'StartServiceTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Start service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (232, CAST(N'2019-03-11T16:44:22.8704406' AS DateTime2), 2, N'StartServiceTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'Start service template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (233, CAST(N'2019-03-11T16:45:57.1320959' AS DateTime2), 2, N'EditFlow', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (234, CAST(N'2019-03-11T16:45:57.2145480' AS DateTime2), 2, N'EditFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'修改流程配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (235, CAST(N'2019-03-11T16:46:30.8570444' AS DateTime2), 2, N'AddFlow', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (236, CAST(N'2019-03-11T16:46:30.9109596' AS DateTime2), 2, N'AddFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新增流程配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (237, CAST(N'2019-03-11T16:48:04.8625200' AS DateTime2), 2, N'MoreTaskTemplateInfo', N'en', NULL, NULL, N'Ginkgo', NULL, N'More template info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (238, CAST(N'2019-03-11T16:48:04.9145444' AS DateTime2), 2, N'MoreTaskTemplateInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'更多配置信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (239, CAST(N'2019-03-11T16:48:59.5386737' AS DateTime2), 2, N'NotifyTitleTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Notify title template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (240, CAST(N'2019-03-11T16:48:59.6336909' AS DateTime2), 2, N'NotifyTitleTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'通知标题模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (241, CAST(N'2019-03-11T16:49:35.6348051' AS DateTime2), 2, N'NotifyContentTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Notify content template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (242, CAST(N'2019-03-11T16:49:35.7060273' AS DateTime2), 2, N'NotifyContentTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'通知内容模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (243, CAST(N'2019-03-11T16:50:06.3697849' AS DateTime2), 2, N'ReturnType', N'en', NULL, NULL, N'Ginkgo', NULL, N'Return type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (244, CAST(N'2019-03-11T16:50:06.4304962' AS DateTime2), 2, N'ReturnType', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'退回模式')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (245, CAST(N'2019-03-11T16:52:23.1288199' AS DateTime2), 2, N'ResubmitType', N'en', NULL, NULL, N'Ginkgo', NULL, N'Resubmit type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (246, CAST(N'2019-03-11T16:52:23.1868553' AS DateTime2), 2, N'ResubmitType', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'重新送审方式')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (247, CAST(N'2019-03-11T16:53:30.6937091' AS DateTime2), 2, N'Condition1Name', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition1 Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (248, CAST(N'2019-03-11T16:53:30.7734323' AS DateTime2), 2, N'Condition1Name', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件1名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (249, CAST(N'2019-03-11T16:53:58.1955953' AS DateTime2), 2, N'Condition2Name', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition2 name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (250, CAST(N'2019-03-11T16:53:58.2950124' AS DateTime2), 2, N'Condition2Name', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件2名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (251, CAST(N'2019-03-11T16:54:23.0239905' AS DateTime2), 2, N'Condition3Name', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition3 name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (252, CAST(N'2019-03-11T16:54:23.0940269' AS DateTime2), 2, N'Condition3Name', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件3名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (253, CAST(N'2019-03-11T16:59:29.0823042' AS DateTime2), 2, N'PhaseCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Phase Code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (254, CAST(N'2019-03-11T16:59:29.1762891' AS DateTime2), 2, N'PhaseCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'节点代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (255, CAST(N'2019-03-11T16:59:49.1021540' AS DateTime2), 2, N'PhaseName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Phase Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (256, CAST(N'2019-03-11T16:59:49.1601849' AS DateTime2), 2, N'PhaseName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'节点名称')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (257, CAST(N'2019-03-11T17:06:51.8575741' AS DateTime2), 2, N'TaskRoleConfig', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Role Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (258, CAST(N'2019-03-11T17:06:51.9170972' AS DateTime2), 2, N'TaskRoleConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'角色设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (259, CAST(N'2019-03-11T17:09:32.9090052' AS DateTime2), 2, N'TaskUsersConfig', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Users Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (260, CAST(N'2019-03-11T17:09:32.9688745' AS DateTime2), 2, N'TaskUsersConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'用户设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (261, CAST(N'2019-03-11T17:09:53.6078723' AS DateTime2), 2, N'SelectableUsers', N'en', NULL, NULL, N'Ginkgo', NULL, N'Selectable Users')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (262, CAST(N'2019-03-11T17:09:53.6681234' AS DateTime2), 2, N'SelectableUsers', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可选账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (263, CAST(N'2019-03-11T17:10:17.1547228' AS DateTime2), 2, N'SelectionUsers', N'en', NULL, NULL, N'Ginkgo', NULL, N'Selection Users')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (264, CAST(N'2019-03-11T17:10:17.2363585' AS DateTime2), 2, N'SelectionUsers', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'已选账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (265, CAST(N'2019-03-11T17:10:47.8570995' AS DateTime2), 2, N'IsCountersignPhase', N'en', NULL, NULL, N'Ginkgo', NULL, N'Is Countersign Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (266, CAST(N'2019-03-11T17:10:47.9638315' AS DateTime2), 2, N'IsCountersignPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'会签节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (267, CAST(N'2019-03-11T17:11:17.2762798' AS DateTime2), 2, N'IsSignInPhase', N'en', NULL, NULL, N'Ginkgo', NULL, N'IsS ign In Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (268, CAST(N'2019-03-11T17:11:17.3425247' AS DateTime2), 2, N'IsSignInPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'签收节点')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (269, CAST(N'2019-03-11T17:13:37.8136534' AS DateTime2), 2, N'CanUpdateForm', N'en', NULL, NULL, N'Ginkgo', NULL, N'Can Update Form')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (270, CAST(N'2019-03-11T17:13:37.8839233' AS DateTime2), 2, N'CanUpdateForm', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可修改表单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (271, CAST(N'2019-03-11T17:14:10.2583315' AS DateTime2), 2, N'UpdateFormUriTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Update Form Uri Template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (272, CAST(N'2019-03-11T17:14:10.3253832' AS DateTime2), 2, N'UpdateFormUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'表单修改模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (273, CAST(N'2019-03-11T17:15:00.7855799' AS DateTime2), 2, N'CanBatchHandle', N'en', NULL, NULL, N'Ginkgo', NULL, N'Can Batch Handle')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (274, CAST(N'2019-03-11T17:15:00.8708752' AS DateTime2), 2, N'CanBatchHandle', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可批量审批')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (275, CAST(N'2019-03-11T17:15:29.4757913' AS DateTime2), 2, N'BatchHandleUriTemplate', N'en', NULL, NULL, N'Ginkgo', NULL, N'Batch Handle Uri Template')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (276, CAST(N'2019-03-11T17:15:29.5329167' AS DateTime2), 2, N'BatchHandleUriTemplate', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'批量审批模板')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (277, CAST(N'2019-03-11T17:16:07.7456801' AS DateTime2), 2, N'CanReject', N'en', NULL, NULL, N'Ginkgo', NULL, N'Can Reject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (278, CAST(N'2019-03-11T17:16:07.8287496' AS DateTime2), 2, N'CanReject', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可终止(拒签)')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (279, CAST(N'2019-03-11T17:17:11.1692914' AS DateTime2), 2, N'Condition1EndValue', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition1 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (280, CAST(N'2019-03-11T17:17:11.2282526' AS DateTime2), 2, N'Condition1EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件1终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (281, CAST(N'2019-03-11T17:17:36.7456915' AS DateTime2), 2, N'Condition2EndValue', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition2 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (282, CAST(N'2019-03-11T17:17:36.8115182' AS DateTime2), 2, N'Condition2EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件2终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (283, CAST(N'2019-03-11T17:18:01.2111240' AS DateTime2), 2, N'Condition3EndValue', N'en', NULL, NULL, N'Ginkgo', NULL, N'Condition3 End Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (284, CAST(N'2019-03-11T17:18:01.2672882' AS DateTime2), 2, N'Condition3EndValue', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'条件3终止值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (285, CAST(N'2019-03-11T17:19:27.4236374' AS DateTime2), 2, N'EditTaskPhase', N'en', NULL, NULL, N'Ginkgo', NULL, N'EditT ask Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (286, CAST(N'2019-03-11T17:19:27.4825862' AS DateTime2), 2, N'EditTaskPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'节点配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (287, CAST(N'2019-03-11T17:20:02.0950815' AS DateTime2), 2, N'AddTaskPhase', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add Task Phase')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (288, CAST(N'2019-03-11T17:20:02.1521983' AS DateTime2), 2, N'AddTaskPhase', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新增节点配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (289, CAST(N'2019-03-11T17:24:32.5875501' AS DateTime2), 2, N'View', N'en', NULL, NULL, N'Ginkgo', NULL, N'View')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (290, CAST(N'2019-03-11T17:24:32.6426456' AS DateTime2), 2, N'View', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'查看')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (291, CAST(N'2019-03-11T17:25:21.2207515' AS DateTime2), 2, N'RoleCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Role Code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (292, CAST(N'2019-03-11T17:25:21.3043130' AS DateTime2), 2, N'RoleCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'角色代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (293, CAST(N'2019-03-11T17:26:29.3613463' AS DateTime2), 2, N'TaskRoleList', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task role list')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (294, CAST(N'2019-03-11T17:26:29.4154549' AS DateTime2), 2, N'TaskRoleList', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程角色列表')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (295, CAST(N'2019-03-11T17:27:15.2144267' AS DateTime2), 2, N'AddTaskRole', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add Task Role')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (296, CAST(N'2019-03-11T17:27:15.3252465' AS DateTime2), 2, N'AddTaskRole', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新增流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (297, CAST(N'2019-03-11T17:27:43.6799088' AS DateTime2), 2, N'EditTaskRole', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit Task Role')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (298, CAST(N'2019-03-11T17:27:43.7504515' AS DateTime2), 2, N'EditTaskRole', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程角色')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (299, CAST(N'2019-03-11T17:30:50.1959705' AS DateTime2), 2, N'RoleMembers', N'en', NULL, NULL, N'Ginkgo', NULL, N'Role Members')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (300, CAST(N'2019-03-11T17:30:50.2558867' AS DateTime2), 2, N'RoleMembers', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'角色成员')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (301, CAST(N'2019-03-11T17:32:06.4941477' AS DateTime2), 2, N'MyFlowListTree', N'en', NULL, NULL, N'Ginkgo', NULL, N'My Flow List')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (302, CAST(N'2019-03-11T17:32:06.6055037' AS DateTime2), 2, N'MyFlowListTree', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'我的可用流程清单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (303, CAST(N'2019-03-11T17:33:02.9809149' AS DateTime2), 2, N'FlowRouteConfig', N'en', NULL, NULL, N'Ginkgo', NULL, N'Flow Route Config')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (304, CAST(N'2019-03-11T17:33:03.0745939' AS DateTime2), 2, N'FlowRouteConfig', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程路由设定')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (305, CAST(N'2019-03-11T17:34:04.1767890' AS DateTime2), 2, N'SelectableActors', N'en', NULL, NULL, N'Ginkgo', NULL, N'Selectable Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (306, CAST(N'2019-03-11T17:34:04.2688494' AS DateTime2), 2, N'SelectableActors', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'可选处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (307, CAST(N'2019-03-11T17:34:54.6107219' AS DateTime2), 2, N'SelectionActors', N'en', NULL, NULL, N'Ginkgo', NULL, N'Selection Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (308, CAST(N'2019-03-11T17:34:54.6703957' AS DateTime2), 2, N'SelectionActors', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'已选处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (309, CAST(N'2019-03-11T17:36:22.8182365' AS DateTime2), 2, N'EditMyFlowPhaseActor', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit my flow phase actor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (310, CAST(N'2019-03-11T17:36:22.9037032' AS DateTime2), 2, N'EditMyFlowPhaseActor', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'设置我的流程节点处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (311, CAST(N'2019-03-11T17:39:32.7463352' AS DateTime2), 2, N'InstanceTaskName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Type')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (312, CAST(N'2019-03-11T17:39:32.8063827' AS DateTime2), 2, N'InstanceTaskName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流程类别')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (313, CAST(N'2019-03-11T17:40:43.7196216' AS DateTime2), 2, N'InstanceCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (314, CAST(N'2019-03-11T17:40:43.8042860' AS DateTime2), 2, N'InstanceCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'任务编号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (315, CAST(N'2019-03-11T17:41:18.2776701' AS DateTime2), 2, N'KeyInfo', N'en', NULL, NULL, N'Ginkgo', NULL, N'Key Info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (316, CAST(N'2019-03-11T17:41:18.3328416' AS DateTime2), 2, N'KeyInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'概要信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (317, CAST(N'2019-03-11T17:42:38.8298834' AS DateTime2), 2, N'CurrentActors', N'en', NULL, NULL, N'Ginkgo', NULL, N'Current Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (318, CAST(N'2019-03-11T17:42:38.8941508' AS DateTime2), 2, N'CurrentActors', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'当前处理人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (319, CAST(N'2019-03-11T17:43:44.0101053' AS DateTime2), 2, N'LastPhaseHandleTime', N'en', NULL, NULL, N'Ginkgo', NULL, N'Last Handle Time')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (320, CAST(N'2019-03-11T17:43:44.1387923' AS DateTime2), 2, N'LastPhaseHandleTime', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'最近处理时间')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (321, CAST(N'2019-03-11T17:44:57.3471492' AS DateTime2), 2, N'ExecuteLog', N'en', NULL, NULL, N'Ginkgo', NULL, N'Execute log')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (322, CAST(N'2019-03-11T17:44:57.3998026' AS DateTime2), 2, N'ExecuteLog', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'操作记录')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (323, CAST(N'2019-03-11T17:46:09.5492962' AS DateTime2), 2, N'Actor', N'en', NULL, NULL, N'Ginkgo', NULL, N'Actor')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (324, CAST(N'2019-03-11T17:46:09.0000000' AS DateTime2), 2, N'Actor', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'操作账号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (325, CAST(N'2019-03-11T17:47:12.5777284' AS DateTime2), 2, N'ActorName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Actor Name')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (326, CAST(N'2019-03-11T17:47:12.0000000' AS DateTime2), 2, N'ActorName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'操作人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (327, CAST(N'2019-03-11T17:47:58.8088959' AS DateTime2), 2, N'HandleResultName', N'en', NULL, NULL, N'Ginkgo', NULL, N'Handle Result')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (328, CAST(N'2019-03-11T17:47:58.9677520' AS DateTime2), 2, N'HandleResultName', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'操作结果')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (329, CAST(N'2019-03-11T17:50:26.9945445' AS DateTime2), 2, N'Originator', N'en', NULL, NULL, N'Ginkgo', NULL, N'Originator')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (330, CAST(N'2019-03-11T17:50:27.0520848' AS DateTime2), 2, N'Originator', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'发起人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (331, CAST(N'2019-03-11T17:52:45.2688627' AS DateTime2), 2, N'DoForm', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Handle')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (332, CAST(N'2019-03-11T17:52:45.3601981' AS DateTime2), 2, N'DoForm', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'处理待办')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (333, CAST(N'2019-03-11T17:53:43.0617996' AS DateTime2), 2, N'NextPhaseActors', N'en', NULL, NULL, N'Ginkgo', NULL, N'Next Phase Actors')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (334, CAST(N'2019-03-11T17:53:43.1363791' AS DateTime2), 2, N'NextPhaseActors', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'下一步提交给')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (335, CAST(N'2019-03-11T17:54:59.8094733' AS DateTime2), 2, N'ToReturnActors', N'en', NULL, NULL, N'Ginkgo', NULL, N'Return to')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (336, CAST(N'2019-03-11T17:54:59.8759072' AS DateTime2), 2, N'ToReturnActors', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'退回到')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (337, CAST(N'2019-03-11T17:55:39.8856228' AS DateTime2), 2, N'Reject', N'en', NULL, NULL, N'Ginkgo', NULL, N'Reject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (338, CAST(N'2019-03-11T17:55:39.9701527' AS DateTime2), 2, N'Reject', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'终止(拒签)')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (339, CAST(N'2019-03-11T17:56:28.7161272' AS DateTime2), 2, N'HandleMemo', N'en', NULL, NULL, N'Ginkgo', NULL, N'Handle Memo')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (340, CAST(N'2019-03-11T17:56:28.7833492' AS DateTime2), 2, N'HandleMemo', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'意见说明')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (341, CAST(N'2019-03-11T17:57:32.2745090' AS DateTime2), 2, N'TaskInfo', N'en', NULL, NULL, N'Ginkgo', NULL, N'Task Info')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (342, CAST(N'2019-03-11T17:57:32.3573289' AS DateTime2), 2, N'TaskInfo', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'任务信息')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (343, CAST(N'2019-03-11T17:59:02.8329490' AS DateTime2), 2, N'LeaveApplication', N'en', NULL, NULL, N'Ginkgo', NULL, N'Leave Application')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (344, CAST(N'2019-03-11T17:59:02.8982358' AS DateTime2), 2, N'LeaveApplication', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (345, CAST(N'2019-03-11T17:59:23.0959130' AS DateTime2), 2, N'Applicant', N'en', NULL, NULL, N'Ginkgo', NULL, N'Applicant')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (346, CAST(N'2019-03-11T17:59:23.1536641' AS DateTime2), 2, N'Applicant', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'申请人')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (347, CAST(N'2019-03-11T18:00:01.5268660' AS DateTime2), 2, N'AppliNumber', N'en', NULL, NULL, N'Ginkgo', NULL, N'Application Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (348, CAST(N'2019-03-11T18:00:02.0347296' AS DateTime2), 2, N'AppliNumber', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'申请单号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (349, CAST(N'2019-03-11T18:02:21.2979673' AS DateTime2), 2, N'LeaveType', N'en', NULL, NULL, N'Ginkgo', NULL, N'LeaveType')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (350, CAST(N'2019-03-11T18:02:21.3583469' AS DateTime2), 2, N'LeaveType', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'请假类别')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (351, CAST(N'2019-03-11T18:03:53.9842512' AS DateTime2), 2, N'TotalHours', N'en', NULL, NULL, N'Ginkgo', NULL, N'Total Hours')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (352, CAST(N'2019-03-11T18:03:54.0444471' AS DateTime2), 2, N'TotalHours', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'总时数')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (353, CAST(N'2019-03-11T18:04:58.0427023' AS DateTime2), 2, N'AddLeave', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add Leave')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (354, CAST(N'2019-03-11T18:04:58.1014868' AS DateTime2), 2, N'AddLeave', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新增请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (355, CAST(N'2019-03-11T18:05:32.5743815' AS DateTime2), 2, N'EditLeave', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit Leave')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (356, CAST(N'2019-03-11T18:05:32.6435409' AS DateTime2), 2, N'EditLeave', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'请假单')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (357, CAST(N'2019-03-11T18:06:20.2773038' AS DateTime2), 2, N'SendFlow', N'en', NULL, NULL, N'Ginkgo', NULL, N'Send Flow')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (358, CAST(N'2019-03-11T18:06:20.3495586' AS DateTime2), 2, N'SendFlow', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'送审')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (359, CAST(N'2019-04-01T10:49:31.4778665' AS DateTime2), 1, N'NumberCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Number code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (360, CAST(N'2019-04-01T10:49:31.6152057' AS DateTime2), 1, N'NumberCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'编号代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (361, CAST(N'2019-04-01T10:51:02.8773971' AS DateTime2), 1, N'DateStringSpec', N'en', NULL, NULL, N'Ginkgo', NULL, N'Date spec')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (362, CAST(N'2019-04-01T10:51:02.9456978' AS DateTime2), 1, N'DateStringSpec', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'日期规则')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (363, CAST(N'2019-04-01T10:51:39.8584074' AS DateTime2), 1, N'Prefix', N'en', NULL, NULL, N'Ginkgo', NULL, N'Prefix')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (364, CAST(N'2019-04-01T10:51:39.9059502' AS DateTime2), 1, N'Prefix', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'前缀')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (365, CAST(N'2019-04-01T10:52:19.9798342' AS DateTime2), 1, N'Infix', N'en', NULL, NULL, N'Ginkgo', NULL, N'Infix')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (366, CAST(N'2019-04-01T10:52:20.0317993' AS DateTime2), 1, N'Infix', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'中间字符')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (367, CAST(N'2019-04-01T10:52:44.1560368' AS DateTime2), 1, N'Suffix', N'en', NULL, NULL, N'Ginkgo', NULL, N'Suffix')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (368, CAST(N'2019-04-01T10:52:44.2066788' AS DateTime2), 1, N'Suffix', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'后缀')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (369, CAST(N'2019-04-01T10:53:41.7283325' AS DateTime2), 1, N'SeqLength', N'en', NULL, NULL, N'Ginkgo', NULL, N'SeqNo length')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (370, CAST(N'2019-04-01T10:53:41.8326447' AS DateTime2), 1, N'SeqLength', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'流水段长度')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (371, CAST(N'2019-04-01T10:54:10.3056651' AS DateTime2), 1, N'Sequence', N'en', NULL, NULL, N'Ginkgo', NULL, N'Sequence')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (372, CAST(N'2019-04-01T10:54:10.3545721' AS DateTime2), 1, N'Sequence', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'最新流水号')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (373, CAST(N'2019-04-01T10:54:55.9402104' AS DateTime2), 1, N'LatestNumber', N'en', NULL, NULL, N'Ginkgo', NULL, N'Latest Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (374, CAST(N'2019-04-01T10:54:56.0110285' AS DateTime2), 1, N'LatestNumber', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'最新号码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (375, CAST(N'2019-04-01T10:56:37.4492258' AS DateTime2), 1, N'CreateNewSequence', N'en', NULL, NULL, N'Ginkgo', NULL, N'Create New Sequence')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (376, CAST(N'2019-04-01T10:56:37.5079850' AS DateTime2), 1, N'CreateNewSequence', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新建编号规则')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (377, CAST(N'2019-04-01T10:57:15.3806555' AS DateTime2), 1, N'EditSequenceNumber', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit Sequence Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (378, CAST(N'2019-04-01T10:57:15.4272705' AS DateTime2), 1, N'EditSequenceNumber', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'修改编号规则')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (379, CAST(N'2019-04-01T11:00:50.2992685' AS DateTime2), 1, N'CategoryCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Category Code')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (380, CAST(N'2019-04-01T11:00:50.3486690' AS DateTime2), 1, N'CategoryCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'类别代码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (381, CAST(N'2019-04-01T11:06:38.4017532' AS DateTime2), 1, N'DataKey', N'en', NULL, NULL, N'Ginkgo', NULL, N'Data Key')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (382, CAST(N'2019-04-01T11:06:38.5166418' AS DateTime2), 1, N'DataKey', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'数据键值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (383, CAST(N'2019-04-01T11:07:49.7898235' AS DateTime2), 1, N'DataValue', N'en', NULL, NULL, N'Ginkgo', NULL, N'Data Value')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (384, CAST(N'2019-04-01T11:07:49.8359957' AS DateTime2), 1, N'DataValue', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'显示内容')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (385, CAST(N'2019-04-01T11:09:54.4228415' AS DateTime2), 1, N'EditDataDictionary', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit Data Dictionary')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (386, CAST(N'2019-04-01T11:09:54.4756281' AS DateTime2), 1, N'EditDataDictionary', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'修改字典配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (387, CAST(N'2019-04-01T11:10:23.6829374' AS DateTime2), 1, N'CreateNewDataDictionary', N'en', NULL, NULL, N'Ginkgo', NULL, N'Create New Data Dictionary')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (388, CAST(N'2019-04-01T11:10:23.7420821' AS DateTime2), 1, N'CreateNewDataDictionary', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新建字典配置')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (389, CAST(N'2019-04-01T11:14:45.2594522' AS DateTime2), 1, N'ParentKey', N'en', NULL, NULL, N'Ginkgo', NULL, N'Parent Key')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (390, CAST(N'2019-04-01T11:14:45.3210010' AS DateTime2), 1, N'ParentKey', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'父级键值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (391, CAST(N'2019-04-01T11:15:08.3127867' AS DateTime2), 1, N'ObjectKey', N'en', NULL, NULL, N'Ginkgo', NULL, N'Object Key')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (392, CAST(N'2019-04-01T11:15:08.0000000' AS DateTime2), 1, N'ObjectKey', N'zh-Hans', CAST(N'2019-04-01T11:16:23.5189001' AS DateTime2), 1, N'Ginkgo', NULL, N'本体键值')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (393, CAST(N'2019-04-01T11:16:42.8375777' AS DateTime2), 1, N'Icon', N'en', NULL, NULL, N'Ginkgo', NULL, N'Icon')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (394, CAST(N'2019-04-01T11:16:42.9935276' AS DateTime2), 1, N'Icon', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'图标')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (395, CAST(N'2019-04-01T11:17:39.5340831' AS DateTime2), 1, N'Uri', N'en', NULL, NULL, N'Ginkgo', NULL, N'Uri')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (396, CAST(N'2019-04-01T11:17:39.5913040' AS DateTime2), 1, N'Uri', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'资源路径')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (397, CAST(N'2019-04-01T11:18:06.2730828' AS DateTime2), 1, N'MenuLevel', N'en', NULL, NULL, N'Ginkgo', NULL, N'Menu Level')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (398, CAST(N'2019-04-01T11:18:06.3216780' AS DateTime2), 1, N'MenuLevel', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'菜单层级')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (399, CAST(N'2019-04-01T11:18:43.0018245' AS DateTime2), 1, N'SortCode', N'en', NULL, NULL, N'Ginkgo', NULL, N'Sort Number')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (400, CAST(N'2019-04-01T11:18:43.0745951' AS DateTime2), 1, N'SortCode', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'排序码')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (401, CAST(N'2019-04-01T11:20:04.5237377' AS DateTime2), 1, N'Permissions', N'en', NULL, NULL, N'Ginkgo', NULL, N'Permissions')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (402, CAST(N'2019-04-01T11:20:04.5920301' AS DateTime2), 1, N'Permissions', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'权限列表')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (403, CAST(N'2019-04-01T11:21:45.3847201' AS DateTime2), 1, N'AddSysObject', N'en', NULL, NULL, N'Ginkgo', NULL, N'Add SysObject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (404, CAST(N'2019-04-01T11:21:45.4721491' AS DateTime2), 1, N'AddSysObject', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'新建系统对象')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (405, CAST(N'2019-04-01T11:22:10.3361669' AS DateTime2), 1, N'EditSysObject', N'en', NULL, NULL, N'Ginkgo', NULL, N'Edit SysObject')
GO
INSERT [dbo].[AbpLanguageTexts] ([Id], [CreationTime], [CreatorUserId], [Key], [LanguageName], [LastModificationTime], [LastModifierUserId], [Source], [TenantId], [Value]) VALUES (406, CAST(N'2019-04-01T11:22:10.3881161' AS DateTime2), 1, N'EditSysObject', N'zh-Hans', NULL, NULL, N'Ginkgo', NULL, N'修改系统对象')
GO
SET IDENTITY_INSERT [dbo].[AbpLanguageTexts] OFF
GO

SET IDENTITY_INSERT [dbo].[AbpUserAccounts] ON 

INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (1, CAST(N'2019-03-04T10:06:16.2068404' AS DateTime2), NULL, NULL, NULL, N'admin@aspnetboilerplate.com', 0, NULL, NULL, NULL, 1, NULL, N'admin')
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (2, CAST(N'2019-03-04T10:06:16.5461310' AS DateTime2), NULL, NULL, NULL, N'admin@defaulttenant.com', 0, NULL, NULL, 1, 2, NULL, N'admin')
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (3, CAST(N'2019-03-09T16:07:03.8050310' AS DateTime2), NULL, NULL, NULL, N'user1@defaulttenant.com', 0, CAST(N'2019-03-09T16:08:59.1127536' AS DateTime2), NULL, 1, 3, NULL, N'User1')
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (4, CAST(N'2019-03-09T16:07:45.4987835' AS DateTime2), NULL, NULL, NULL, N'user2@defaulttenant.com', 0, CAST(N'2019-03-09T16:09:05.1483342' AS DateTime2), NULL, 1, 4, NULL, N'User2')
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (5, CAST(N'2019-03-09T16:08:10.2666561' AS DateTime2), NULL, NULL, NULL, N'user3@defaulttenant.com', 0, CAST(N'2019-03-09T16:09:10.3081846' AS DateTime2), NULL, 1, 5, NULL, N'User3')
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (6, CAST(N'2019-03-09T16:08:47.4622469' AS DateTime2), NULL, NULL, NULL, N'user4@defaulttenant.com', 0, CAST(N'2019-03-09T16:09:15.4485935' AS DateTime2), NULL, 1, 6, NULL, N'User4')
SET IDENTITY_INSERT [dbo].[AbpUserAccounts] OFF

SET IDENTITY_INSERT [dbo].[LeaveApplications] ON 

INSERT [dbo].[LeaveApplications] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [AppliNumber], [Applicant], [Title], [Description], [LeaveType], [FromTime], [EndTime], [TotalHours], [Status]) VALUES (4, 1, N'admin', CAST(N'2019-03-09T16:02:42.9725318' AS DateTime2), N'admin', CAST(N'2019-03-08T17:22:40.8224213' AS DateTime2), N'L190300001', N'0068', N'三天', N'testt', N'1', CAST(N'2019-03-08T08:00:00.0000000' AS DateTime2), CAST(N'2019-03-13T18:00:00.0000000' AS DateTime2), CAST(24.00 AS Decimal(18, 2)), N'2')
INSERT [dbo].[LeaveApplications] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [AppliNumber], [Applicant], [Title], [Description], [LeaveType], [FromTime], [EndTime], [TotalHours], [Status]) VALUES (5, 1, NULL, NULL, N'admin', CAST(N'2019-03-08T17:23:51.6626036' AS DateTime2), N'L190300002', N'admin', N'1天', N'', N'1', CAST(N'2019-03-08T08:00:00.0000000' AS DateTime2), CAST(N'2019-03-08T18:23:00.0000000' AS DateTime2), CAST(8.00 AS Decimal(18, 2)), N'1')
INSERT [dbo].[LeaveApplications] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [AppliNumber], [Applicant], [Title], [Description], [LeaveType], [FromTime], [EndTime], [TotalHours], [Status]) VALUES (6, 1, N'admin', CAST(N'2019-03-08T17:30:25.9858091' AS DateTime2), N'admin', CAST(N'2019-03-08T17:30:08.4289684' AS DateTime2), N'L190300003', N'admin', N'3days', N'', N'2', CAST(N'2019-03-04T08:00:00.0000000' AS DateTime2), CAST(N'2019-03-06T18:00:00.0000000' AS DateTime2), CAST(24.00 AS Decimal(18, 2)), N'1')
SET IDENTITY_INSERT [dbo].[LeaveApplications] OFF
SET IDENTITY_INSERT [dbo].[SysDataDictionary] ON 

INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (1, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:30:19.4150466' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'DataDictCategoryCode', N'Data Category')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (2, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:31:39.3839055' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'ObjectPermisionCode', N'对象权限代码')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (3, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:33:25.0849194' AS DateTime2), 0, NULL, NULL, N'ObjectPermisionCode', N'Create', N'新建')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (4, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:33:39.7065298' AS DateTime2), 0, NULL, NULL, N'ObjectPermisionCode', N'Update', N'更新')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (5, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:33:54.0779634' AS DateTime2), 0, NULL, NULL, N'ObjectPermisionCode', N'Delete', N'删除')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (6, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:34:05.7018345' AS DateTime2), 1, NULL, NULL, N'ObjectPermisionCode', N'Save', N'保存')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (7, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:34:39.2201615' AS DateTime2), 0, NULL, NULL, N'ObjectPermisionCode', N'Export', N'导出')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (8, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:34:51.5848708' AS DateTime2), 0, NULL, NULL, N'ObjectPermisionCode', N'Import', N'导入')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (9, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:06:01.1150208' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'DataDictCategoryCode', N'Data Category')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (10, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:07:02.2234742' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'LeaveType', N'假期类型')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (11, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:07:37.4977067' AS DateTime2), 0, NULL, NULL, N'LeaveType', N'1', N'事假')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (12, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:07:49.1623484' AS DateTime2), 0, NULL, NULL, N'LeaveType', N'2', N'年休假')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (13, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:07:59.0859933' AS DateTime2), 0, NULL, NULL, N'LeaveType', N'3', N'病假')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (14, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:08:18.2273424' AS DateTime2), 0, NULL, NULL, N'LeaveType', N'4', N'婚假')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (15, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T15:09:03.9607994' AS DateTime2), 0, NULL, NULL, N'LeaveType', N'5', N'调休')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (16, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T16:47:36.3776640' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'LeaveAppliStatus', N'请假单状态')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (17, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T16:48:01.3416785' AS DateTime2), 0, NULL, NULL, N'LeaveAppliStatus', N'1', N'新建')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (18, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T16:48:18.2192501' AS DateTime2), 0, NULL, NULL, N'LeaveAppliStatus', N'2', N'送审中')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (19, 1, NULL, NULL, N'admin', CAST(N'2019-03-07T16:48:34.1867485' AS DateTime2), 0, NULL, NULL, N'LeaveAppliStatus', N'3', N'已批准')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (20, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:11:50.3350166' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'TaskReturnType', N'TaskReturnType')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (21, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:12:28.7005245' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'TaskResubmitType', N'TaskResubmitType')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (22, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:12:57.2543665' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'TaskHandleResult', N'TaskHandleResult')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (23, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:13:24.9487683' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'TaskInstanceStatus', N'TaskInstanceStatus')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (24, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:13:57.4789786' AS DateTime2), 0, NULL, NULL, N'DataDictCategoryCode', N'TaskWaitTimeType', N'TaskWaitTimeType')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (25, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:14:38.4191119' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'0', N'送审')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (26, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:00.3272535' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'1', N'通过')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (27, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:11.9899689' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'2', N'退回')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (28, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:20.2529997' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'3', N'终止')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (29, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:38.5352868' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'4', N'已阅')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (30, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:52.0713179' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'5', N'撤回')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (31, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:15:59.8468350' AS DateTime2), 0, NULL, NULL, N'TaskHandleResult', N'6', N'取消')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (32, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:16:25.8666829' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'1', N'进行中')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (33, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:16:39.7924499' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'2', N'退回')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (34, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:16:51.6430673' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'6', N'终止')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (35, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:17:03.8180903' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'7', N'撤回')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (36, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:17:16.7693766' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'8', N'签收中')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (37, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:17:24.5756077' AS DateTime2), 0, NULL, NULL, N'TaskInstanceStatus', N'9', N'完成')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (38, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:17:46.9666227' AS DateTime2), 0, NULL, NULL, N'TaskResubmitType', N'1', N'提交到退回节点')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (39, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:17:59.5492490' AS DateTime2), 0, NULL, NULL, N'TaskResubmitType', N'2', N'按照流程路由执行')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (40, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:18:21.7204221' AS DateTime2), 0, NULL, NULL, N'TaskReturnType', N'1', N'退回申请人')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (41, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:18:35.7039903' AS DateTime2), 0, NULL, NULL, N'TaskReturnType', N'2', N'选择退回节点')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (42, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:19:04.3901963' AS DateTime2), 0, NULL, NULL, N'TaskWaitTimeType', N'1', N'1天内')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (43, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:19:16.6307710' AS DateTime2), 0, NULL, NULL, N'TaskWaitTimeType', N'2', N'1-3天')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (44, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:19:28.3131958' AS DateTime2), 0, NULL, NULL, N'TaskWaitTimeType', N'3', N'3-7天')
INSERT [dbo].[SysDataDictionary] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [CategoryCode], [Key], [Value]) VALUES (45, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:19:41.8391059' AS DateTime2), 0, NULL, NULL, N'TaskWaitTimeType', N'4', N'7天以上')
SET IDENTITY_INSERT [dbo].[SysDataDictionary] OFF
SET IDENTITY_INSERT [dbo].[SysObject] ON 

INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (1, NULL, N'admin', CAST(N'2019-03-06T11:39:58.9068369' AS DateTime2), N'admin', CAST(N'2019-03-06T10:31:31.9194855' AS DateTime2), 0, NULL, NULL, N'Admin', N'', N'SystemManagement', N'settings', 1, 1, 100, N'', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (2, NULL, N'admin', CAST(N'2019-03-06T11:40:15.1483228' AS DateTime2), N'admin', CAST(N'2019-03-06T11:27:51.0254341' AS DateTime2), 0, NULL, NULL, N'Admin.Tenant', N'Admin', N'Tenants', N'dns', 1, 2, 101, N'Tenants', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (3, NULL, N'admin', CAST(N'2019-03-06T11:40:23.0677330' AS DateTime2), N'admin', CAST(N'2019-03-06T11:29:12.9284960' AS DateTime2), 0, NULL, NULL, N'Admin.SysObject', N'Admin', N'SysObject', N'widgets', 1, 2, 102, N'Admin/SysObject', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (4, NULL, N'admin', CAST(N'2019-03-06T11:40:29.6666873' AS DateTime2), N'admin', CAST(N'2019-03-06T11:30:38.4554626' AS DateTime2), 0, NULL, NULL, N'Admin.Role', N'Admin', N'Roles', N'people_outline', 1, 2, 105, N'Roles', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (5, NULL, N'admin', CAST(N'2019-03-06T11:40:36.5380989' AS DateTime2), N'admin', CAST(N'2019-03-06T11:31:27.1033572' AS DateTime2), 0, NULL, NULL, N'Admin.User', N'Admin', N'Users', N'people', 1, 2, 106, N'Users', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (6, NULL, N'admin', CAST(N'2019-03-06T11:40:43.7708648' AS DateTime2), N'admin', CAST(N'2019-03-06T11:33:26.4361045' AS DateTime2), 0, NULL, NULL, N'Admin.Localization', N'Admin', N'Localization', N'language', 1, 2, 108, N'Admin/Localization', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (7, NULL, N'admin', CAST(N'2019-03-07T10:55:16.7583519' AS DateTime2), N'admin', CAST(N'2019-03-06T11:35:39.5097145' AS DateTime2), 0, NULL, NULL, N'Admin.Sequence', N'Admin', N'SequenceRule', N'developer_board', 1, 2, 109, N'Admin/Sequence', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (8, NULL, N'admin', CAST(N'2019-03-07T10:55:34.1670850' AS DateTime2), N'admin', CAST(N'2019-03-06T11:36:54.2392686' AS DateTime2), 0, NULL, NULL, N'Admin.DataDictionary', N'Admin', N'DataDictionary', N'storage', 1, 2, 110, N'Admin/DataDict', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (9, NULL, NULL, NULL, N'admin', CAST(N'2019-03-07T10:42:06.9453869' AS DateTime2), 0, NULL, NULL, N'TaskFlow', N'', N'Taskflows', N'today', 1, 1, 200, N'', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (10, NULL, N'admin', CAST(N'2019-03-07T10:46:02.8639598' AS DateTime2), N'admin', CAST(N'2019-03-07T10:44:24.2517275' AS DateTime2), 0, NULL, NULL, N'TaskFlow.TaskTemplate', N'TaskFlow', N'TaskTemplates', N'view_module', 1, 2, 201, N'TaskFlow/Flow/Index', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (11, NULL, N'admin', CAST(N'2019-03-07T10:54:18.2951871' AS DateTime2), N'admin', CAST(N'2019-03-07T10:45:53.5668513' AS DateTime2), 0, NULL, NULL, N'TaskFlow.TaskRole', N'TaskFlow', N'TaskRoles', N'group', 1, 2, 202, N'TaskFlow/Flow/RoleList', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (12, NULL, N'admin', CAST(N'2019-03-07T10:53:58.9029165' AS DateTime2), N'admin', CAST(N'2019-03-07T10:46:37.8455386' AS DateTime2), 0, NULL, NULL, N'TaskFlow.MyFlow', N'TaskFlow', N'MyFlows', N'view_comfy', 1, 2, 203, N'TaskFlow/Flow/MyFlowList', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (13, NULL, N'admin', CAST(N'2019-03-07T10:52:58.2178436' AS DateTime2), N'admin', CAST(N'2019-03-07T10:47:13.7222003' AS DateTime2), 0, NULL, NULL, N'TaskFlow.MyRequest', N'TaskFlow', N'MyRequests', N'toc', 1, 2, 204, N'TaskFlow/Task/MyRequestList', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (14, NULL, N'admin', CAST(N'2019-03-07T10:52:14.1912102' AS DateTime2), N'admin', CAST(N'2019-03-07T10:47:48.2640509' AS DateTime2), 0, NULL, NULL, N'TaskFlow.ToDoList', N'TaskFlow', N'ToDoList', N'view_list', 1, 2, 205, N'TaskFlow/Task/ToDoList', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (15, NULL, N'admin', CAST(N'2019-03-07T10:51:29.1205588' AS DateTime2), N'admin', CAST(N'2019-03-07T10:48:35.2972274' AS DateTime2), 0, NULL, NULL, N'TaskFlow.FlowMonitor', N'TaskFlow', N'FlowMonitor', N'settings_remote', 1, 2, 207, N'TaskFlow/Task/MonitorList', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (16, NULL, NULL, NULL, N'admin', CAST(N'2019-03-07T10:50:25.6174287' AS DateTime2), 0, NULL, NULL, N'TaskFlow.InstanceList', N'TaskFlow', N'FlowInstanceList', N'storage', 1, 2, 208, N'TaskFlow/Task/Index', 1)
INSERT [dbo].[SysObject] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [ObjectKey], [ParentKey], [DisplayName], [Icon], [IsMenuItem], [MenuLevel], [SortCode], [Uri], [IsEnable]) VALUES (17, NULL, NULL, NULL, N'admin', CAST(N'2019-03-07T14:01:28.0157192' AS DateTime2), 0, NULL, NULL, N'TaskFlow.Sample', N'TaskFlow', N'TaskSample', N'event_note', 1, 2, 288, N'TaskSample/Leave/Index', 1)
SET IDENTITY_INSERT [dbo].[SysObject] OFF
SET IDENTITY_INSERT [dbo].[SysSequenceNumber] ON 

INSERT [dbo].[SysSequenceNumber] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [NumberCode], [DateStringSpec], [Prefix], [Infix], [Suffix], [SeqLength], [Sequence], [LatestNumber]) VALUES (1, NULL, NULL, NULL, N'admin', CAST(N'2019-03-06T15:43:35.6622666' AS DateTime2), 0, NULL, NULL, N'OrderNumber', N'YYMM', N'N', N'', N'', 5, 0, NULL)
INSERT [dbo].[SysSequenceNumber] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [NumberCode], [DateStringSpec], [Prefix], [Infix], [Suffix], [SeqLength], [Sequence], [LatestNumber]) VALUES (2, 1, N'admin', CAST(N'2019-03-08T17:33:06.1654895' AS DateTime2), N'admin', CAST(N'2019-03-07T16:04:26.9335331' AS DateTime2), 0, NULL, NULL, N'LeaveApplicationNumber', N'YYMM', N'L', N'', N'', 5, 3, N'L190300003')
INSERT [dbo].[SysSequenceNumber] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [NumberCode], [DateStringSpec], [Prefix], [Infix], [Suffix], [SeqLength], [Sequence], [LatestNumber]) VALUES (3, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:21:58.2749194' AS DateTime2), 0, NULL, NULL, N'TaskCode', N'', N'T', N'', N'', 3, 1, N'T001')
INSERT [dbo].[SysSequenceNumber] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [IsDeleted], [Deleter], [DeletionTime], [NumberCode], [DateStringSpec], [Prefix], [Infix], [Suffix], [SeqLength], [Sequence], [LatestNumber]) VALUES (4, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:22:59.8348662' AS DateTime2), 0, NULL, NULL, N'TaskInstanceCode', N'YYMM', N'', N'', N'', 4, 1, N'19030001')
SET IDENTITY_INSERT [dbo].[SysSequenceNumber] OFF
SET IDENTITY_INSERT [dbo].[TaskExecuteLogs] ON 

INSERT [dbo].[TaskExecuteLogs] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [InstanceCode], [PhaseCode], [Actor], [HandleResult], [Memo]) VALUES (1, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T17:08:30.2339728' AS DateTime2), N'19030001', N'00', N'admin', N'0', N'test')
INSERT [dbo].[TaskExecuteLogs] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [InstanceCode], [PhaseCode], [Actor], [HandleResult], [Memo]) VALUES (2, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T17:22:27.0972161' AS DateTime2), N'19030001', N'01', N'User1', N'1', N'')
SET IDENTITY_INSERT [dbo].[TaskExecuteLogs] OFF
SET IDENTITY_INSERT [dbo].[TaskInstances] ON 

INSERT [dbo].[TaskInstances] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [InstanceCode], [TaskCode], [TaskName], [KeyInfo], [FormUri], [UseConditionControl], [Condition1Name], [Condition1Value], [Condition2Name], [Condition2Value], [Condition3Name], [Condition3Value], [Originator], [CurrentPhaseCode], [CurrentActors], [CanBatchHandle], [BatchHandleUri], [CanReject], [CanUpdateForm], [UpdateFormUri], [IsCountersigning], [IsSignIn], [ReturnPhaseCode], [ReturnActors], [Status], [CanAppendPhase], [Revocable], [ReturnType], [ResubmitType], [NotifyTitle], [NotifyContent], [FinalService], [StartService], [AbortService], [PhaseService], [NeedToCallMiddleService], [LastPhaseHandleTime]) VALUES (1, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T17:08:12.3961355' AS DateTime2), N'19030001', N'T001', N'请假单审批', N'申请单:L190300001申请人:0068申请标题:三天', N'TaskSample/Leave/Edit?id=4', NULL, N'', NULL, N'', NULL, N'', NULL, N'admin', N'02', N'User3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, 1, N'1', N'1', N'请假单待审批[请假人:0068]', N'您好!有流程任务需要您处理.流程类型:请假单审批.概要信息:申请单:L190300001申请人:0068申请标题:三天', N'{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"L190300001","statusCode":"2"}}', N'{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"L190300001","statusCode":"5"}}', N'{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"L190300001","statusCode":"1"}}', N'', NULL, CAST(N'2019-03-09T17:22:27.1038042' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TaskInstances] OFF
SET IDENTITY_INSERT [dbo].[TaskOriginatorRoutes] ON 

INSERT [dbo].[TaskOriginatorRoutes] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [TaskCode], [Originator], [PhaseCode], [Actors]) VALUES (1, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:27:36.0513973' AS DateTime2), N'T001', N'admin', N'01', N'User1')
INSERT [dbo].[TaskOriginatorRoutes] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [TaskCode], [Originator], [PhaseCode], [Actors]) VALUES (2, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:27:46.6192396' AS DateTime2), N'T001', N'admin', N'02', N'User3')
SET IDENTITY_INSERT [dbo].[TaskOriginatorRoutes] OFF
SET IDENTITY_INSERT [dbo].[TaskPhases] ON 

INSERT [dbo].[TaskPhases] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [TaskCode], [PhaseCode], [PhaseName], [TaskRole], [TaskUsers], [IsCountersignPhase], [IsSignInPhase], [Condition1EndValue], [Condition2EndValue], [Condition3EndValue], [CanUpdateForm], [UpdateFormUriTemplate], [CanBatchHandle], [BatchHandleUriTemplate], [CanReject], [NeedToCallMiddleService], [PhaseServiceTemplate]) VALUES (1, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:25:24.2219719' AS DateTime2), N'T001', N'01', N'主管审批', N'', N'User1,User2', NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 1, NULL, NULL)
INSERT [dbo].[TaskPhases] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [TaskCode], [PhaseCode], [PhaseName], [TaskRole], [TaskUsers], [IsCountersignPhase], [IsSignInPhase], [Condition1EndValue], [Condition2EndValue], [Condition3EndValue], [CanUpdateForm], [UpdateFormUriTemplate], [CanBatchHandle], [BatchHandleUriTemplate], [CanReject], [NeedToCallMiddleService], [PhaseServiceTemplate]) VALUES (2, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:26:57.7216173' AS DateTime2), N'T001', N'02', N'考勤专员', N'', N'User3,User4', NULL, 1, NULL, NULL, NULL, NULL, N'', NULL, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaskPhases] OFF
SET IDENTITY_INSERT [dbo].[TaskTemplates] ON 

INSERT [dbo].[TaskTemplates] ([Id], [TenantId], [LastModifier], [LastModificationTime], [Creator], [CreationTime], [TaskCode], [TaskName], [Description], [KeyInfoTemplate], [UseConditionControl], [Condition1Name], [Condition2Name], [Condition3Name], [CanAppendPhase], [Revocable], [ReturnType], [ResubmitType], [NotifyTitleTemplate], [NotifyContentTemplate], [FormUriTemplate], [FinalServiceTemplate], [StartServiceTemplate], [IsDefaultForAllUser]) VALUES (1, 1, NULL, NULL, N'admin', CAST(N'2019-03-09T16:24:01.8281047' AS DateTime2), N'T001', N'请假单审批', N'', N'', NULL, N'', N'', N'', NULL, 1, N'1', N'1', N'', N'', N'', N'', N'', 1)
SET IDENTITY_INSERT [dbo].[TaskTemplates] OFF
