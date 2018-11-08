﻿CREATE TABLE [dbo].[AccountResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AccountResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AccountResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AccountResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AccountResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AccountResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AccountResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AccountResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AccountResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AccountResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AccountResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AccountResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AccountResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AccountResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AccountResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AccountResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AccountResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AccountResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AccountResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AccountResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AccountResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AccountResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AccountResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AccountResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AccountResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AccountResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AccountResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AccountResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AccountResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ActivityDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ActivityDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ActivityDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ActivityDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ActivityDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ActivityDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ActivityDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ActivityDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ActivityDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ActivityDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ActivityDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ActivityDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ActivityDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ActivityDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ActivityDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ActivityDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ActivityDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ActivityDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ActivityDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ActivityDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ActivityDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ActivityDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ActivityDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ActivityDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ActivityDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ActivityDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ActivityDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ActivityDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ActivityDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[AdverseEventResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AdverseEventResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AdverseEventResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AdverseEventResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AdverseEventResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AdverseEventResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AdverseEventResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AdverseEventResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AdverseEventResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AdverseEventResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AdverseEventResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AdverseEventResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AdverseEventResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AdverseEventResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AdverseEventResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AdverseEventResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AdverseEventResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AdverseEventResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AdverseEventResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AdverseEventResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AdverseEventResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AdverseEventResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AdverseEventResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AdverseEventResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AdverseEventResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AdverseEventResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AdverseEventResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AdverseEventResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AdverseEventResIndexUri]([ResourceId])
CREATE TABLE [dbo].[AllergyIntoleranceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AllergyIntoleranceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AllergyIntoleranceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AllergyIntoleranceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AllergyIntoleranceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AllergyIntoleranceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AllergyIntoleranceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AllergyIntoleranceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AllergyIntoleranceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AllergyIntoleranceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AllergyIntoleranceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AllergyIntoleranceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AllergyIntoleranceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AllergyIntoleranceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AllergyIntoleranceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AllergyIntoleranceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AllergyIntoleranceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AllergyIntoleranceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AllergyIntoleranceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AllergyIntoleranceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AllergyIntoleranceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AllergyIntoleranceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AllergyIntoleranceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AllergyIntoleranceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AllergyIntoleranceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AllergyIntoleranceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AllergyIntoleranceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AllergyIntoleranceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AllergyIntoleranceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[AppointmentResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AppointmentResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AppointmentResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AppointmentResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AppointmentResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AppointmentResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AppointmentResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AppointmentResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AppointmentResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AppointmentResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AppointmentResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AppointmentResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AppointmentResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AppointmentResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResIndexUri]([ResourceId])
CREATE TABLE [dbo].[AppointmentResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AppointmentResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AppointmentResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AppointmentResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AppointmentResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AppointmentResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AppointmentResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AppointmentResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AppointmentResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AppointmentResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AppointmentResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AppointmentResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AppointmentResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AppointmentResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AppointmentResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AppointmentResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AppointmentResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[AuditEventResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AuditEventResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[AuditEventResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[AuditEventResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AuditEventResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AuditEventResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[AuditEventResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AuditEventResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AuditEventResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[AuditEventResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AuditEventResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AuditEventResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[AuditEventResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AuditEventResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[AuditEventResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[AuditEventResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AuditEventResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AuditEventResIndexReference]([ResourceId])
CREATE TABLE [dbo].[AuditEventResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AuditEventResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[AuditEventResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[AuditEventResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AuditEventResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AuditEventResIndexToken]([ResourceId])
CREATE TABLE [dbo].[AuditEventResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.AuditEventResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[AuditEventResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[AuditEventResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[AuditEventResIndexUri]([ResourceId])
CREATE TABLE [dbo].[BasicResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BasicResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[BasicResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[BasicResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BasicResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BasicResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[BasicResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BasicResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BasicResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[BasicResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BasicResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BasicResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[BasicResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BasicResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[BasicResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[BasicResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BasicResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BasicResIndexReference]([ResourceId])
CREATE TABLE [dbo].[BasicResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BasicResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BasicResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[BasicResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BasicResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BasicResIndexToken]([ResourceId])
CREATE TABLE [dbo].[BasicResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BasicResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[BasicResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BasicResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BasicResIndexUri]([ResourceId])
CREATE TABLE [dbo].[BinaryResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BinaryResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[BinaryResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[BinaryResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BinaryResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BinaryResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[BinaryResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BinaryResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BinaryResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[BinaryResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BinaryResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BinaryResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[BinaryResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BinaryResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[BinaryResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[BinaryResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BinaryResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BinaryResIndexReference]([ResourceId])
CREATE TABLE [dbo].[BinaryResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BinaryResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BinaryResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[BinaryResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BinaryResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BinaryResIndexToken]([ResourceId])
CREATE TABLE [dbo].[BinaryResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BinaryResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[BinaryResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BinaryResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BinaryResIndexUri]([ResourceId])
CREATE TABLE [dbo].[BodySiteResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BodySiteResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[BodySiteResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[BodySiteResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BodySiteResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BodySiteResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[BodySiteResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BodySiteResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BodySiteResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[BodySiteResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BodySiteResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BodySiteResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[BodySiteResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BodySiteResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[BodySiteResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[BodySiteResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BodySiteResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BodySiteResIndexReference]([ResourceId])
CREATE TABLE [dbo].[BodySiteResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BodySiteResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BodySiteResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[BodySiteResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BodySiteResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BodySiteResIndexToken]([ResourceId])
CREATE TABLE [dbo].[BodySiteResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BodySiteResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[BodySiteResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BodySiteResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BodySiteResIndexUri]([ResourceId])
CREATE TABLE [dbo].[BundleResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BundleResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[BundleResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[BundleResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BundleResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BundleResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[BundleResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BundleResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BundleResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[BundleResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BundleResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BundleResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[BundleResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BundleResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[BundleResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[BundleResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BundleResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BundleResIndexReference]([ResourceId])
CREATE TABLE [dbo].[BundleResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BundleResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[BundleResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[BundleResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BundleResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BundleResIndexToken]([ResourceId])
CREATE TABLE [dbo].[BundleResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.BundleResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[BundleResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[BundleResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[BundleResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CapabilityStatementResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CapabilityStatementResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CapabilityStatementResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CapabilityStatementResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CapabilityStatementResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CapabilityStatementResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CapabilityStatementResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CapabilityStatementResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CapabilityStatementResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CapabilityStatementResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CapabilityStatementResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CapabilityStatementResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CapabilityStatementResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CapabilityStatementResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CapabilityStatementResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CapabilityStatementResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CapabilityStatementResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CapabilityStatementResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CapabilityStatementResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CapabilityStatementResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CapabilityStatementResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CapabilityStatementResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CapabilityStatementResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CapabilityStatementResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CapabilityStatementResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CapabilityStatementResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CapabilityStatementResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CapabilityStatementResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CapabilityStatementResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CarePlanResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CarePlanResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CarePlanResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CarePlanResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CarePlanResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CarePlanResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CarePlanResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CarePlanResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CarePlanResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CarePlanResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CarePlanResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CarePlanResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CarePlanResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CarePlanResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CarePlanResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CarePlanResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CarePlanResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CarePlanResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CarePlanResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CarePlanResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CarePlanResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CarePlanResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CarePlanResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CarePlanResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CarePlanResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CarePlanResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CarePlanResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CarePlanResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CarePlanResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CareTeamResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CareTeamResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CareTeamResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CareTeamResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CareTeamResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CareTeamResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CareTeamResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CareTeamResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CareTeamResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CareTeamResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CareTeamResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CareTeamResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CareTeamResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CareTeamResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CareTeamResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CareTeamResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CareTeamResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CareTeamResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CareTeamResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CareTeamResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CareTeamResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CareTeamResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CareTeamResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CareTeamResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CareTeamResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CareTeamResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CareTeamResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CareTeamResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CareTeamResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ChargeItemResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ChargeItemResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ChargeItemResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ChargeItemResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ChargeItemResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ChargeItemResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ChargeItemResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ChargeItemResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ChargeItemResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ChargeItemResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ChargeItemResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ChargeItemResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ChargeItemResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ChargeItemResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ChargeItemResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ChargeItemResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ChargeItemResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ChargeItemResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ChargeItemResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ChargeItemResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ChargeItemResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ChargeItemResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ChargeItemResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ChargeItemResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ChargeItemResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ChargeItemResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ChargeItemResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ChargeItemResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ChargeItemResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ClaimResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ClaimResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ClaimResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ClaimResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClaimResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClaimResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ClaimResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ClaimResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ClaimResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ClaimResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClaimResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClaimResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ClaimResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ClaimResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ClaimResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ClaimResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ClaimResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ClaimResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClaimResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClaimResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ClaimResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ClaimResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ClaimResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ClaimResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClaimResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClaimResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ClaimResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClaimResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ClaimResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClaimResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClaimResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ClinicalImpressionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClinicalImpressionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ClinicalImpressionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ClinicalImpressionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClinicalImpressionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClinicalImpressionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ClinicalImpressionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClinicalImpressionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClinicalImpressionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClinicalImpressionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClinicalImpressionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClinicalImpressionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ClinicalImpressionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClinicalImpressionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ClinicalImpressionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ClinicalImpressionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClinicalImpressionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClinicalImpressionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ClinicalImpressionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClinicalImpressionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ClinicalImpressionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ClinicalImpressionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClinicalImpressionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClinicalImpressionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ClinicalImpressionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ClinicalImpressionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ClinicalImpressionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ClinicalImpressionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ClinicalImpressionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CodeSystemResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CodeSystemResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CodeSystemResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CodeSystemResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CodeSystemResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CodeSystemResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CodeSystemResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CodeSystemResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CodeSystemResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CodeSystemResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CodeSystemResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CodeSystemResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CodeSystemResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CodeSystemResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CodeSystemResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CodeSystemResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CodeSystemResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CodeSystemResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CodeSystemResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CodeSystemResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CodeSystemResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CodeSystemResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CodeSystemResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CodeSystemResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CodeSystemResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CodeSystemResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CodeSystemResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CodeSystemResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CodeSystemResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CommunicationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CommunicationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CommunicationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CommunicationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CommunicationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CommunicationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CommunicationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CommunicationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CommunicationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CommunicationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CommunicationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CommunicationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CommunicationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CommunicationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CommunicationRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CommunicationRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CommunicationRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CommunicationRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CommunicationRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CommunicationRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CommunicationRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CommunicationRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CommunicationRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CommunicationRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CommunicationRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CommunicationRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CommunicationRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CommunicationRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CommunicationRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CommunicationRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CommunicationRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CompartmentDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompartmentDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CompartmentDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CompartmentDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompartmentDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompartmentDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CompartmentDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompartmentDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CompartmentDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CompartmentDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompartmentDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompartmentDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CompartmentDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompartmentDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CompartmentDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CompartmentDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompartmentDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompartmentDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CompartmentDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompartmentDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CompartmentDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CompartmentDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompartmentDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompartmentDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CompartmentDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompartmentDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CompartmentDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompartmentDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompartmentDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CompositionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompositionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CompositionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CompositionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompositionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompositionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CompositionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompositionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CompositionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CompositionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompositionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompositionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CompositionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompositionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CompositionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CompositionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompositionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompositionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CompositionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompositionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CompositionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CompositionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompositionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompositionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CompositionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CompositionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CompositionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CompositionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CompositionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ConceptMapResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConceptMapResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ConceptMapResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ConceptMapResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConceptMapResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConceptMapResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ConceptMapResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConceptMapResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConceptMapResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConceptMapResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConceptMapResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConceptMapResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ConceptMapResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConceptMapResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ConceptMapResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ConceptMapResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConceptMapResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConceptMapResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ConceptMapResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConceptMapResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConceptMapResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConceptMapResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConceptMapResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConceptMapResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ConceptMapResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConceptMapResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ConceptMapResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConceptMapResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConceptMapResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ConditionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConditionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ConditionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ConditionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConditionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConditionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ConditionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConditionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConditionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConditionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConditionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConditionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ConditionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConditionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ConditionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ConditionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConditionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConditionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ConditionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConditionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConditionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConditionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConditionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConditionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ConditionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConditionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ConditionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConditionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConditionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ConsentResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConsentResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ConsentResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ConsentResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConsentResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConsentResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ConsentResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConsentResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConsentResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConsentResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConsentResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConsentResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ConsentResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConsentResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ConsentResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ConsentResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConsentResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConsentResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ConsentResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConsentResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ConsentResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ConsentResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConsentResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConsentResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ConsentResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ConsentResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ConsentResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ConsentResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ConsentResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ContractResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ContractResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ContractResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ContractResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ContractResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ContractResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ContractResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ContractResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ContractResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ContractResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ContractResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ContractResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ContractResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ContractResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ContractResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ContractResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ContractResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ContractResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ContractResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ContractResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ContractResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ContractResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ContractResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ContractResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ContractResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ContractResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ContractResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ContractResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ContractResIndexUri]([ResourceId])
CREATE TABLE [dbo].[CoverageResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CoverageResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[CoverageResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[CoverageResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CoverageResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CoverageResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[CoverageResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CoverageResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CoverageResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[CoverageResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CoverageResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CoverageResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[CoverageResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CoverageResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[CoverageResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[CoverageResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CoverageResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CoverageResIndexReference]([ResourceId])
CREATE TABLE [dbo].[CoverageResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CoverageResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[CoverageResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[CoverageResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CoverageResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CoverageResIndexToken]([ResourceId])
CREATE TABLE [dbo].[CoverageResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.CoverageResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[CoverageResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[CoverageResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[CoverageResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DataElementResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DataElementResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DataElementResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DataElementResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DataElementResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DataElementResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DataElementResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DataElementResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DataElementResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DataElementResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DataElementResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DataElementResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DataElementResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DataElementResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DataElementResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DataElementResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DataElementResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DataElementResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DataElementResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DataElementResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DataElementResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DataElementResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DataElementResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DataElementResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DataElementResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DataElementResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DataElementResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DataElementResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DataElementResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DetectedIssueResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DetectedIssueResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DetectedIssueResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DetectedIssueResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DetectedIssueResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DetectedIssueResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DetectedIssueResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DetectedIssueResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DetectedIssueResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DetectedIssueResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DetectedIssueResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DetectedIssueResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DetectedIssueResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DetectedIssueResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DetectedIssueResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DetectedIssueResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DetectedIssueResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DetectedIssueResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DetectedIssueResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DetectedIssueResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DetectedIssueResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DetectedIssueResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DetectedIssueResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DetectedIssueResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DetectedIssueResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DetectedIssueResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DetectedIssueResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DetectedIssueResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DetectedIssueResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DeviceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DeviceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DeviceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DeviceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DeviceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DeviceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DeviceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DeviceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DeviceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DeviceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DeviceComponentResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceComponentResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DeviceComponentResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DeviceComponentResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceComponentResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceComponentResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DeviceComponentResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceComponentResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceComponentResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceComponentResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceComponentResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceComponentResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DeviceComponentResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceComponentResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DeviceComponentResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DeviceComponentResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceComponentResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceComponentResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DeviceComponentResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceComponentResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceComponentResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceComponentResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceComponentResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceComponentResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DeviceComponentResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceComponentResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DeviceComponentResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceComponentResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceComponentResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DeviceMetricResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceMetricResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DeviceMetricResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DeviceMetricResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceMetricResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceMetricResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DeviceMetricResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceMetricResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceMetricResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceMetricResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceMetricResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceMetricResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DeviceMetricResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceMetricResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DeviceMetricResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DeviceMetricResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceMetricResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceMetricResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DeviceMetricResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceMetricResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceMetricResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceMetricResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceMetricResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceMetricResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DeviceMetricResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceMetricResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DeviceMetricResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceMetricResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceMetricResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DeviceRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DeviceRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DeviceRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DeviceRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DeviceRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DeviceRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DeviceRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DeviceRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DeviceRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DeviceRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DeviceUseStatementResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceUseStatementResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DeviceUseStatementResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DeviceUseStatementResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceUseStatementResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceUseStatementResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DeviceUseStatementResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceUseStatementResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceUseStatementResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceUseStatementResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceUseStatementResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceUseStatementResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DeviceUseStatementResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceUseStatementResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DeviceUseStatementResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DeviceUseStatementResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceUseStatementResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceUseStatementResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DeviceUseStatementResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceUseStatementResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DeviceUseStatementResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DeviceUseStatementResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceUseStatementResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceUseStatementResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DeviceUseStatementResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DeviceUseStatementResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DeviceUseStatementResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DeviceUseStatementResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DeviceUseStatementResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DiagnosticReportResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DiagnosticReportResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DiagnosticReportResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DiagnosticReportResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DiagnosticReportResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DiagnosticReportResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DiagnosticReportResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DiagnosticReportResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DiagnosticReportResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DiagnosticReportResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DiagnosticReportResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DiagnosticReportResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DiagnosticReportResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DiagnosticReportResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DiagnosticReportResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DiagnosticReportResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DiagnosticReportResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DiagnosticReportResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DiagnosticReportResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DiagnosticReportResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DiagnosticReportResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DiagnosticReportResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DiagnosticReportResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DiagnosticReportResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DiagnosticReportResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DiagnosticReportResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DiagnosticReportResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DiagnosticReportResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DiagnosticReportResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DocumentManifestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentManifestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DocumentManifestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DocumentManifestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentManifestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentManifestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DocumentManifestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentManifestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DocumentManifestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DocumentManifestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentManifestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentManifestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DocumentManifestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentManifestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DocumentManifestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DocumentManifestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentManifestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentManifestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DocumentManifestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentManifestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DocumentManifestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DocumentManifestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentManifestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentManifestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DocumentManifestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentManifestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DocumentManifestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentManifestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentManifestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[DocumentReferenceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentReferenceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[DocumentReferenceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[DocumentReferenceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentReferenceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentReferenceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[DocumentReferenceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentReferenceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DocumentReferenceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[DocumentReferenceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentReferenceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentReferenceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[DocumentReferenceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentReferenceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[DocumentReferenceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[DocumentReferenceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentReferenceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentReferenceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[DocumentReferenceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentReferenceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[DocumentReferenceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[DocumentReferenceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentReferenceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentReferenceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[DocumentReferenceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.DocumentReferenceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[DocumentReferenceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[DocumentReferenceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[DocumentReferenceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EligibilityRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EligibilityRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EligibilityRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EligibilityRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EligibilityRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EligibilityRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EligibilityRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EligibilityRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EligibilityRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EligibilityRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EligibilityRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EligibilityRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EligibilityRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EligibilityRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EligibilityResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EligibilityResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EligibilityResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EligibilityResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EligibilityResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EligibilityResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EligibilityResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EligibilityResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EligibilityResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EligibilityResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EligibilityResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EligibilityResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EligibilityResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EligibilityResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EligibilityResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EligibilityResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EligibilityResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EncounterResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EncounterResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EncounterResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EncounterResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EncounterResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EncounterResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EncounterResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EncounterResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EncounterResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EncounterResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EncounterResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EncounterResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EncounterResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EncounterResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EncounterResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EncounterResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EncounterResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EncounterResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EncounterResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EncounterResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EncounterResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EncounterResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EncounterResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EncounterResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EncounterResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EncounterResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EncounterResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EncounterResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EncounterResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EndpointResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EndpointResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EndpointResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EndpointResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EndpointResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EndpointResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EndpointResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EndpointResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EndpointResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EndpointResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EndpointResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EndpointResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EndpointResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EndpointResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EndpointResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EndpointResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EndpointResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EndpointResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EndpointResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EndpointResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EndpointResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EndpointResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EndpointResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EndpointResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EndpointResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EndpointResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EndpointResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EndpointResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EndpointResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EnrollmentRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EnrollmentRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EnrollmentRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EnrollmentRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EnrollmentRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EnrollmentRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EnrollmentRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EnrollmentRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EnrollmentRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EnrollmentRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EnrollmentRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EnrollmentRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EnrollmentRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EnrollmentRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EnrollmentResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EnrollmentResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EnrollmentResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EnrollmentResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EnrollmentResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EnrollmentResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EnrollmentResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EnrollmentResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EnrollmentResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EnrollmentResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EnrollmentResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EnrollmentResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EnrollmentResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EnrollmentResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EnrollmentResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EnrollmentResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EnrollmentResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[EpisodeOfCareResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EpisodeOfCareResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[EpisodeOfCareResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[EpisodeOfCareResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EpisodeOfCareResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EpisodeOfCareResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[EpisodeOfCareResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EpisodeOfCareResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EpisodeOfCareResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[EpisodeOfCareResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EpisodeOfCareResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EpisodeOfCareResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[EpisodeOfCareResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EpisodeOfCareResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[EpisodeOfCareResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[EpisodeOfCareResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EpisodeOfCareResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EpisodeOfCareResIndexReference]([ResourceId])
CREATE TABLE [dbo].[EpisodeOfCareResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EpisodeOfCareResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[EpisodeOfCareResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[EpisodeOfCareResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EpisodeOfCareResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EpisodeOfCareResIndexToken]([ResourceId])
CREATE TABLE [dbo].[EpisodeOfCareResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.EpisodeOfCareResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[EpisodeOfCareResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[EpisodeOfCareResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[EpisodeOfCareResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ExpansionProfileResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExpansionProfileResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ExpansionProfileResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ExpansionProfileResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExpansionProfileResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExpansionProfileResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ExpansionProfileResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExpansionProfileResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ExpansionProfileResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ExpansionProfileResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExpansionProfileResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExpansionProfileResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ExpansionProfileResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExpansionProfileResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ExpansionProfileResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ExpansionProfileResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExpansionProfileResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExpansionProfileResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ExpansionProfileResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExpansionProfileResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ExpansionProfileResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ExpansionProfileResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExpansionProfileResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExpansionProfileResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ExpansionProfileResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExpansionProfileResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ExpansionProfileResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExpansionProfileResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExpansionProfileResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ExplanationOfBenefitResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExplanationOfBenefitResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ExplanationOfBenefitResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ExplanationOfBenefitResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExplanationOfBenefitResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExplanationOfBenefitResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ExplanationOfBenefitResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExplanationOfBenefitResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ExplanationOfBenefitResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ExplanationOfBenefitResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExplanationOfBenefitResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExplanationOfBenefitResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ExplanationOfBenefitResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExplanationOfBenefitResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ExplanationOfBenefitResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ExplanationOfBenefitResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExplanationOfBenefitResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExplanationOfBenefitResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ExplanationOfBenefitResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExplanationOfBenefitResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ExplanationOfBenefitResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ExplanationOfBenefitResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExplanationOfBenefitResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExplanationOfBenefitResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ExplanationOfBenefitResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ExplanationOfBenefitResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ExplanationOfBenefitResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ExplanationOfBenefitResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ExplanationOfBenefitResIndexUri]([ResourceId])
CREATE TABLE [dbo].[FamilyMemberHistoryResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FamilyMemberHistoryResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[FamilyMemberHistoryResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[FamilyMemberHistoryResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FamilyMemberHistoryResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FamilyMemberHistoryResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[FamilyMemberHistoryResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FamilyMemberHistoryResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[FamilyMemberHistoryResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[FamilyMemberHistoryResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FamilyMemberHistoryResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FamilyMemberHistoryResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[FamilyMemberHistoryResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FamilyMemberHistoryResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[FamilyMemberHistoryResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[FamilyMemberHistoryResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FamilyMemberHistoryResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FamilyMemberHistoryResIndexReference]([ResourceId])
CREATE TABLE [dbo].[FamilyMemberHistoryResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FamilyMemberHistoryResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[FamilyMemberHistoryResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[FamilyMemberHistoryResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FamilyMemberHistoryResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FamilyMemberHistoryResIndexToken]([ResourceId])
CREATE TABLE [dbo].[FamilyMemberHistoryResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FamilyMemberHistoryResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[FamilyMemberHistoryResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FamilyMemberHistoryResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FamilyMemberHistoryResIndexUri]([ResourceId])
CREATE TABLE [dbo].[FlagResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FlagResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[FlagResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[FlagResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FlagResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FlagResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[FlagResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FlagResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[FlagResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[FlagResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FlagResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FlagResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[FlagResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FlagResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[FlagResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[FlagResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FlagResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FlagResIndexReference]([ResourceId])
CREATE TABLE [dbo].[FlagResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FlagResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[FlagResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[FlagResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FlagResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FlagResIndexToken]([ResourceId])
CREATE TABLE [dbo].[FlagResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.FlagResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[FlagResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[FlagResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[FlagResIndexUri]([ResourceId])
CREATE TABLE [dbo].[GoalResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GoalResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[GoalResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[GoalResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GoalResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GoalResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[GoalResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GoalResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GoalResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[GoalResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GoalResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GoalResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[GoalResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GoalResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[GoalResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[GoalResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GoalResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GoalResIndexReference]([ResourceId])
CREATE TABLE [dbo].[GoalResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GoalResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GoalResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[GoalResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GoalResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GoalResIndexToken]([ResourceId])
CREATE TABLE [dbo].[GoalResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GoalResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[GoalResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GoalResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GoalResIndexUri]([ResourceId])
CREATE TABLE [dbo].[GraphDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GraphDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[GraphDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[GraphDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GraphDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GraphDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[GraphDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GraphDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GraphDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[GraphDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GraphDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GraphDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[GraphDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GraphDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[GraphDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[GraphDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GraphDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GraphDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[GraphDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GraphDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GraphDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[GraphDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GraphDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GraphDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[GraphDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GraphDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[GraphDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GraphDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GraphDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[GroupResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GroupResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[GroupResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[GroupResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GroupResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GroupResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[GroupResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GroupResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GroupResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[GroupResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GroupResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GroupResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[GroupResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GroupResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[GroupResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[GroupResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GroupResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GroupResIndexReference]([ResourceId])
CREATE TABLE [dbo].[GroupResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GroupResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GroupResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[GroupResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GroupResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GroupResIndexToken]([ResourceId])
CREATE TABLE [dbo].[GroupResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GroupResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[GroupResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GroupResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GroupResIndexUri]([ResourceId])
CREATE TABLE [dbo].[GuidanceResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GuidanceResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[GuidanceResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[GuidanceResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GuidanceResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GuidanceResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[GuidanceResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GuidanceResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GuidanceResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[GuidanceResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GuidanceResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GuidanceResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[GuidanceResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GuidanceResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[GuidanceResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[GuidanceResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GuidanceResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GuidanceResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[GuidanceResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GuidanceResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[GuidanceResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[GuidanceResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GuidanceResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GuidanceResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[GuidanceResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.GuidanceResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[GuidanceResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[GuidanceResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[GuidanceResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[HealthcareServiceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.HealthcareServiceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[HealthcareServiceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[HealthcareServiceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[HealthcareServiceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[HealthcareServiceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[HealthcareServiceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.HealthcareServiceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[HealthcareServiceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[HealthcareServiceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[HealthcareServiceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[HealthcareServiceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[HealthcareServiceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.HealthcareServiceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[HealthcareServiceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[HealthcareServiceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[HealthcareServiceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[HealthcareServiceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[HealthcareServiceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.HealthcareServiceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[HealthcareServiceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[HealthcareServiceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[HealthcareServiceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[HealthcareServiceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[HealthcareServiceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.HealthcareServiceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[HealthcareServiceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[HealthcareServiceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[HealthcareServiceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ImagingManifestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingManifestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ImagingManifestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ImagingManifestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingManifestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingManifestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ImagingManifestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingManifestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImagingManifestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImagingManifestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingManifestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingManifestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ImagingManifestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingManifestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ImagingManifestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ImagingManifestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingManifestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingManifestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ImagingManifestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingManifestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImagingManifestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImagingManifestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingManifestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingManifestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ImagingManifestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingManifestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ImagingManifestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingManifestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingManifestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ImagingStudyResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingStudyResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ImagingStudyResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ImagingStudyResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingStudyResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingStudyResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ImagingStudyResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingStudyResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImagingStudyResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImagingStudyResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingStudyResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingStudyResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ImagingStudyResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingStudyResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ImagingStudyResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ImagingStudyResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingStudyResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingStudyResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ImagingStudyResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingStudyResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImagingStudyResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImagingStudyResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingStudyResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingStudyResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ImagingStudyResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImagingStudyResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ImagingStudyResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImagingStudyResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImagingStudyResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ImmunizationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ImmunizationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ImmunizationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ImmunizationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImmunizationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImmunizationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ImmunizationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ImmunizationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ImmunizationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ImmunizationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImmunizationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImmunizationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ImmunizationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ImmunizationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ImmunizationRecommendationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationRecommendationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ImmunizationRecommendationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ImmunizationRecommendationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationRecommendationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationRecommendationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ImmunizationRecommendationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationRecommendationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImmunizationRecommendationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImmunizationRecommendationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationRecommendationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationRecommendationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ImmunizationRecommendationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationRecommendationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ImmunizationRecommendationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ImmunizationRecommendationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationRecommendationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationRecommendationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ImmunizationRecommendationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationRecommendationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImmunizationRecommendationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImmunizationRecommendationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationRecommendationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationRecommendationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ImmunizationRecommendationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImmunizationRecommendationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ImmunizationRecommendationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImmunizationRecommendationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImmunizationRecommendationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ImplementationGuideResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImplementationGuideResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ImplementationGuideResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ImplementationGuideResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImplementationGuideResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImplementationGuideResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ImplementationGuideResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImplementationGuideResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImplementationGuideResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImplementationGuideResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImplementationGuideResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImplementationGuideResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ImplementationGuideResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImplementationGuideResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ImplementationGuideResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ImplementationGuideResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImplementationGuideResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImplementationGuideResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ImplementationGuideResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImplementationGuideResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ImplementationGuideResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ImplementationGuideResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImplementationGuideResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImplementationGuideResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ImplementationGuideResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ImplementationGuideResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ImplementationGuideResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ImplementationGuideResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ImplementationGuideResIndexUri]([ResourceId])
CREATE TABLE [dbo].[LibraryResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LibraryResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[LibraryResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[LibraryResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LibraryResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LibraryResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[LibraryResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LibraryResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LibraryResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[LibraryResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LibraryResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LibraryResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[LibraryResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LibraryResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[LibraryResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[LibraryResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LibraryResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LibraryResIndexReference]([ResourceId])
CREATE TABLE [dbo].[LibraryResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LibraryResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LibraryResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[LibraryResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LibraryResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LibraryResIndexToken]([ResourceId])
CREATE TABLE [dbo].[LibraryResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LibraryResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[LibraryResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LibraryResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LibraryResIndexUri]([ResourceId])
CREATE TABLE [dbo].[LinkageResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LinkageResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[LinkageResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[LinkageResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LinkageResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LinkageResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[LinkageResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LinkageResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LinkageResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[LinkageResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LinkageResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LinkageResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[LinkageResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LinkageResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[LinkageResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[LinkageResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LinkageResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LinkageResIndexReference]([ResourceId])
CREATE TABLE [dbo].[LinkageResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LinkageResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LinkageResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[LinkageResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LinkageResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LinkageResIndexToken]([ResourceId])
CREATE TABLE [dbo].[LinkageResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LinkageResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[LinkageResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LinkageResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LinkageResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ListResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ListResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ListResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ListResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ListResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ListResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ListResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ListResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ListResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ListResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ListResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ListResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ListResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ListResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ListResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ListResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ListResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ListResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ListResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ListResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ListResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ListResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ListResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ListResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ListResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ListResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ListResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ListResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ListResIndexUri]([ResourceId])
CREATE TABLE [dbo].[LocationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LocationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[LocationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[LocationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LocationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LocationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[LocationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LocationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LocationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[LocationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LocationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LocationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[LocationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LocationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[LocationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[LocationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LocationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LocationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[LocationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LocationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[LocationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[LocationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LocationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LocationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[LocationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.LocationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[LocationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[LocationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[LocationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MeasureResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MeasureResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MeasureResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MeasureResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MeasureResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MeasureResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MeasureResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MeasureResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MeasureResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MeasureResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MeasureResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MeasureResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MeasureResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MeasureResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MeasureReportResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureReportResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MeasureReportResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MeasureReportResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureReportResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureReportResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MeasureReportResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureReportResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MeasureReportResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MeasureReportResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureReportResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureReportResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MeasureReportResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureReportResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MeasureReportResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MeasureReportResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureReportResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureReportResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MeasureReportResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureReportResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MeasureReportResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MeasureReportResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureReportResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureReportResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MeasureReportResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MeasureReportResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MeasureReportResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MeasureReportResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MeasureReportResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MediaResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MediaResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MediaResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MediaResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MediaResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MediaResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MediaResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MediaResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MediaResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MediaResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MediaResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MediaResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MediaResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MediaResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MediaResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MediaResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MediaResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MediaResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MediaResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MediaResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MediaResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MediaResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MediaResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MediaResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MediaResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MediaResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MediaResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MediaResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MediaResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MedicationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MedicationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MedicationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MedicationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MedicationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MedicationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MedicationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MedicationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MedicationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MedicationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MedicationAdministrationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationAdministrationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MedicationAdministrationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MedicationAdministrationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationAdministrationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationAdministrationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MedicationAdministrationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationAdministrationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationAdministrationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationAdministrationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationAdministrationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationAdministrationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MedicationAdministrationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationAdministrationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MedicationAdministrationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MedicationAdministrationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationAdministrationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationAdministrationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MedicationAdministrationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationAdministrationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationAdministrationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationAdministrationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationAdministrationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationAdministrationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MedicationAdministrationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationAdministrationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MedicationAdministrationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationAdministrationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationAdministrationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MedicationDispenseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationDispenseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MedicationDispenseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MedicationDispenseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationDispenseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationDispenseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MedicationDispenseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationDispenseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationDispenseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationDispenseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationDispenseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationDispenseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MedicationDispenseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationDispenseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MedicationDispenseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MedicationDispenseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationDispenseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationDispenseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MedicationDispenseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationDispenseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationDispenseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationDispenseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationDispenseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationDispenseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MedicationDispenseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationDispenseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MedicationDispenseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationDispenseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationDispenseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MedicationRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MedicationRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MedicationRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MedicationRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MedicationRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MedicationRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MedicationRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MedicationRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MedicationRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MedicationRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MedicationStatementResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationStatementResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MedicationStatementResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MedicationStatementResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationStatementResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationStatementResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MedicationStatementResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationStatementResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationStatementResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationStatementResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationStatementResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationStatementResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MedicationStatementResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationStatementResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MedicationStatementResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MedicationStatementResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationStatementResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationStatementResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MedicationStatementResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationStatementResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MedicationStatementResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MedicationStatementResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationStatementResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationStatementResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MedicationStatementResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MedicationStatementResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MedicationStatementResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MedicationStatementResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MedicationStatementResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MessageDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MessageDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MessageDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MessageDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MessageDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MessageDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MessageDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MessageDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MessageDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MessageDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MessageDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MessageDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MessageDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MessageDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[MessageHeaderResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageHeaderResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[MessageHeaderResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[MessageHeaderResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageHeaderResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageHeaderResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[MessageHeaderResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageHeaderResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MessageHeaderResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[MessageHeaderResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageHeaderResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageHeaderResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[MessageHeaderResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageHeaderResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[MessageHeaderResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[MessageHeaderResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageHeaderResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageHeaderResIndexReference]([ResourceId])
CREATE TABLE [dbo].[MessageHeaderResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageHeaderResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[MessageHeaderResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[MessageHeaderResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageHeaderResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageHeaderResIndexToken]([ResourceId])
CREATE TABLE [dbo].[MessageHeaderResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.MessageHeaderResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[MessageHeaderResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[MessageHeaderResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[MessageHeaderResIndexUri]([ResourceId])
CREATE TABLE [dbo].[NamingSystemResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NamingSystemResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[NamingSystemResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[NamingSystemResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NamingSystemResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NamingSystemResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[NamingSystemResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NamingSystemResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[NamingSystemResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[NamingSystemResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NamingSystemResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NamingSystemResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[NamingSystemResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NamingSystemResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[NamingSystemResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[NamingSystemResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NamingSystemResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NamingSystemResIndexReference]([ResourceId])
CREATE TABLE [dbo].[NamingSystemResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NamingSystemResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[NamingSystemResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[NamingSystemResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NamingSystemResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NamingSystemResIndexToken]([ResourceId])
CREATE TABLE [dbo].[NamingSystemResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NamingSystemResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[NamingSystemResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NamingSystemResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NamingSystemResIndexUri]([ResourceId])
CREATE TABLE [dbo].[NutritionOrderResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NutritionOrderResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[NutritionOrderResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[NutritionOrderResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NutritionOrderResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NutritionOrderResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[NutritionOrderResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NutritionOrderResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[NutritionOrderResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[NutritionOrderResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NutritionOrderResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NutritionOrderResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[NutritionOrderResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NutritionOrderResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[NutritionOrderResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[NutritionOrderResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NutritionOrderResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NutritionOrderResIndexReference]([ResourceId])
CREATE TABLE [dbo].[NutritionOrderResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NutritionOrderResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[NutritionOrderResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[NutritionOrderResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NutritionOrderResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NutritionOrderResIndexToken]([ResourceId])
CREATE TABLE [dbo].[NutritionOrderResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.NutritionOrderResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[NutritionOrderResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[NutritionOrderResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[NutritionOrderResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ObservationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ObservationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ObservationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ObservationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ObservationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ObservationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ObservationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ObservationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ObservationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ObservationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ObservationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ObservationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ObservationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ObservationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ObservationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ObservationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ObservationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ObservationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ObservationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ObservationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ObservationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ObservationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ObservationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ObservationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ObservationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ObservationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ObservationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ObservationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ObservationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[OperationDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[OperationDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[OperationDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[OperationDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OperationDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[OperationDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[OperationDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[OperationDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[OperationDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[OperationDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OperationDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[OperationDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[OperationDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[OperationDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[OperationOutcomeResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationOutcomeResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[OperationOutcomeResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[OperationOutcomeResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationOutcomeResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationOutcomeResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[OperationOutcomeResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationOutcomeResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OperationOutcomeResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[OperationOutcomeResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationOutcomeResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationOutcomeResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[OperationOutcomeResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationOutcomeResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[OperationOutcomeResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[OperationOutcomeResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationOutcomeResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationOutcomeResIndexReference]([ResourceId])
CREATE TABLE [dbo].[OperationOutcomeResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationOutcomeResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OperationOutcomeResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[OperationOutcomeResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationOutcomeResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationOutcomeResIndexToken]([ResourceId])
CREATE TABLE [dbo].[OperationOutcomeResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OperationOutcomeResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[OperationOutcomeResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OperationOutcomeResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OperationOutcomeResIndexUri]([ResourceId])
CREATE TABLE [dbo].[OrganizationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OrganizationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[OrganizationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[OrganizationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OrganizationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OrganizationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[OrganizationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OrganizationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OrganizationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[OrganizationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OrganizationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OrganizationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[OrganizationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OrganizationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[OrganizationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[OrganizationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OrganizationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OrganizationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[OrganizationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OrganizationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[OrganizationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[OrganizationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OrganizationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OrganizationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[OrganizationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.OrganizationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[OrganizationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[OrganizationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[OrganizationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ParametersResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ParametersResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ParametersResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ParametersResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ParametersResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ParametersResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ParametersResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ParametersResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ParametersResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ParametersResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ParametersResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ParametersResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ParametersResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ParametersResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ParametersResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ParametersResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ParametersResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ParametersResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ParametersResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ParametersResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ParametersResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ParametersResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ParametersResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ParametersResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ParametersResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ParametersResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ParametersResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ParametersResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ParametersResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PatientResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PatientResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PatientResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PatientResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PatientResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PatientResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PatientResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PatientResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PatientResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PatientResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PatientResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PatientResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PatientResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PatientResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PatientResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PatientResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PatientResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PatientResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PatientResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PatientResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PatientResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PatientResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PatientResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PatientResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PatientResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PatientResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PatientResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PatientResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PatientResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PaymentNoticeResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentNoticeResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PaymentNoticeResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PaymentNoticeResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentNoticeResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentNoticeResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PaymentNoticeResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentNoticeResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PaymentNoticeResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PaymentNoticeResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentNoticeResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentNoticeResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PaymentNoticeResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentNoticeResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PaymentNoticeResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PaymentNoticeResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentNoticeResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentNoticeResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PaymentNoticeResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentNoticeResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PaymentNoticeResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PaymentNoticeResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentNoticeResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentNoticeResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PaymentNoticeResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentNoticeResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PaymentNoticeResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentNoticeResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentNoticeResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PaymentReconciliationResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentReconciliationResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PaymentReconciliationResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PaymentReconciliationResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentReconciliationResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentReconciliationResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PaymentReconciliationResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentReconciliationResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PaymentReconciliationResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PaymentReconciliationResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentReconciliationResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentReconciliationResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PaymentReconciliationResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentReconciliationResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PaymentReconciliationResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PaymentReconciliationResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentReconciliationResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentReconciliationResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PaymentReconciliationResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentReconciliationResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PaymentReconciliationResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PaymentReconciliationResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentReconciliationResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentReconciliationResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PaymentReconciliationResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PaymentReconciliationResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PaymentReconciliationResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PaymentReconciliationResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PaymentReconciliationResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PersonResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PersonResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PersonResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PersonResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PersonResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PersonResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PersonResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PersonResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PersonResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PersonResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PersonResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PersonResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PersonResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PersonResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PersonResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PersonResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PersonResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PersonResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PersonResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PersonResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PersonResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PersonResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PersonResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PersonResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PersonResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PersonResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PersonResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PersonResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PersonResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PlanDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PlanDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PlanDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PlanDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PlanDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PlanDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PlanDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PlanDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PlanDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PlanDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PlanDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PlanDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PlanDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PlanDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PlanDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PlanDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PlanDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PlanDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PlanDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PlanDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PlanDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PlanDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PlanDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PlanDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PlanDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PlanDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PlanDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PlanDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PlanDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PractitionerResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PractitionerResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PractitionerResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PractitionerResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PractitionerResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PractitionerResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PractitionerResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PractitionerResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PractitionerResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PractitionerResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PractitionerResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PractitionerResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PractitionerResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PractitionerResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerResIndexUri]([ResourceId])
CREATE TABLE [dbo].[PractitionerRoleResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerRoleResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[PractitionerRoleResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[PractitionerRoleResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerRoleResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerRoleResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[PractitionerRoleResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerRoleResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PractitionerRoleResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[PractitionerRoleResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerRoleResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerRoleResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[PractitionerRoleResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerRoleResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[PractitionerRoleResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[PractitionerRoleResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerRoleResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerRoleResIndexReference]([ResourceId])
CREATE TABLE [dbo].[PractitionerRoleResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerRoleResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[PractitionerRoleResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[PractitionerRoleResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerRoleResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerRoleResIndexToken]([ResourceId])
CREATE TABLE [dbo].[PractitionerRoleResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.PractitionerRoleResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[PractitionerRoleResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[PractitionerRoleResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[PractitionerRoleResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ProcedureResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ProcedureResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ProcedureResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ProcedureResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcedureResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcedureResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ProcedureResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ProcedureResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ProcedureResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ProcedureResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcedureResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcedureResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ProcedureResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ProcedureResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ProcedureRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ProcedureRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ProcedureRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ProcedureRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcedureRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcedureRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ProcedureRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ProcedureRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ProcedureRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ProcedureRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcedureRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcedureRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ProcedureRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcedureRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ProcedureRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcedureRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcedureRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ProcessRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ProcessRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ProcessRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ProcessRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcessRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcessRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ProcessRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ProcessRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ProcessRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ProcessRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcessRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcessRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ProcessRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ProcessRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ProcessResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ProcessResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ProcessResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ProcessResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcessResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcessResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ProcessResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ProcessResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ProcessResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ProcessResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProcessResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProcessResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ProcessResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProcessResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ProcessResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProcessResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProcessResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ProvenanceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProvenanceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ProvenanceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ProvenanceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProvenanceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProvenanceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ProvenanceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProvenanceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProvenanceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProvenanceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProvenanceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProvenanceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ProvenanceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProvenanceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ProvenanceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ProvenanceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProvenanceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProvenanceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ProvenanceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProvenanceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ProvenanceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ProvenanceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProvenanceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProvenanceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ProvenanceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ProvenanceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ProvenanceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ProvenanceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ProvenanceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[QuestionnaireResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[QuestionnaireResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[QuestionnaireResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[QuestionnaireResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[QuestionnaireResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[QuestionnaireResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResIndexReference]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[QuestionnaireResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[QuestionnaireResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResIndexToken]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[QuestionnaireResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResIndexUri]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResponseResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResponseResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[QuestionnaireResponseResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[QuestionnaireResponseResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResponseResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResponseResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResponseResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResponseResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[QuestionnaireResponseResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[QuestionnaireResponseResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResponseResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResponseResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResponseResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResponseResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[QuestionnaireResponseResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[QuestionnaireResponseResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResponseResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResponseResIndexReference]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResponseResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResponseResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[QuestionnaireResponseResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[QuestionnaireResponseResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResponseResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResponseResIndexToken]([ResourceId])
CREATE TABLE [dbo].[QuestionnaireResponseResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.QuestionnaireResponseResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[QuestionnaireResponseResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[QuestionnaireResponseResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[QuestionnaireResponseResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ReferralRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ReferralRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ReferralRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ReferralRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ReferralRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ReferralRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ReferralRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ReferralRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ReferralRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ReferralRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ReferralRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ReferralRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ReferralRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ReferralRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ReferralRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ReferralRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ReferralRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ReferralRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ReferralRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ReferralRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ReferralRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ReferralRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ReferralRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ReferralRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ReferralRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ReferralRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ReferralRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ReferralRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ReferralRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[RelatedPersonResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RelatedPersonResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[RelatedPersonResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[RelatedPersonResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RelatedPersonResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RelatedPersonResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[RelatedPersonResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RelatedPersonResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RelatedPersonResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[RelatedPersonResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RelatedPersonResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RelatedPersonResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[RelatedPersonResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RelatedPersonResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[RelatedPersonResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[RelatedPersonResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RelatedPersonResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RelatedPersonResIndexReference]([ResourceId])
CREATE TABLE [dbo].[RelatedPersonResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RelatedPersonResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RelatedPersonResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[RelatedPersonResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RelatedPersonResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RelatedPersonResIndexToken]([ResourceId])
CREATE TABLE [dbo].[RelatedPersonResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RelatedPersonResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[RelatedPersonResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RelatedPersonResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RelatedPersonResIndexUri]([ResourceId])
CREATE TABLE [dbo].[RequestGroupResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RequestGroupResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[RequestGroupResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[RequestGroupResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RequestGroupResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RequestGroupResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[RequestGroupResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RequestGroupResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RequestGroupResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[RequestGroupResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RequestGroupResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RequestGroupResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[RequestGroupResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RequestGroupResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[RequestGroupResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[RequestGroupResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RequestGroupResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RequestGroupResIndexReference]([ResourceId])
CREATE TABLE [dbo].[RequestGroupResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RequestGroupResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RequestGroupResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[RequestGroupResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RequestGroupResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RequestGroupResIndexToken]([ResourceId])
CREATE TABLE [dbo].[RequestGroupResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RequestGroupResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[RequestGroupResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RequestGroupResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RequestGroupResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ResearchStudyResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchStudyResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ResearchStudyResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ResearchStudyResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchStudyResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchStudyResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ResearchStudyResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchStudyResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ResearchStudyResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ResearchStudyResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchStudyResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchStudyResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ResearchStudyResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchStudyResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ResearchStudyResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ResearchStudyResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchStudyResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchStudyResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ResearchStudyResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchStudyResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ResearchStudyResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ResearchStudyResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchStudyResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchStudyResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ResearchStudyResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchStudyResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ResearchStudyResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchStudyResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchStudyResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ResearchSubjectResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchSubjectResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ResearchSubjectResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ResearchSubjectResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchSubjectResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchSubjectResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ResearchSubjectResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchSubjectResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ResearchSubjectResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ResearchSubjectResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchSubjectResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchSubjectResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ResearchSubjectResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchSubjectResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ResearchSubjectResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ResearchSubjectResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchSubjectResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchSubjectResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ResearchSubjectResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchSubjectResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ResearchSubjectResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ResearchSubjectResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchSubjectResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchSubjectResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ResearchSubjectResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ResearchSubjectResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ResearchSubjectResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ResearchSubjectResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ResearchSubjectResIndexUri]([ResourceId])
CREATE TABLE [dbo].[RiskAssessmentResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RiskAssessmentResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[RiskAssessmentResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[RiskAssessmentResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RiskAssessmentResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RiskAssessmentResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[RiskAssessmentResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RiskAssessmentResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RiskAssessmentResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[RiskAssessmentResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RiskAssessmentResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RiskAssessmentResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[RiskAssessmentResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RiskAssessmentResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[RiskAssessmentResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[RiskAssessmentResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RiskAssessmentResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RiskAssessmentResIndexReference]([ResourceId])
CREATE TABLE [dbo].[RiskAssessmentResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RiskAssessmentResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[RiskAssessmentResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[RiskAssessmentResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RiskAssessmentResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RiskAssessmentResIndexToken]([ResourceId])
CREATE TABLE [dbo].[RiskAssessmentResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.RiskAssessmentResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[RiskAssessmentResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[RiskAssessmentResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[RiskAssessmentResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ScheduleResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ScheduleResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ScheduleResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ScheduleResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ScheduleResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ScheduleResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ScheduleResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ScheduleResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ScheduleResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ScheduleResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ScheduleResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ScheduleResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ScheduleResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ScheduleResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ScheduleResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ScheduleResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ScheduleResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ScheduleResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ScheduleResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ScheduleResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ScheduleResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ScheduleResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ScheduleResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ScheduleResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ScheduleResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ScheduleResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ScheduleResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ScheduleResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ScheduleResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SearchParameterResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SearchParameterResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SearchParameterResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SearchParameterResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SearchParameterResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SearchParameterResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SearchParameterResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SearchParameterResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SearchParameterResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SearchParameterResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SearchParameterResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SearchParameterResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SearchParameterResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SearchParameterResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SearchParameterResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SearchParameterResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SearchParameterResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SearchParameterResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SearchParameterResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SearchParameterResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SearchParameterResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SearchParameterResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SearchParameterResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SearchParameterResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SearchParameterResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SearchParameterResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SearchParameterResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SearchParameterResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SearchParameterResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SequenceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SequenceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SequenceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SequenceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SequenceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SequenceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SequenceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SequenceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SequenceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SequenceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SequenceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SequenceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SequenceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SequenceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SequenceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SequenceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SequenceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SequenceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SequenceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SequenceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SequenceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SequenceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SequenceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SequenceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SequenceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SequenceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SequenceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SequenceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SequenceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ServiceDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ServiceDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ServiceDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ServiceDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ServiceDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ServiceDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ServiceDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ServiceDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ServiceDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ServiceDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ServiceDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ServiceDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ServiceDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ServiceDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ServiceDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ServiceDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ServiceDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ServiceDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ServiceDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ServiceDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ServiceDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ServiceDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ServiceDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ServiceDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ServiceDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ServiceDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ServiceDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ServiceDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ServiceDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SlotResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SlotResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SlotResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SlotResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SlotResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SlotResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SlotResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SlotResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SlotResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SlotResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SlotResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SlotResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SlotResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SlotResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SlotResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SlotResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SlotResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SlotResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SlotResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SlotResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SlotResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SlotResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SlotResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SlotResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SlotResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SlotResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SlotResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SlotResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SlotResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SpecimenResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SpecimenResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SpecimenResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SpecimenResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SpecimenResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SpecimenResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SpecimenResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SpecimenResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SpecimenResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SpecimenResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SpecimenResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SpecimenResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SpecimenResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SpecimenResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SpecimenResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SpecimenResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SpecimenResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SpecimenResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SpecimenResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SpecimenResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SpecimenResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SpecimenResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SpecimenResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SpecimenResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SpecimenResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SpecimenResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SpecimenResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SpecimenResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SpecimenResIndexUri]([ResourceId])
CREATE TABLE [dbo].[StructureDefinitionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureDefinitionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[StructureDefinitionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[StructureDefinitionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureDefinitionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureDefinitionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[StructureDefinitionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureDefinitionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[StructureDefinitionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[StructureDefinitionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureDefinitionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureDefinitionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[StructureDefinitionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureDefinitionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[StructureDefinitionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[StructureDefinitionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureDefinitionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureDefinitionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[StructureDefinitionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureDefinitionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[StructureDefinitionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[StructureDefinitionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureDefinitionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureDefinitionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[StructureDefinitionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureDefinitionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[StructureDefinitionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureDefinitionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureDefinitionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[StructureMapResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureMapResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[StructureMapResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[StructureMapResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureMapResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureMapResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[StructureMapResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureMapResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[StructureMapResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[StructureMapResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureMapResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureMapResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[StructureMapResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureMapResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[StructureMapResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[StructureMapResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureMapResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureMapResIndexReference]([ResourceId])
CREATE TABLE [dbo].[StructureMapResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureMapResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[StructureMapResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[StructureMapResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureMapResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureMapResIndexToken]([ResourceId])
CREATE TABLE [dbo].[StructureMapResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.StructureMapResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[StructureMapResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[StructureMapResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[StructureMapResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SubscriptionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubscriptionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SubscriptionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SubscriptionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubscriptionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubscriptionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SubscriptionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubscriptionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SubscriptionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SubscriptionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubscriptionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubscriptionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SubscriptionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubscriptionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SubscriptionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SubscriptionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubscriptionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubscriptionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SubscriptionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubscriptionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SubscriptionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SubscriptionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubscriptionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubscriptionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SubscriptionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubscriptionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SubscriptionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubscriptionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubscriptionResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SubstanceResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubstanceResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SubstanceResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SubstanceResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubstanceResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubstanceResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SubstanceResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubstanceResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SubstanceResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SubstanceResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubstanceResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubstanceResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SubstanceResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubstanceResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SubstanceResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SubstanceResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubstanceResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubstanceResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SubstanceResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubstanceResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SubstanceResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SubstanceResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubstanceResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubstanceResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SubstanceResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SubstanceResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SubstanceResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SubstanceResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SubstanceResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SupplyDeliveryResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyDeliveryResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SupplyDeliveryResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SupplyDeliveryResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyDeliveryResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyDeliveryResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SupplyDeliveryResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyDeliveryResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SupplyDeliveryResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SupplyDeliveryResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyDeliveryResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyDeliveryResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SupplyDeliveryResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyDeliveryResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SupplyDeliveryResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SupplyDeliveryResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyDeliveryResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyDeliveryResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SupplyDeliveryResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyDeliveryResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SupplyDeliveryResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SupplyDeliveryResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyDeliveryResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyDeliveryResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SupplyDeliveryResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyDeliveryResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SupplyDeliveryResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyDeliveryResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyDeliveryResIndexUri]([ResourceId])
CREATE TABLE [dbo].[SupplyRequestResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyRequestResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[SupplyRequestResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[SupplyRequestResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyRequestResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyRequestResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[SupplyRequestResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyRequestResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SupplyRequestResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[SupplyRequestResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyRequestResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyRequestResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[SupplyRequestResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyRequestResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[SupplyRequestResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[SupplyRequestResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyRequestResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyRequestResIndexReference]([ResourceId])
CREATE TABLE [dbo].[SupplyRequestResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyRequestResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[SupplyRequestResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[SupplyRequestResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyRequestResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyRequestResIndexToken]([ResourceId])
CREATE TABLE [dbo].[SupplyRequestResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.SupplyRequestResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[SupplyRequestResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[SupplyRequestResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[SupplyRequestResIndexUri]([ResourceId])
CREATE TABLE [dbo].[TaskResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TaskResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[TaskResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[TaskResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TaskResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TaskResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[TaskResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TaskResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TaskResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[TaskResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TaskResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TaskResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[TaskResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TaskResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[TaskResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[TaskResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TaskResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TaskResIndexReference]([ResourceId])
CREATE TABLE [dbo].[TaskResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TaskResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TaskResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[TaskResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TaskResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TaskResIndexToken]([ResourceId])
CREATE TABLE [dbo].[TaskResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TaskResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[TaskResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TaskResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TaskResIndexUri]([ResourceId])
CREATE TABLE [dbo].[TestReportResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestReportResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[TestReportResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[TestReportResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestReportResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestReportResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[TestReportResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestReportResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TestReportResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[TestReportResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestReportResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestReportResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[TestReportResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestReportResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[TestReportResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[TestReportResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestReportResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestReportResIndexReference]([ResourceId])
CREATE TABLE [dbo].[TestReportResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestReportResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TestReportResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[TestReportResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestReportResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestReportResIndexToken]([ResourceId])
CREATE TABLE [dbo].[TestReportResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestReportResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[TestReportResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestReportResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestReportResIndexUri]([ResourceId])
CREATE TABLE [dbo].[TestScriptResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestScriptResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[TestScriptResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[TestScriptResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestScriptResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestScriptResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[TestScriptResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestScriptResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TestScriptResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[TestScriptResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestScriptResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestScriptResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[TestScriptResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestScriptResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[TestScriptResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[TestScriptResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestScriptResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestScriptResIndexReference]([ResourceId])
CREATE TABLE [dbo].[TestScriptResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestScriptResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[TestScriptResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[TestScriptResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestScriptResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestScriptResIndexToken]([ResourceId])
CREATE TABLE [dbo].[TestScriptResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.TestScriptResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[TestScriptResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[TestScriptResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[TestScriptResIndexUri]([ResourceId])
CREATE TABLE [dbo].[ValueSetResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ValueSetResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[ValueSetResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[ValueSetResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ValueSetResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ValueSetResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[ValueSetResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ValueSetResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ValueSetResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[ValueSetResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ValueSetResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ValueSetResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[ValueSetResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ValueSetResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[ValueSetResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[ValueSetResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ValueSetResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ValueSetResIndexReference]([ResourceId])
CREATE TABLE [dbo].[ValueSetResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ValueSetResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[ValueSetResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[ValueSetResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ValueSetResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ValueSetResIndexToken]([ResourceId])
CREATE TABLE [dbo].[ValueSetResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.ValueSetResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[ValueSetResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[ValueSetResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[ValueSetResIndexUri]([ResourceId])
CREATE TABLE [dbo].[VisionPrescriptionResIndexDateTime] (
    [Id] [int] NOT NULL IDENTITY,
    [DateTimeOffsetHigh] [datetimeoffset](3),
    [DateTimeOffsetLow] [datetimeoffset](3),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.VisionPrescriptionResIndexDateTime] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_DateTimeOffsetHigh] ON [dbo].[VisionPrescriptionResIndexDateTime]([DateTimeOffsetHigh])
CREATE INDEX [ix_DateTimeOffsetLow] ON [dbo].[VisionPrescriptionResIndexDateTime]([DateTimeOffsetLow])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[VisionPrescriptionResIndexDateTime]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[VisionPrescriptionResIndexDateTime]([ResourceId])
CREATE TABLE [dbo].[VisionPrescriptionResIndexQuantity] (
    [Id] [int] NOT NULL IDENTITY,
    [Comparator] [int],
    [Quantity] [decimal](28, 14),
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [Unit] [nvarchar](450),
    [ComparatorHigh] [int],
    [QuantityHigh] [decimal](28, 14),
    [CodeHigh] [nvarchar](128),
    [SystemHigh] [nvarchar](450),
    [UnitHigh] [nvarchar](64),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.VisionPrescriptionResIndexQuantity] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[VisionPrescriptionResIndexQuantity]([Code])
CREATE INDEX [ix_System] ON [dbo].[VisionPrescriptionResIndexQuantity]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[VisionPrescriptionResIndexQuantity]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[VisionPrescriptionResIndexQuantity]([ResourceId])
CREATE TABLE [dbo].[VisionPrescriptionResIndexReference] (
    [Id] [int] NOT NULL IDENTITY,
    [ReferenceFhirId] [nvarchar](128) NOT NULL,
    [ReferenceResourceType] [nvarchar](50) NOT NULL,
    [ReferenceServiceBaseUrlId] [int],
    [ReferenceVersionId] [nvarchar](128),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.VisionPrescriptionResIndexReference] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_ReferenceFhirId] ON [dbo].[VisionPrescriptionResIndexReference]([ReferenceFhirId])
CREATE INDEX [ix_ReferenceServiceBaseUrlId] ON [dbo].[VisionPrescriptionResIndexReference]([ReferenceServiceBaseUrlId])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[VisionPrescriptionResIndexReference]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[VisionPrescriptionResIndexReference]([ResourceId])
CREATE TABLE [dbo].[VisionPrescriptionResIndexToken] (
    [Id] [int] NOT NULL IDENTITY,
    [Code] [nvarchar](128),
    [System] [nvarchar](450),
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.VisionPrescriptionResIndexToken] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Code] ON [dbo].[VisionPrescriptionResIndexToken]([Code])
CREATE INDEX [ix_System] ON [dbo].[VisionPrescriptionResIndexToken]([System])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[VisionPrescriptionResIndexToken]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[VisionPrescriptionResIndexToken]([ResourceId])
CREATE TABLE [dbo].[VisionPrescriptionResIndexUri] (
    [Id] [int] NOT NULL IDENTITY,
    [Uri] [nvarchar](450) NOT NULL,
    [ServiceSearchParameterId] [int] NOT NULL,
    [ResourceId] [int] NOT NULL,
    CONSTRAINT [PK_dbo.VisionPrescriptionResIndexUri] PRIMARY KEY ([Id])
)
CREATE INDEX [ix_Uri] ON [dbo].[VisionPrescriptionResIndexUri]([Uri])
CREATE INDEX [ix_ServiceSearchParameterId] ON [dbo].[VisionPrescriptionResIndexUri]([ServiceSearchParameterId])
CREATE INDEX [IX_ResourceId] ON [dbo].[VisionPrescriptionResIndexUri]([ResourceId])
INSERT INTO [dbo].[AccountResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AccountResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AccountResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AccountResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AccountResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AccountResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AccountResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AccountResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AccountResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AccountResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ActivityDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ActivityDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ActivityDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ActivityDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ActivityDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ActivityDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ActivityDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ActivityDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ActivityDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ActivityDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[AdverseEventResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AdverseEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AdverseEventResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AdverseEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AdverseEventResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AdverseEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AdverseEventResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AdverseEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AdverseEventResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AdverseEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[AllergyIntoleranceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AllergyIntoleranceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AllergyIntoleranceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AllergyIntoleranceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AllergyIntoleranceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AllergyIntoleranceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AllergyIntoleranceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AllergyIntoleranceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AllergyIntoleranceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AllergyIntoleranceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[AppointmentResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AppointmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AppointmentResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AppointmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AppointmentResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AppointmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AppointmentResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AppointmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AppointmentResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AppointmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[AppointmentResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AppointmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AppointmentResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AppointmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AppointmentResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AppointmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AppointmentResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AppointmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AppointmentResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AppointmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[AuditEventResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[AuditEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[AuditEventResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[AuditEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[AuditEventResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[AuditEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[AuditEventResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[AuditEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[AuditEventResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[AuditEventResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[BasicResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[BasicResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[BasicResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[BasicResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[BasicResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[BasicResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[BasicResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[BasicResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[BasicResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[BasicResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[BinaryResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[BinaryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[BinaryResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[BinaryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[BinaryResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[BinaryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[BinaryResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[BinaryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[BinaryResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[BinaryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[BodySiteResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[BodySiteResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[BodySiteResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[BodySiteResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[BodySiteResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[BodySiteResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[BodySiteResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[BodySiteResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[BodySiteResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[BodySiteResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[BundleResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[BundleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[BundleResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[BundleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[BundleResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[BundleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[BundleResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[BundleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[BundleResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[BundleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CapabilityStatementResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CapabilityStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CapabilityStatementResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CapabilityStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CapabilityStatementResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CapabilityStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CapabilityStatementResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CapabilityStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CapabilityStatementResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CapabilityStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CarePlanResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CarePlanResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CarePlanResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CarePlanResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CarePlanResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CarePlanResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CarePlanResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CarePlanResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CarePlanResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CarePlanResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CareTeamResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CareTeamResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CareTeamResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CareTeamResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CareTeamResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CareTeamResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CareTeamResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CareTeamResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CareTeamResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CareTeamResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ChargeItemResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ChargeItemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ChargeItemResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ChargeItemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ChargeItemResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ChargeItemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ChargeItemResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ChargeItemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ChargeItemResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ChargeItemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ClaimResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ClaimResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ClaimResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ClaimResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ClaimResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ClaimResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ClaimResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ClaimResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ClaimResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ClaimResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ClaimResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ClaimResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ClaimResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ClaimResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ClaimResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ClaimResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ClaimResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ClaimResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ClaimResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ClaimResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ClinicalImpressionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ClinicalImpressionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ClinicalImpressionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ClinicalImpressionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ClinicalImpressionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ClinicalImpressionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ClinicalImpressionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ClinicalImpressionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ClinicalImpressionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ClinicalImpressionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CodeSystemResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CodeSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CodeSystemResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CodeSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CodeSystemResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CodeSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CodeSystemResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CodeSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CodeSystemResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CodeSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CommunicationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CommunicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CommunicationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CommunicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CommunicationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CommunicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CommunicationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CommunicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CommunicationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CommunicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CommunicationRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CommunicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CommunicationRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CommunicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CommunicationRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CommunicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CommunicationRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CommunicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CommunicationRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CommunicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CompartmentDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CompartmentDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CompartmentDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CompartmentDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CompartmentDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CompartmentDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CompartmentDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CompartmentDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CompartmentDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CompartmentDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CompositionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CompositionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CompositionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CompositionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CompositionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CompositionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CompositionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CompositionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CompositionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CompositionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ConceptMapResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ConceptMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ConceptMapResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ConceptMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ConceptMapResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ConceptMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ConceptMapResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ConceptMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ConceptMapResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ConceptMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ConditionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ConditionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ConditionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ConditionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ConditionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ConditionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ConditionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ConditionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ConditionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ConditionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ConsentResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ConsentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ConsentResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ConsentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ConsentResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ConsentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ConsentResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ConsentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ConsentResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ConsentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ContractResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ContractResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ContractResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ContractResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ContractResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ContractResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ContractResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ContractResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ContractResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ContractResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[CoverageResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[CoverageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[CoverageResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[CoverageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[CoverageResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[CoverageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[CoverageResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[CoverageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[CoverageResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[CoverageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DataElementResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DataElementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DataElementResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DataElementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DataElementResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DataElementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DataElementResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DataElementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DataElementResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DataElementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DetectedIssueResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DetectedIssueResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DetectedIssueResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DetectedIssueResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DetectedIssueResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DetectedIssueResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DetectedIssueResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DetectedIssueResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DetectedIssueResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DetectedIssueResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DeviceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DeviceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DeviceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DeviceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DeviceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DeviceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DeviceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DeviceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DeviceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DeviceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DeviceComponentResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DeviceComponentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DeviceComponentResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DeviceComponentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DeviceComponentResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DeviceComponentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DeviceComponentResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DeviceComponentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DeviceComponentResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DeviceComponentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DeviceMetricResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DeviceMetricResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DeviceMetricResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DeviceMetricResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DeviceMetricResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DeviceMetricResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DeviceMetricResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DeviceMetricResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DeviceMetricResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DeviceMetricResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DeviceRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DeviceRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DeviceRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DeviceRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DeviceRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DeviceRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DeviceRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DeviceRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DeviceRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DeviceRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DeviceUseStatementResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DeviceUseStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DeviceUseStatementResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DeviceUseStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DeviceUseStatementResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DeviceUseStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DeviceUseStatementResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DeviceUseStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DeviceUseStatementResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DeviceUseStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DiagnosticReportResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DiagnosticReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DiagnosticReportResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DiagnosticReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DiagnosticReportResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DiagnosticReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DiagnosticReportResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DiagnosticReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DiagnosticReportResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DiagnosticReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DocumentManifestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DocumentManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DocumentManifestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DocumentManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DocumentManifestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DocumentManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DocumentManifestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DocumentManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DocumentManifestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DocumentManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[DocumentReferenceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[DocumentReferenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[DocumentReferenceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[DocumentReferenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[DocumentReferenceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[DocumentReferenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[DocumentReferenceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[DocumentReferenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[DocumentReferenceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[DocumentReferenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EligibilityRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EligibilityRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EligibilityRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EligibilityRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EligibilityRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EligibilityRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EligibilityRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EligibilityRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EligibilityRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EligibilityRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EligibilityResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EligibilityResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EligibilityResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EligibilityResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EligibilityResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EligibilityResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EligibilityResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EligibilityResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EligibilityResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EligibilityResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EncounterResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EncounterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EncounterResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EncounterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EncounterResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EncounterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EncounterResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EncounterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EncounterResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EncounterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EndpointResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EndpointResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EndpointResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EndpointResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EndpointResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EndpointResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EndpointResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EndpointResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EndpointResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EndpointResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EnrollmentRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EnrollmentRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EnrollmentRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EnrollmentRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EnrollmentRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EnrollmentRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EnrollmentRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EnrollmentRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EnrollmentRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EnrollmentRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EnrollmentResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EnrollmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EnrollmentResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EnrollmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EnrollmentResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EnrollmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EnrollmentResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EnrollmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EnrollmentResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EnrollmentResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[EpisodeOfCareResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[EpisodeOfCareResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[EpisodeOfCareResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[EpisodeOfCareResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[EpisodeOfCareResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[EpisodeOfCareResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[EpisodeOfCareResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[EpisodeOfCareResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[EpisodeOfCareResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[EpisodeOfCareResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ExpansionProfileResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ExpansionProfileResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ExpansionProfileResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ExpansionProfileResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ExpansionProfileResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ExpansionProfileResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ExpansionProfileResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ExpansionProfileResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ExpansionProfileResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ExpansionProfileResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ExplanationOfBenefitResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ExplanationOfBenefitResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ExplanationOfBenefitResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ExplanationOfBenefitResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ExplanationOfBenefitResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ExplanationOfBenefitResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ExplanationOfBenefitResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ExplanationOfBenefitResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ExplanationOfBenefitResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ExplanationOfBenefitResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[FamilyMemberHistoryResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[FamilyMemberHistoryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[FamilyMemberHistoryResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[FamilyMemberHistoryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[FamilyMemberHistoryResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[FamilyMemberHistoryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[FamilyMemberHistoryResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[FamilyMemberHistoryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[FamilyMemberHistoryResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[FamilyMemberHistoryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[FlagResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[FlagResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[FlagResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[FlagResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[FlagResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[FlagResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[FlagResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[FlagResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[FlagResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[FlagResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[GoalResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[GoalResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[GoalResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[GoalResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[GoalResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[GoalResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[GoalResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[GoalResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[GoalResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[GoalResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[GraphDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[GraphDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[GraphDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[GraphDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[GraphDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[GraphDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[GraphDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[GraphDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[GraphDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[GraphDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[GroupResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[GroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[GroupResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[GroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[GroupResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[GroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[GroupResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[GroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[GroupResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[GroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[GuidanceResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[GuidanceResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[GuidanceResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[GuidanceResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[GuidanceResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[GuidanceResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[GuidanceResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[GuidanceResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[GuidanceResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[GuidanceResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[HealthcareServiceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[HealthcareServiceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[HealthcareServiceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[HealthcareServiceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[HealthcareServiceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[HealthcareServiceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[HealthcareServiceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[HealthcareServiceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[HealthcareServiceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[HealthcareServiceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ImagingManifestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ImagingManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ImagingManifestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ImagingManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ImagingManifestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ImagingManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ImagingManifestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ImagingManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ImagingManifestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ImagingManifestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ImagingStudyResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ImagingStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ImagingStudyResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ImagingStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ImagingStudyResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ImagingStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ImagingStudyResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ImagingStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ImagingStudyResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ImagingStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ImmunizationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ImmunizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ImmunizationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ImmunizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ImmunizationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ImmunizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ImmunizationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ImmunizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ImmunizationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ImmunizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ImmunizationRecommendationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ImmunizationRecommendationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ImmunizationRecommendationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ImmunizationRecommendationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ImmunizationRecommendationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ImmunizationRecommendationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ImmunizationRecommendationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ImmunizationRecommendationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ImmunizationRecommendationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ImmunizationRecommendationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ImplementationGuideResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ImplementationGuideResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ImplementationGuideResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ImplementationGuideResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ImplementationGuideResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ImplementationGuideResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ImplementationGuideResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ImplementationGuideResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ImplementationGuideResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ImplementationGuideResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[LibraryResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[LibraryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[LibraryResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[LibraryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[LibraryResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[LibraryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[LibraryResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[LibraryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[LibraryResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[LibraryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[LinkageResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[LinkageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[LinkageResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[LinkageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[LinkageResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[LinkageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[LinkageResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[LinkageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[LinkageResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[LinkageResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ListResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ListResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ListResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ListResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ListResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ListResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ListResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ListResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ListResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ListResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[LocationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[LocationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[LocationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[LocationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[LocationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[LocationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[LocationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[LocationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[LocationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[LocationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MeasureResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MeasureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MeasureResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MeasureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MeasureResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MeasureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MeasureResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MeasureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MeasureResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MeasureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MeasureReportResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MeasureReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MeasureReportResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MeasureReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MeasureReportResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MeasureReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MeasureReportResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MeasureReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MeasureReportResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MeasureReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MediaResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MediaResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MediaResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MediaResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MediaResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MediaResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MediaResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MediaResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MediaResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MediaResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MedicationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MedicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MedicationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MedicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MedicationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MedicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MedicationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MedicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MedicationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MedicationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MedicationAdministrationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MedicationAdministrationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MedicationAdministrationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MedicationAdministrationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MedicationAdministrationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MedicationAdministrationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MedicationAdministrationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MedicationAdministrationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MedicationAdministrationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MedicationAdministrationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MedicationDispenseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MedicationDispenseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MedicationDispenseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MedicationDispenseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MedicationDispenseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MedicationDispenseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MedicationDispenseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MedicationDispenseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MedicationDispenseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MedicationDispenseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MedicationRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MedicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MedicationRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MedicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MedicationRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MedicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MedicationRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MedicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MedicationRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MedicationRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MedicationStatementResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MedicationStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MedicationStatementResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MedicationStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MedicationStatementResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MedicationStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MedicationStatementResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MedicationStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MedicationStatementResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MedicationStatementResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MessageDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MessageDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MessageDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MessageDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MessageDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MessageDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MessageDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MessageDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MessageDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MessageDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[MessageHeaderResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[MessageHeaderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[MessageHeaderResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[MessageHeaderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[MessageHeaderResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[MessageHeaderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[MessageHeaderResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[MessageHeaderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[MessageHeaderResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[MessageHeaderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[NamingSystemResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[NamingSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[NamingSystemResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[NamingSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[NamingSystemResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[NamingSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[NamingSystemResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[NamingSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[NamingSystemResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[NamingSystemResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[NutritionOrderResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[NutritionOrderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[NutritionOrderResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[NutritionOrderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[NutritionOrderResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[NutritionOrderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[NutritionOrderResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[NutritionOrderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[NutritionOrderResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[NutritionOrderResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ObservationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ObservationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ObservationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ObservationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ObservationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ObservationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ObservationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ObservationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ObservationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ObservationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[OperationDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[OperationDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[OperationDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[OperationDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[OperationDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[OperationDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[OperationDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[OperationDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[OperationDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[OperationDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[OperationOutcomeResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[OperationOutcomeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[OperationOutcomeResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[OperationOutcomeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[OperationOutcomeResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[OperationOutcomeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[OperationOutcomeResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[OperationOutcomeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[OperationOutcomeResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[OperationOutcomeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[OrganizationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[OrganizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[OrganizationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[OrganizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[OrganizationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[OrganizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[OrganizationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[OrganizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[OrganizationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[OrganizationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ParametersResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ParametersResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ParametersResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ParametersResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ParametersResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ParametersResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ParametersResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ParametersResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ParametersResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ParametersResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PatientResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PatientResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PatientResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PatientResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PatientResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PatientResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PatientResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PatientResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PatientResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PatientResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PaymentNoticeResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PaymentNoticeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PaymentNoticeResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PaymentNoticeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PaymentNoticeResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PaymentNoticeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PaymentNoticeResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PaymentNoticeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PaymentNoticeResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PaymentNoticeResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PaymentReconciliationResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PaymentReconciliationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PaymentReconciliationResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PaymentReconciliationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PaymentReconciliationResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PaymentReconciliationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PaymentReconciliationResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PaymentReconciliationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PaymentReconciliationResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PaymentReconciliationResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PersonResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PersonResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PersonResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PersonResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PersonResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PlanDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PlanDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PlanDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PlanDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PlanDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PlanDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PlanDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PlanDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PlanDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PlanDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PractitionerResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PractitionerResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PractitionerResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PractitionerResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PractitionerResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PractitionerResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PractitionerResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PractitionerResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PractitionerResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PractitionerResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[PractitionerRoleResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[PractitionerRoleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[PractitionerRoleResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[PractitionerRoleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[PractitionerRoleResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[PractitionerRoleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[PractitionerRoleResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[PractitionerRoleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[PractitionerRoleResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[PractitionerRoleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ProcedureResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ProcedureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ProcedureResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ProcedureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ProcedureResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ProcedureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ProcedureResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ProcedureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ProcedureResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ProcedureResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ProcedureRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ProcedureRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ProcedureRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ProcedureRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ProcedureRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ProcedureRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ProcedureRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ProcedureRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ProcedureRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ProcedureRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ProcessRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ProcessRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ProcessRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ProcessRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ProcessRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ProcessRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ProcessRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ProcessRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ProcessRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ProcessRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ProcessResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ProcessResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ProcessResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ProcessResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ProcessResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ProcessResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ProcessResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ProcessResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ProcessResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ProcessResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ProvenanceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ProvenanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ProvenanceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ProvenanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ProvenanceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ProvenanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ProvenanceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ProvenanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ProvenanceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ProvenanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[QuestionnaireResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[QuestionnaireResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[QuestionnaireResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[QuestionnaireResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[QuestionnaireResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[QuestionnaireResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[QuestionnaireResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[QuestionnaireResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[QuestionnaireResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[QuestionnaireResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[QuestionnaireResponseResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[QuestionnaireResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[QuestionnaireResponseResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[QuestionnaireResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[QuestionnaireResponseResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[QuestionnaireResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[QuestionnaireResponseResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[QuestionnaireResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[QuestionnaireResponseResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[QuestionnaireResponseResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ReferralRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ReferralRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ReferralRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ReferralRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ReferralRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ReferralRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ReferralRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ReferralRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ReferralRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ReferralRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[RelatedPersonResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[RelatedPersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[RelatedPersonResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[RelatedPersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[RelatedPersonResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[RelatedPersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[RelatedPersonResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[RelatedPersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[RelatedPersonResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[RelatedPersonResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[RequestGroupResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[RequestGroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[RequestGroupResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[RequestGroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[RequestGroupResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[RequestGroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[RequestGroupResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[RequestGroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[RequestGroupResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[RequestGroupResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ResearchStudyResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ResearchStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ResearchStudyResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ResearchStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ResearchStudyResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ResearchStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ResearchStudyResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ResearchStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ResearchStudyResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ResearchStudyResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ResearchSubjectResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ResearchSubjectResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ResearchSubjectResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ResearchSubjectResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ResearchSubjectResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ResearchSubjectResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ResearchSubjectResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ResearchSubjectResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ResearchSubjectResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ResearchSubjectResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[RiskAssessmentResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[RiskAssessmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[RiskAssessmentResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[RiskAssessmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[RiskAssessmentResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[RiskAssessmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[RiskAssessmentResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[RiskAssessmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[RiskAssessmentResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[RiskAssessmentResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ScheduleResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ScheduleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ScheduleResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ScheduleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ScheduleResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ScheduleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ScheduleResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ScheduleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ScheduleResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ScheduleResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SearchParameterResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SearchParameterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SearchParameterResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SearchParameterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SearchParameterResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SearchParameterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SearchParameterResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SearchParameterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SearchParameterResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SearchParameterResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SequenceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SequenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SequenceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SequenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SequenceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SequenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SequenceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SequenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SequenceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SequenceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ServiceDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ServiceDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ServiceDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ServiceDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ServiceDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ServiceDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ServiceDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ServiceDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ServiceDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ServiceDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SlotResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SlotResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SlotResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SlotResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SlotResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SlotResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SlotResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SlotResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SlotResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SlotResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SpecimenResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SpecimenResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SpecimenResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SpecimenResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SpecimenResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SpecimenResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SpecimenResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SpecimenResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SpecimenResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SpecimenResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[StructureDefinitionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[StructureDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[StructureDefinitionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[StructureDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[StructureDefinitionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[StructureDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[StructureDefinitionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[StructureDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[StructureDefinitionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[StructureDefinitionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[StructureMapResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[StructureMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[StructureMapResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[StructureMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[StructureMapResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[StructureMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[StructureMapResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[StructureMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[StructureMapResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[StructureMapResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SubscriptionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SubscriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SubscriptionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SubscriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SubscriptionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SubscriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SubscriptionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SubscriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SubscriptionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SubscriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SubstanceResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SubstanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SubstanceResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SubstanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SubstanceResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SubstanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SubstanceResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SubstanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SubstanceResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SubstanceResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SupplyDeliveryResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SupplyDeliveryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SupplyDeliveryResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SupplyDeliveryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SupplyDeliveryResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SupplyDeliveryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SupplyDeliveryResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SupplyDeliveryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SupplyDeliveryResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SupplyDeliveryResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[SupplyRequestResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[SupplyRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[SupplyRequestResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[SupplyRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[SupplyRequestResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[SupplyRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[SupplyRequestResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[SupplyRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[SupplyRequestResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[SupplyRequestResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[TaskResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[TaskResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[TaskResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[TaskResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[TaskResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[TaskResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[TaskResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[TaskResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[TaskResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[TaskResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[TestReportResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[TestReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[TestReportResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[TestReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[TestReportResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[TestReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[TestReportResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[TestReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[TestReportResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[TestReportResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[TestScriptResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[TestScriptResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[TestScriptResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[TestScriptResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[TestScriptResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[TestScriptResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[TestScriptResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[TestScriptResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[TestScriptResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[TestScriptResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[ValueSetResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[ValueSetResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[ValueSetResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[ValueSetResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[ValueSetResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[ValueSetResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[ValueSetResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[ValueSetResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[ValueSetResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[ValueSetResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
INSERT INTO [dbo].[VisionPrescriptionResIndexDateTime] ([ServiceSearchParameterId], [DateTimeOffsetLow], [DateTimeOffsetHigh], [ResourceId]) SELECT [ServiceSearchParameterId] ,[DateTimeOffsetLow] ,[DateTimeOffsetHigh], [ResourceId] FROM [dbo].[VisionPrescriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 1
INSERT INTO [dbo].[VisionPrescriptionResIndexQuantity] ([ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId]) SELECT [ServiceSearchParameterId], [Comparator], [Quantity], [Code], [System], [Unit], [ComparatorHigh], [QuantityHigh], [CodeHigh], [SystemHigh], [UnitHigh], [ResourceId] FROM [dbo].[VisionPrescriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 6 or s.Type = 0
INSERT INTO [dbo].[VisionPrescriptionResIndexReference] ([ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId]) SELECT [ServiceSearchParameterId], [ReferenceFhirId], [ReferenceResourceType], [ReferenceServiceBaseUrlId], [ReferenceVersionId], [ResourceId] FROM [dbo].[VisionPrescriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 4
INSERT INTO [dbo].[VisionPrescriptionResIndexToken] ([ServiceSearchParameterId], [Code], [System], [ResourceId]) SELECT [ServiceSearchParameterId], [Code], [System], [ResourceId] FROM [dbo].[VisionPrescriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 3 
INSERT INTO [dbo].[VisionPrescriptionResIndexUri] ([ServiceSearchParameterId], [Uri], [ResourceId]) SELECT [ServiceSearchParameterId], [Uri], [ResourceId] FROM [dbo].[VisionPrescriptionResIndex] i JOIN [dbo].[ServiceSearchParameter] s ON i.ServiceSearchParameterId = s.Id WHERE s.Type = 7
ALTER TABLE [dbo].[AccountResIndexDateTime] ADD CONSTRAINT [FK_dbo.AccountResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexDateTime] ADD CONSTRAINT [FK_dbo.AccountResIndexDateTime_dbo.AccountRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AccountRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexQuantity] ADD CONSTRAINT [FK_dbo.AccountResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexQuantity] ADD CONSTRAINT [FK_dbo.AccountResIndexQuantity_dbo.AccountRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AccountRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexReference] ADD CONSTRAINT [FK_dbo.AccountResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AccountResIndexReference] ADD CONSTRAINT [FK_dbo.AccountResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexReference] ADD CONSTRAINT [FK_dbo.AccountResIndexReference_dbo.AccountRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AccountRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexToken] ADD CONSTRAINT [FK_dbo.AccountResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexToken] ADD CONSTRAINT [FK_dbo.AccountResIndexToken_dbo.AccountRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AccountRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexUri] ADD CONSTRAINT [FK_dbo.AccountResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AccountResIndexUri] ADD CONSTRAINT [FK_dbo.AccountResIndexUri_dbo.AccountRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AccountRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexDateTime_dbo.ActivityDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ActivityDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexQuantity_dbo.ActivityDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ActivityDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ActivityDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexReference_dbo.ActivityDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ActivityDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexToken_dbo.ActivityDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ActivityDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ActivityDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.ActivityDefinitionResIndexUri_dbo.ActivityDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ActivityDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexDateTime] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexDateTime] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexDateTime_dbo.AdverseEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AdverseEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexQuantity] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexQuantity] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexQuantity_dbo.AdverseEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AdverseEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexReference] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AdverseEventResIndexReference] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexReference] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexReference_dbo.AdverseEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AdverseEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexToken] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexToken] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexToken_dbo.AdverseEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AdverseEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexUri] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AdverseEventResIndexUri] ADD CONSTRAINT [FK_dbo.AdverseEventResIndexUri_dbo.AdverseEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AdverseEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexDateTime] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexDateTime] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexDateTime_dbo.AllergyIntoleranceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AllergyIntoleranceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexQuantity] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexQuantity] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexQuantity_dbo.AllergyIntoleranceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AllergyIntoleranceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexReference] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AllergyIntoleranceResIndexReference] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexReference] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexReference_dbo.AllergyIntoleranceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AllergyIntoleranceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexToken] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexToken] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexToken_dbo.AllergyIntoleranceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AllergyIntoleranceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexUri] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AllergyIntoleranceResIndexUri] ADD CONSTRAINT [FK_dbo.AllergyIntoleranceResIndexUri_dbo.AllergyIntoleranceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AllergyIntoleranceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexDateTime] ADD CONSTRAINT [FK_dbo.AppointmentResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexDateTime] ADD CONSTRAINT [FK_dbo.AppointmentResIndexDateTime_dbo.AppointmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexQuantity] ADD CONSTRAINT [FK_dbo.AppointmentResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexQuantity] ADD CONSTRAINT [FK_dbo.AppointmentResIndexQuantity_dbo.AppointmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AppointmentResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResIndexReference_dbo.AppointmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexToken] ADD CONSTRAINT [FK_dbo.AppointmentResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexToken] ADD CONSTRAINT [FK_dbo.AppointmentResIndexToken_dbo.AppointmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexUri] ADD CONSTRAINT [FK_dbo.AppointmentResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResIndexUri] ADD CONSTRAINT [FK_dbo.AppointmentResIndexUri_dbo.AppointmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexDateTime_dbo.AppointmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexQuantity_dbo.AppointmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AppointmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexReference_dbo.AppointmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexToken] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexToken] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexToken_dbo.AppointmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexUri] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AppointmentResponseResIndexUri] ADD CONSTRAINT [FK_dbo.AppointmentResponseResIndexUri_dbo.AppointmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AppointmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexDateTime] ADD CONSTRAINT [FK_dbo.AuditEventResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexDateTime] ADD CONSTRAINT [FK_dbo.AuditEventResIndexDateTime_dbo.AuditEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AuditEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexQuantity] ADD CONSTRAINT [FK_dbo.AuditEventResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexQuantity] ADD CONSTRAINT [FK_dbo.AuditEventResIndexQuantity_dbo.AuditEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AuditEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexReference] ADD CONSTRAINT [FK_dbo.AuditEventResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[AuditEventResIndexReference] ADD CONSTRAINT [FK_dbo.AuditEventResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexReference] ADD CONSTRAINT [FK_dbo.AuditEventResIndexReference_dbo.AuditEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AuditEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexToken] ADD CONSTRAINT [FK_dbo.AuditEventResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexToken] ADD CONSTRAINT [FK_dbo.AuditEventResIndexToken_dbo.AuditEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AuditEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexUri] ADD CONSTRAINT [FK_dbo.AuditEventResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditEventResIndexUri] ADD CONSTRAINT [FK_dbo.AuditEventResIndexUri_dbo.AuditEventRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[AuditEventRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexDateTime] ADD CONSTRAINT [FK_dbo.BasicResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexDateTime] ADD CONSTRAINT [FK_dbo.BasicResIndexDateTime_dbo.BasicRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BasicRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexQuantity] ADD CONSTRAINT [FK_dbo.BasicResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexQuantity] ADD CONSTRAINT [FK_dbo.BasicResIndexQuantity_dbo.BasicRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BasicRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexReference] ADD CONSTRAINT [FK_dbo.BasicResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[BasicResIndexReference] ADD CONSTRAINT [FK_dbo.BasicResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexReference] ADD CONSTRAINT [FK_dbo.BasicResIndexReference_dbo.BasicRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BasicRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexToken] ADD CONSTRAINT [FK_dbo.BasicResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexToken] ADD CONSTRAINT [FK_dbo.BasicResIndexToken_dbo.BasicRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BasicRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexUri] ADD CONSTRAINT [FK_dbo.BasicResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BasicResIndexUri] ADD CONSTRAINT [FK_dbo.BasicResIndexUri_dbo.BasicRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BasicRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexDateTime] ADD CONSTRAINT [FK_dbo.BinaryResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexDateTime] ADD CONSTRAINT [FK_dbo.BinaryResIndexDateTime_dbo.BinaryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BinaryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexQuantity] ADD CONSTRAINT [FK_dbo.BinaryResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexQuantity] ADD CONSTRAINT [FK_dbo.BinaryResIndexQuantity_dbo.BinaryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BinaryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexReference] ADD CONSTRAINT [FK_dbo.BinaryResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[BinaryResIndexReference] ADD CONSTRAINT [FK_dbo.BinaryResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexReference] ADD CONSTRAINT [FK_dbo.BinaryResIndexReference_dbo.BinaryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BinaryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexToken] ADD CONSTRAINT [FK_dbo.BinaryResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexToken] ADD CONSTRAINT [FK_dbo.BinaryResIndexToken_dbo.BinaryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BinaryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexUri] ADD CONSTRAINT [FK_dbo.BinaryResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BinaryResIndexUri] ADD CONSTRAINT [FK_dbo.BinaryResIndexUri_dbo.BinaryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BinaryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexDateTime] ADD CONSTRAINT [FK_dbo.BodySiteResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexDateTime] ADD CONSTRAINT [FK_dbo.BodySiteResIndexDateTime_dbo.BodySiteRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BodySiteRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexQuantity] ADD CONSTRAINT [FK_dbo.BodySiteResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexQuantity] ADD CONSTRAINT [FK_dbo.BodySiteResIndexQuantity_dbo.BodySiteRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BodySiteRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexReference] ADD CONSTRAINT [FK_dbo.BodySiteResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[BodySiteResIndexReference] ADD CONSTRAINT [FK_dbo.BodySiteResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexReference] ADD CONSTRAINT [FK_dbo.BodySiteResIndexReference_dbo.BodySiteRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BodySiteRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexToken] ADD CONSTRAINT [FK_dbo.BodySiteResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexToken] ADD CONSTRAINT [FK_dbo.BodySiteResIndexToken_dbo.BodySiteRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BodySiteRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexUri] ADD CONSTRAINT [FK_dbo.BodySiteResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BodySiteResIndexUri] ADD CONSTRAINT [FK_dbo.BodySiteResIndexUri_dbo.BodySiteRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BodySiteRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexDateTime] ADD CONSTRAINT [FK_dbo.BundleResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexDateTime] ADD CONSTRAINT [FK_dbo.BundleResIndexDateTime_dbo.BundleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BundleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexQuantity] ADD CONSTRAINT [FK_dbo.BundleResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexQuantity] ADD CONSTRAINT [FK_dbo.BundleResIndexQuantity_dbo.BundleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BundleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexReference] ADD CONSTRAINT [FK_dbo.BundleResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[BundleResIndexReference] ADD CONSTRAINT [FK_dbo.BundleResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexReference] ADD CONSTRAINT [FK_dbo.BundleResIndexReference_dbo.BundleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BundleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexToken] ADD CONSTRAINT [FK_dbo.BundleResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexToken] ADD CONSTRAINT [FK_dbo.BundleResIndexToken_dbo.BundleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BundleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexUri] ADD CONSTRAINT [FK_dbo.BundleResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[BundleResIndexUri] ADD CONSTRAINT [FK_dbo.BundleResIndexUri_dbo.BundleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[BundleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexDateTime_dbo.CapabilityStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CapabilityStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexQuantity_dbo.CapabilityStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CapabilityStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexReference] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CapabilityStatementResIndexReference] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexReference] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexReference_dbo.CapabilityStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CapabilityStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexToken] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexToken] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexToken_dbo.CapabilityStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CapabilityStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexUri] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CapabilityStatementResIndexUri] ADD CONSTRAINT [FK_dbo.CapabilityStatementResIndexUri_dbo.CapabilityStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CapabilityStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexDateTime] ADD CONSTRAINT [FK_dbo.CarePlanResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexDateTime] ADD CONSTRAINT [FK_dbo.CarePlanResIndexDateTime_dbo.CarePlanRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CarePlanRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexQuantity] ADD CONSTRAINT [FK_dbo.CarePlanResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexQuantity] ADD CONSTRAINT [FK_dbo.CarePlanResIndexQuantity_dbo.CarePlanRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CarePlanRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexReference] ADD CONSTRAINT [FK_dbo.CarePlanResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CarePlanResIndexReference] ADD CONSTRAINT [FK_dbo.CarePlanResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexReference] ADD CONSTRAINT [FK_dbo.CarePlanResIndexReference_dbo.CarePlanRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CarePlanRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexToken] ADD CONSTRAINT [FK_dbo.CarePlanResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexToken] ADD CONSTRAINT [FK_dbo.CarePlanResIndexToken_dbo.CarePlanRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CarePlanRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexUri] ADD CONSTRAINT [FK_dbo.CarePlanResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CarePlanResIndexUri] ADD CONSTRAINT [FK_dbo.CarePlanResIndexUri_dbo.CarePlanRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CarePlanRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexDateTime] ADD CONSTRAINT [FK_dbo.CareTeamResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexDateTime] ADD CONSTRAINT [FK_dbo.CareTeamResIndexDateTime_dbo.CareTeamRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CareTeamRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexQuantity] ADD CONSTRAINT [FK_dbo.CareTeamResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexQuantity] ADD CONSTRAINT [FK_dbo.CareTeamResIndexQuantity_dbo.CareTeamRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CareTeamRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexReference] ADD CONSTRAINT [FK_dbo.CareTeamResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CareTeamResIndexReference] ADD CONSTRAINT [FK_dbo.CareTeamResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexReference] ADD CONSTRAINT [FK_dbo.CareTeamResIndexReference_dbo.CareTeamRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CareTeamRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexToken] ADD CONSTRAINT [FK_dbo.CareTeamResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexToken] ADD CONSTRAINT [FK_dbo.CareTeamResIndexToken_dbo.CareTeamRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CareTeamRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexUri] ADD CONSTRAINT [FK_dbo.CareTeamResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CareTeamResIndexUri] ADD CONSTRAINT [FK_dbo.CareTeamResIndexUri_dbo.CareTeamRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CareTeamRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexDateTime] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexDateTime] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexDateTime_dbo.ChargeItemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ChargeItemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexQuantity] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexQuantity] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexQuantity_dbo.ChargeItemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ChargeItemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexReference] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ChargeItemResIndexReference] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexReference] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexReference_dbo.ChargeItemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ChargeItemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexToken] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexToken] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexToken_dbo.ChargeItemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ChargeItemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexUri] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ChargeItemResIndexUri] ADD CONSTRAINT [FK_dbo.ChargeItemResIndexUri_dbo.ChargeItemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ChargeItemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClaimResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClaimResIndexDateTime_dbo.ClaimRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClaimResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClaimResIndexQuantity_dbo.ClaimRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ClaimResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResIndexReference_dbo.ClaimRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexToken] ADD CONSTRAINT [FK_dbo.ClaimResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexToken] ADD CONSTRAINT [FK_dbo.ClaimResIndexToken_dbo.ClaimRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexUri] ADD CONSTRAINT [FK_dbo.ClaimResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResIndexUri] ADD CONSTRAINT [FK_dbo.ClaimResIndexUri_dbo.ClaimRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexDateTime_dbo.ClaimResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexQuantity_dbo.ClaimResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ClaimResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexReference_dbo.ClaimResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexToken] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexToken] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexToken_dbo.ClaimResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexUri] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClaimResponseResIndexUri] ADD CONSTRAINT [FK_dbo.ClaimResponseResIndexUri_dbo.ClaimResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClaimResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexDateTime_dbo.ClinicalImpressionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClinicalImpressionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexQuantity_dbo.ClinicalImpressionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClinicalImpressionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexReference] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ClinicalImpressionResIndexReference] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexReference] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexReference_dbo.ClinicalImpressionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClinicalImpressionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexToken] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexToken] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexToken_dbo.ClinicalImpressionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClinicalImpressionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexUri] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ClinicalImpressionResIndexUri] ADD CONSTRAINT [FK_dbo.ClinicalImpressionResIndexUri_dbo.ClinicalImpressionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ClinicalImpressionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexDateTime] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexDateTime] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexDateTime_dbo.CodeSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CodeSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexQuantity] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexQuantity] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexQuantity_dbo.CodeSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CodeSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexReference] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CodeSystemResIndexReference] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexReference] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexReference_dbo.CodeSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CodeSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexToken] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexToken] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexToken_dbo.CodeSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CodeSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexUri] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CodeSystemResIndexUri] ADD CONSTRAINT [FK_dbo.CodeSystemResIndexUri_dbo.CodeSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CodeSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexDateTime] ADD CONSTRAINT [FK_dbo.CommunicationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexDateTime] ADD CONSTRAINT [FK_dbo.CommunicationResIndexDateTime_dbo.CommunicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexQuantity] ADD CONSTRAINT [FK_dbo.CommunicationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexQuantity] ADD CONSTRAINT [FK_dbo.CommunicationResIndexQuantity_dbo.CommunicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CommunicationResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationResIndexReference_dbo.CommunicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexToken] ADD CONSTRAINT [FK_dbo.CommunicationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexToken] ADD CONSTRAINT [FK_dbo.CommunicationResIndexToken_dbo.CommunicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexUri] ADD CONSTRAINT [FK_dbo.CommunicationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationResIndexUri] ADD CONSTRAINT [FK_dbo.CommunicationResIndexUri_dbo.CommunicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexDateTime_dbo.CommunicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexQuantity_dbo.CommunicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CommunicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexReference_dbo.CommunicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexToken] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexToken] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexToken_dbo.CommunicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexUri] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CommunicationRequestResIndexUri] ADD CONSTRAINT [FK_dbo.CommunicationRequestResIndexUri_dbo.CommunicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CommunicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexDateTime_dbo.CompartmentDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompartmentDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexQuantity_dbo.CompartmentDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompartmentDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CompartmentDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexReference_dbo.CompartmentDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompartmentDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexToken_dbo.CompartmentDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompartmentDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompartmentDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.CompartmentDefinitionResIndexUri_dbo.CompartmentDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompartmentDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexDateTime] ADD CONSTRAINT [FK_dbo.CompositionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexDateTime] ADD CONSTRAINT [FK_dbo.CompositionResIndexDateTime_dbo.CompositionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompositionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexQuantity] ADD CONSTRAINT [FK_dbo.CompositionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexQuantity] ADD CONSTRAINT [FK_dbo.CompositionResIndexQuantity_dbo.CompositionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompositionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexReference] ADD CONSTRAINT [FK_dbo.CompositionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CompositionResIndexReference] ADD CONSTRAINT [FK_dbo.CompositionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexReference] ADD CONSTRAINT [FK_dbo.CompositionResIndexReference_dbo.CompositionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompositionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexToken] ADD CONSTRAINT [FK_dbo.CompositionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexToken] ADD CONSTRAINT [FK_dbo.CompositionResIndexToken_dbo.CompositionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompositionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexUri] ADD CONSTRAINT [FK_dbo.CompositionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CompositionResIndexUri] ADD CONSTRAINT [FK_dbo.CompositionResIndexUri_dbo.CompositionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CompositionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexDateTime_dbo.ConceptMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConceptMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexQuantity_dbo.ConceptMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConceptMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexReference] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ConceptMapResIndexReference] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexReference] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexReference_dbo.ConceptMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConceptMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexToken] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexToken] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexToken_dbo.ConceptMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConceptMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexUri] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConceptMapResIndexUri] ADD CONSTRAINT [FK_dbo.ConceptMapResIndexUri_dbo.ConceptMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConceptMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConditionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConditionResIndexDateTime_dbo.ConditionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConditionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConditionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConditionResIndexQuantity_dbo.ConditionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConditionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexReference] ADD CONSTRAINT [FK_dbo.ConditionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ConditionResIndexReference] ADD CONSTRAINT [FK_dbo.ConditionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexReference] ADD CONSTRAINT [FK_dbo.ConditionResIndexReference_dbo.ConditionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConditionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexToken] ADD CONSTRAINT [FK_dbo.ConditionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexToken] ADD CONSTRAINT [FK_dbo.ConditionResIndexToken_dbo.ConditionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConditionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexUri] ADD CONSTRAINT [FK_dbo.ConditionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConditionResIndexUri] ADD CONSTRAINT [FK_dbo.ConditionResIndexUri_dbo.ConditionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConditionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConsentResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexDateTime] ADD CONSTRAINT [FK_dbo.ConsentResIndexDateTime_dbo.ConsentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConsentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConsentResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexQuantity] ADD CONSTRAINT [FK_dbo.ConsentResIndexQuantity_dbo.ConsentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConsentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexReference] ADD CONSTRAINT [FK_dbo.ConsentResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ConsentResIndexReference] ADD CONSTRAINT [FK_dbo.ConsentResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexReference] ADD CONSTRAINT [FK_dbo.ConsentResIndexReference_dbo.ConsentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConsentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexToken] ADD CONSTRAINT [FK_dbo.ConsentResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexToken] ADD CONSTRAINT [FK_dbo.ConsentResIndexToken_dbo.ConsentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConsentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexUri] ADD CONSTRAINT [FK_dbo.ConsentResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ConsentResIndexUri] ADD CONSTRAINT [FK_dbo.ConsentResIndexUri_dbo.ConsentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ConsentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexDateTime] ADD CONSTRAINT [FK_dbo.ContractResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexDateTime] ADD CONSTRAINT [FK_dbo.ContractResIndexDateTime_dbo.ContractRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ContractRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexQuantity] ADD CONSTRAINT [FK_dbo.ContractResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexQuantity] ADD CONSTRAINT [FK_dbo.ContractResIndexQuantity_dbo.ContractRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ContractRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexReference] ADD CONSTRAINT [FK_dbo.ContractResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ContractResIndexReference] ADD CONSTRAINT [FK_dbo.ContractResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexReference] ADD CONSTRAINT [FK_dbo.ContractResIndexReference_dbo.ContractRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ContractRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexToken] ADD CONSTRAINT [FK_dbo.ContractResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexToken] ADD CONSTRAINT [FK_dbo.ContractResIndexToken_dbo.ContractRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ContractRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexUri] ADD CONSTRAINT [FK_dbo.ContractResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ContractResIndexUri] ADD CONSTRAINT [FK_dbo.ContractResIndexUri_dbo.ContractRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ContractRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexDateTime] ADD CONSTRAINT [FK_dbo.CoverageResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexDateTime] ADD CONSTRAINT [FK_dbo.CoverageResIndexDateTime_dbo.CoverageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CoverageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexQuantity] ADD CONSTRAINT [FK_dbo.CoverageResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexQuantity] ADD CONSTRAINT [FK_dbo.CoverageResIndexQuantity_dbo.CoverageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CoverageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexReference] ADD CONSTRAINT [FK_dbo.CoverageResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[CoverageResIndexReference] ADD CONSTRAINT [FK_dbo.CoverageResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexReference] ADD CONSTRAINT [FK_dbo.CoverageResIndexReference_dbo.CoverageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CoverageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexToken] ADD CONSTRAINT [FK_dbo.CoverageResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexToken] ADD CONSTRAINT [FK_dbo.CoverageResIndexToken_dbo.CoverageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CoverageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexUri] ADD CONSTRAINT [FK_dbo.CoverageResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[CoverageResIndexUri] ADD CONSTRAINT [FK_dbo.CoverageResIndexUri_dbo.CoverageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[CoverageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexDateTime] ADD CONSTRAINT [FK_dbo.DataElementResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexDateTime] ADD CONSTRAINT [FK_dbo.DataElementResIndexDateTime_dbo.DataElementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DataElementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexQuantity] ADD CONSTRAINT [FK_dbo.DataElementResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexQuantity] ADD CONSTRAINT [FK_dbo.DataElementResIndexQuantity_dbo.DataElementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DataElementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexReference] ADD CONSTRAINT [FK_dbo.DataElementResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DataElementResIndexReference] ADD CONSTRAINT [FK_dbo.DataElementResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexReference] ADD CONSTRAINT [FK_dbo.DataElementResIndexReference_dbo.DataElementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DataElementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexToken] ADD CONSTRAINT [FK_dbo.DataElementResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexToken] ADD CONSTRAINT [FK_dbo.DataElementResIndexToken_dbo.DataElementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DataElementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexUri] ADD CONSTRAINT [FK_dbo.DataElementResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DataElementResIndexUri] ADD CONSTRAINT [FK_dbo.DataElementResIndexUri_dbo.DataElementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DataElementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexDateTime] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexDateTime] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexDateTime_dbo.DetectedIssueRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DetectedIssueRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexQuantity] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexQuantity] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexQuantity_dbo.DetectedIssueRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DetectedIssueRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexReference] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DetectedIssueResIndexReference] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexReference] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexReference_dbo.DetectedIssueRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DetectedIssueRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexToken] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexToken] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexToken_dbo.DetectedIssueRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DetectedIssueRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexUri] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DetectedIssueResIndexUri] ADD CONSTRAINT [FK_dbo.DetectedIssueResIndexUri_dbo.DetectedIssueRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DetectedIssueRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceResIndexDateTime_dbo.DeviceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceResIndexQuantity_dbo.DeviceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DeviceResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceResIndexReference_dbo.DeviceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceResIndexToken_dbo.DeviceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceResIndexUri_dbo.DeviceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexDateTime_dbo.DeviceComponentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceComponentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexQuantity_dbo.DeviceComponentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceComponentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DeviceComponentResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexReference_dbo.DeviceComponentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceComponentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexToken_dbo.DeviceComponentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceComponentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceComponentResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceComponentResIndexUri_dbo.DeviceComponentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceComponentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexDateTime_dbo.DeviceMetricRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceMetricRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexQuantity_dbo.DeviceMetricRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceMetricRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DeviceMetricResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexReference_dbo.DeviceMetricRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceMetricRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexToken_dbo.DeviceMetricRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceMetricRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceMetricResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceMetricResIndexUri_dbo.DeviceMetricRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceMetricRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexDateTime_dbo.DeviceRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexQuantity_dbo.DeviceRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DeviceRequestResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexReference_dbo.DeviceRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexToken_dbo.DeviceRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceRequestResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceRequestResIndexUri_dbo.DeviceRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexDateTime_dbo.DeviceUseStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceUseStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexQuantity_dbo.DeviceUseStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceUseStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DeviceUseStatementResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexReference] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexReference_dbo.DeviceUseStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceUseStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexToken] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexToken_dbo.DeviceUseStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceUseStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DeviceUseStatementResIndexUri] ADD CONSTRAINT [FK_dbo.DeviceUseStatementResIndexUri_dbo.DeviceUseStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DeviceUseStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexDateTime_dbo.DiagnosticReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DiagnosticReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexQuantity_dbo.DiagnosticReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DiagnosticReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexReference] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DiagnosticReportResIndexReference] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexReference] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexReference_dbo.DiagnosticReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DiagnosticReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexToken] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexToken] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexToken_dbo.DiagnosticReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DiagnosticReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexUri] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DiagnosticReportResIndexUri] ADD CONSTRAINT [FK_dbo.DiagnosticReportResIndexUri_dbo.DiagnosticReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DiagnosticReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexDateTime] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexDateTime] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexDateTime_dbo.DocumentManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexQuantity] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexQuantity] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexQuantity_dbo.DocumentManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DocumentManifestResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexReference_dbo.DocumentManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexToken] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexToken] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexToken_dbo.DocumentManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexUri] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentManifestResIndexUri] ADD CONSTRAINT [FK_dbo.DocumentManifestResIndexUri_dbo.DocumentManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexDateTime] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexDateTime] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexDateTime_dbo.DocumentReferenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentReferenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexQuantity] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexQuantity] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexQuantity_dbo.DocumentReferenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentReferenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[DocumentReferenceResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexReference] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexReference_dbo.DocumentReferenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentReferenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexToken] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexToken] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexToken_dbo.DocumentReferenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentReferenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexUri] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[DocumentReferenceResIndexUri] ADD CONSTRAINT [FK_dbo.DocumentReferenceResIndexUri_dbo.DocumentReferenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[DocumentReferenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexDateTime_dbo.EligibilityRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexQuantity_dbo.EligibilityRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EligibilityRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexReference_dbo.EligibilityRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexToken] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexToken] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexToken_dbo.EligibilityRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexUri] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityRequestResIndexUri] ADD CONSTRAINT [FK_dbo.EligibilityRequestResIndexUri_dbo.EligibilityRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexDateTime_dbo.EligibilityResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexQuantity_dbo.EligibilityResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EligibilityResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexReference_dbo.EligibilityResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexToken] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexToken] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexToken_dbo.EligibilityResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexUri] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EligibilityResponseResIndexUri] ADD CONSTRAINT [FK_dbo.EligibilityResponseResIndexUri_dbo.EligibilityResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EligibilityResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexDateTime] ADD CONSTRAINT [FK_dbo.EncounterResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexDateTime] ADD CONSTRAINT [FK_dbo.EncounterResIndexDateTime_dbo.EncounterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EncounterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexQuantity] ADD CONSTRAINT [FK_dbo.EncounterResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexQuantity] ADD CONSTRAINT [FK_dbo.EncounterResIndexQuantity_dbo.EncounterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EncounterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexReference] ADD CONSTRAINT [FK_dbo.EncounterResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EncounterResIndexReference] ADD CONSTRAINT [FK_dbo.EncounterResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexReference] ADD CONSTRAINT [FK_dbo.EncounterResIndexReference_dbo.EncounterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EncounterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexToken] ADD CONSTRAINT [FK_dbo.EncounterResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexToken] ADD CONSTRAINT [FK_dbo.EncounterResIndexToken_dbo.EncounterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EncounterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexUri] ADD CONSTRAINT [FK_dbo.EncounterResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EncounterResIndexUri] ADD CONSTRAINT [FK_dbo.EncounterResIndexUri_dbo.EncounterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EncounterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexDateTime] ADD CONSTRAINT [FK_dbo.EndpointResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexDateTime] ADD CONSTRAINT [FK_dbo.EndpointResIndexDateTime_dbo.EndpointRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EndpointRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexQuantity] ADD CONSTRAINT [FK_dbo.EndpointResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexQuantity] ADD CONSTRAINT [FK_dbo.EndpointResIndexQuantity_dbo.EndpointRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EndpointRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexReference] ADD CONSTRAINT [FK_dbo.EndpointResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EndpointResIndexReference] ADD CONSTRAINT [FK_dbo.EndpointResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexReference] ADD CONSTRAINT [FK_dbo.EndpointResIndexReference_dbo.EndpointRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EndpointRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexToken] ADD CONSTRAINT [FK_dbo.EndpointResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexToken] ADD CONSTRAINT [FK_dbo.EndpointResIndexToken_dbo.EndpointRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EndpointRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexUri] ADD CONSTRAINT [FK_dbo.EndpointResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EndpointResIndexUri] ADD CONSTRAINT [FK_dbo.EndpointResIndexUri_dbo.EndpointRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EndpointRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexDateTime_dbo.EnrollmentRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexQuantity_dbo.EnrollmentRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EnrollmentRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexReference_dbo.EnrollmentRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexToken] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexToken] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexToken_dbo.EnrollmentRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexUri] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentRequestResIndexUri] ADD CONSTRAINT [FK_dbo.EnrollmentRequestResIndexUri_dbo.EnrollmentRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexDateTime_dbo.EnrollmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexQuantity_dbo.EnrollmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EnrollmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexReference] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexReference_dbo.EnrollmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexToken] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexToken] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexToken_dbo.EnrollmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexUri] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EnrollmentResponseResIndexUri] ADD CONSTRAINT [FK_dbo.EnrollmentResponseResIndexUri_dbo.EnrollmentResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EnrollmentResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexDateTime] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexDateTime] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexDateTime_dbo.EpisodeOfCareRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EpisodeOfCareRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexQuantity] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexQuantity] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexQuantity_dbo.EpisodeOfCareRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EpisodeOfCareRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexReference] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[EpisodeOfCareResIndexReference] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexReference] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexReference_dbo.EpisodeOfCareRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EpisodeOfCareRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexToken] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexToken] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexToken_dbo.EpisodeOfCareRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EpisodeOfCareRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexUri] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[EpisodeOfCareResIndexUri] ADD CONSTRAINT [FK_dbo.EpisodeOfCareResIndexUri_dbo.EpisodeOfCareRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[EpisodeOfCareRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexDateTime] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexDateTime] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexDateTime_dbo.ExpansionProfileRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExpansionProfileRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexQuantity] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexQuantity] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexQuantity_dbo.ExpansionProfileRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExpansionProfileRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexReference] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ExpansionProfileResIndexReference] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexReference] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexReference_dbo.ExpansionProfileRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExpansionProfileRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexToken] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexToken] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexToken_dbo.ExpansionProfileRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExpansionProfileRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexUri] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExpansionProfileResIndexUri] ADD CONSTRAINT [FK_dbo.ExpansionProfileResIndexUri_dbo.ExpansionProfileRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExpansionProfileRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexDateTime] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexDateTime] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexDateTime_dbo.ExplanationOfBenefitRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExplanationOfBenefitRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexQuantity] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexQuantity] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexQuantity_dbo.ExplanationOfBenefitRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExplanationOfBenefitRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexReference] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexReference] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexReference] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexReference_dbo.ExplanationOfBenefitRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExplanationOfBenefitRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexToken] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexToken] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexToken_dbo.ExplanationOfBenefitRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExplanationOfBenefitRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexUri] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ExplanationOfBenefitResIndexUri] ADD CONSTRAINT [FK_dbo.ExplanationOfBenefitResIndexUri_dbo.ExplanationOfBenefitRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ExplanationOfBenefitRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexDateTime] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexDateTime] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexDateTime_dbo.FamilyMemberHistoryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FamilyMemberHistoryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexQuantity] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexQuantity] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexQuantity_dbo.FamilyMemberHistoryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FamilyMemberHistoryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexReference] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexReference] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexReference] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexReference_dbo.FamilyMemberHistoryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FamilyMemberHistoryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexToken] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexToken] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexToken_dbo.FamilyMemberHistoryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FamilyMemberHistoryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexUri] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FamilyMemberHistoryResIndexUri] ADD CONSTRAINT [FK_dbo.FamilyMemberHistoryResIndexUri_dbo.FamilyMemberHistoryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FamilyMemberHistoryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexDateTime] ADD CONSTRAINT [FK_dbo.FlagResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexDateTime] ADD CONSTRAINT [FK_dbo.FlagResIndexDateTime_dbo.FlagRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FlagRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexQuantity] ADD CONSTRAINT [FK_dbo.FlagResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexQuantity] ADD CONSTRAINT [FK_dbo.FlagResIndexQuantity_dbo.FlagRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FlagRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexReference] ADD CONSTRAINT [FK_dbo.FlagResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[FlagResIndexReference] ADD CONSTRAINT [FK_dbo.FlagResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexReference] ADD CONSTRAINT [FK_dbo.FlagResIndexReference_dbo.FlagRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FlagRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexToken] ADD CONSTRAINT [FK_dbo.FlagResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexToken] ADD CONSTRAINT [FK_dbo.FlagResIndexToken_dbo.FlagRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FlagRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexUri] ADD CONSTRAINT [FK_dbo.FlagResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[FlagResIndexUri] ADD CONSTRAINT [FK_dbo.FlagResIndexUri_dbo.FlagRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[FlagRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexDateTime] ADD CONSTRAINT [FK_dbo.GoalResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexDateTime] ADD CONSTRAINT [FK_dbo.GoalResIndexDateTime_dbo.GoalRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GoalRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexQuantity] ADD CONSTRAINT [FK_dbo.GoalResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexQuantity] ADD CONSTRAINT [FK_dbo.GoalResIndexQuantity_dbo.GoalRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GoalRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexReference] ADD CONSTRAINT [FK_dbo.GoalResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[GoalResIndexReference] ADD CONSTRAINT [FK_dbo.GoalResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexReference] ADD CONSTRAINT [FK_dbo.GoalResIndexReference_dbo.GoalRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GoalRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexToken] ADD CONSTRAINT [FK_dbo.GoalResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexToken] ADD CONSTRAINT [FK_dbo.GoalResIndexToken_dbo.GoalRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GoalRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexUri] ADD CONSTRAINT [FK_dbo.GoalResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GoalResIndexUri] ADD CONSTRAINT [FK_dbo.GoalResIndexUri_dbo.GoalRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GoalRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexDateTime_dbo.GraphDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GraphDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexQuantity_dbo.GraphDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GraphDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[GraphDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexReference_dbo.GraphDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GraphDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexToken_dbo.GraphDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GraphDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GraphDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.GraphDefinitionResIndexUri_dbo.GraphDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GraphDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexDateTime] ADD CONSTRAINT [FK_dbo.GroupResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexDateTime] ADD CONSTRAINT [FK_dbo.GroupResIndexDateTime_dbo.GroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexQuantity] ADD CONSTRAINT [FK_dbo.GroupResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexQuantity] ADD CONSTRAINT [FK_dbo.GroupResIndexQuantity_dbo.GroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexReference] ADD CONSTRAINT [FK_dbo.GroupResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[GroupResIndexReference] ADD CONSTRAINT [FK_dbo.GroupResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexReference] ADD CONSTRAINT [FK_dbo.GroupResIndexReference_dbo.GroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexToken] ADD CONSTRAINT [FK_dbo.GroupResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexToken] ADD CONSTRAINT [FK_dbo.GroupResIndexToken_dbo.GroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexUri] ADD CONSTRAINT [FK_dbo.GroupResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GroupResIndexUri] ADD CONSTRAINT [FK_dbo.GroupResIndexUri_dbo.GroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexDateTime_dbo.GuidanceResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GuidanceResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexQuantity_dbo.GuidanceResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GuidanceResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexReference] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[GuidanceResponseResIndexReference] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexReference] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexReference_dbo.GuidanceResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GuidanceResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexToken] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexToken] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexToken_dbo.GuidanceResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GuidanceResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexUri] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[GuidanceResponseResIndexUri] ADD CONSTRAINT [FK_dbo.GuidanceResponseResIndexUri_dbo.GuidanceResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[GuidanceResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexDateTime] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexDateTime] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexDateTime_dbo.HealthcareServiceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[HealthcareServiceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexQuantity] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexQuantity] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexQuantity_dbo.HealthcareServiceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[HealthcareServiceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexReference] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[HealthcareServiceResIndexReference] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexReference] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexReference_dbo.HealthcareServiceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[HealthcareServiceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexToken] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexToken] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexToken_dbo.HealthcareServiceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[HealthcareServiceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexUri] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[HealthcareServiceResIndexUri] ADD CONSTRAINT [FK_dbo.HealthcareServiceResIndexUri_dbo.HealthcareServiceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[HealthcareServiceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexDateTime_dbo.ImagingManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexQuantity_dbo.ImagingManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ImagingManifestResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexReference_dbo.ImagingManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexToken] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexToken] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexToken_dbo.ImagingManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexUri] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingManifestResIndexUri] ADD CONSTRAINT [FK_dbo.ImagingManifestResIndexUri_dbo.ImagingManifestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingManifestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexDateTime_dbo.ImagingStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexQuantity_dbo.ImagingStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ImagingStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexReference_dbo.ImagingStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexToken] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexToken] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexToken_dbo.ImagingStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexUri] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImagingStudyResIndexUri] ADD CONSTRAINT [FK_dbo.ImagingStudyResIndexUri_dbo.ImagingStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImagingStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexDateTime_dbo.ImmunizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexQuantity_dbo.ImmunizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ImmunizationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexReference_dbo.ImmunizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexToken] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexToken] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexToken_dbo.ImmunizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexUri] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationResIndexUri] ADD CONSTRAINT [FK_dbo.ImmunizationResIndexUri_dbo.ImmunizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexDateTime_dbo.ImmunizationRecommendationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRecommendationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexQuantity_dbo.ImmunizationRecommendationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRecommendationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexReference] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexReference_dbo.ImmunizationRecommendationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRecommendationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexToken] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexToken] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexToken_dbo.ImmunizationRecommendationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRecommendationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexUri] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImmunizationRecommendationResIndexUri] ADD CONSTRAINT [FK_dbo.ImmunizationRecommendationResIndexUri_dbo.ImmunizationRecommendationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImmunizationRecommendationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexDateTime] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexDateTime_dbo.ImplementationGuideRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImplementationGuideRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexQuantity] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexQuantity_dbo.ImplementationGuideRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImplementationGuideRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexReference] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ImplementationGuideResIndexReference] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexReference] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexReference_dbo.ImplementationGuideRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImplementationGuideRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexToken] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexToken] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexToken_dbo.ImplementationGuideRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImplementationGuideRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexUri] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ImplementationGuideResIndexUri] ADD CONSTRAINT [FK_dbo.ImplementationGuideResIndexUri_dbo.ImplementationGuideRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ImplementationGuideRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexDateTime] ADD CONSTRAINT [FK_dbo.LibraryResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexDateTime] ADD CONSTRAINT [FK_dbo.LibraryResIndexDateTime_dbo.LibraryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LibraryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexQuantity] ADD CONSTRAINT [FK_dbo.LibraryResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexQuantity] ADD CONSTRAINT [FK_dbo.LibraryResIndexQuantity_dbo.LibraryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LibraryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexReference] ADD CONSTRAINT [FK_dbo.LibraryResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[LibraryResIndexReference] ADD CONSTRAINT [FK_dbo.LibraryResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexReference] ADD CONSTRAINT [FK_dbo.LibraryResIndexReference_dbo.LibraryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LibraryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexToken] ADD CONSTRAINT [FK_dbo.LibraryResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexToken] ADD CONSTRAINT [FK_dbo.LibraryResIndexToken_dbo.LibraryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LibraryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexUri] ADD CONSTRAINT [FK_dbo.LibraryResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LibraryResIndexUri] ADD CONSTRAINT [FK_dbo.LibraryResIndexUri_dbo.LibraryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LibraryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexDateTime] ADD CONSTRAINT [FK_dbo.LinkageResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexDateTime] ADD CONSTRAINT [FK_dbo.LinkageResIndexDateTime_dbo.LinkageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LinkageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexQuantity] ADD CONSTRAINT [FK_dbo.LinkageResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexQuantity] ADD CONSTRAINT [FK_dbo.LinkageResIndexQuantity_dbo.LinkageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LinkageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexReference] ADD CONSTRAINT [FK_dbo.LinkageResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[LinkageResIndexReference] ADD CONSTRAINT [FK_dbo.LinkageResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexReference] ADD CONSTRAINT [FK_dbo.LinkageResIndexReference_dbo.LinkageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LinkageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexToken] ADD CONSTRAINT [FK_dbo.LinkageResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexToken] ADD CONSTRAINT [FK_dbo.LinkageResIndexToken_dbo.LinkageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LinkageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexUri] ADD CONSTRAINT [FK_dbo.LinkageResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LinkageResIndexUri] ADD CONSTRAINT [FK_dbo.LinkageResIndexUri_dbo.LinkageRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LinkageRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexDateTime] ADD CONSTRAINT [FK_dbo.ListResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexDateTime] ADD CONSTRAINT [FK_dbo.ListResIndexDateTime_dbo.ListRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ListRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexQuantity] ADD CONSTRAINT [FK_dbo.ListResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexQuantity] ADD CONSTRAINT [FK_dbo.ListResIndexQuantity_dbo.ListRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ListRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexReference] ADD CONSTRAINT [FK_dbo.ListResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ListResIndexReference] ADD CONSTRAINT [FK_dbo.ListResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexReference] ADD CONSTRAINT [FK_dbo.ListResIndexReference_dbo.ListRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ListRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexToken] ADD CONSTRAINT [FK_dbo.ListResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexToken] ADD CONSTRAINT [FK_dbo.ListResIndexToken_dbo.ListRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ListRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexUri] ADD CONSTRAINT [FK_dbo.ListResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ListResIndexUri] ADD CONSTRAINT [FK_dbo.ListResIndexUri_dbo.ListRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ListRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexDateTime] ADD CONSTRAINT [FK_dbo.LocationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexDateTime] ADD CONSTRAINT [FK_dbo.LocationResIndexDateTime_dbo.LocationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LocationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexQuantity] ADD CONSTRAINT [FK_dbo.LocationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexQuantity] ADD CONSTRAINT [FK_dbo.LocationResIndexQuantity_dbo.LocationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LocationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexReference] ADD CONSTRAINT [FK_dbo.LocationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[LocationResIndexReference] ADD CONSTRAINT [FK_dbo.LocationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexReference] ADD CONSTRAINT [FK_dbo.LocationResIndexReference_dbo.LocationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LocationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexToken] ADD CONSTRAINT [FK_dbo.LocationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexToken] ADD CONSTRAINT [FK_dbo.LocationResIndexToken_dbo.LocationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LocationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexUri] ADD CONSTRAINT [FK_dbo.LocationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[LocationResIndexUri] ADD CONSTRAINT [FK_dbo.LocationResIndexUri_dbo.LocationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[LocationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexDateTime] ADD CONSTRAINT [FK_dbo.MeasureResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexDateTime] ADD CONSTRAINT [FK_dbo.MeasureResIndexDateTime_dbo.MeasureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexQuantity] ADD CONSTRAINT [FK_dbo.MeasureResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexQuantity] ADD CONSTRAINT [FK_dbo.MeasureResIndexQuantity_dbo.MeasureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MeasureResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureResIndexReference_dbo.MeasureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexToken] ADD CONSTRAINT [FK_dbo.MeasureResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexToken] ADD CONSTRAINT [FK_dbo.MeasureResIndexToken_dbo.MeasureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexUri] ADD CONSTRAINT [FK_dbo.MeasureResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureResIndexUri] ADD CONSTRAINT [FK_dbo.MeasureResIndexUri_dbo.MeasureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexDateTime_dbo.MeasureReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexQuantity_dbo.MeasureReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MeasureReportResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexReference] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexReference_dbo.MeasureReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexToken] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexToken] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexToken_dbo.MeasureReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexUri] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MeasureReportResIndexUri] ADD CONSTRAINT [FK_dbo.MeasureReportResIndexUri_dbo.MeasureReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MeasureReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexDateTime] ADD CONSTRAINT [FK_dbo.MediaResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexDateTime] ADD CONSTRAINT [FK_dbo.MediaResIndexDateTime_dbo.MediaRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MediaRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexQuantity] ADD CONSTRAINT [FK_dbo.MediaResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexQuantity] ADD CONSTRAINT [FK_dbo.MediaResIndexQuantity_dbo.MediaRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MediaRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexReference] ADD CONSTRAINT [FK_dbo.MediaResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MediaResIndexReference] ADD CONSTRAINT [FK_dbo.MediaResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexReference] ADD CONSTRAINT [FK_dbo.MediaResIndexReference_dbo.MediaRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MediaRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexToken] ADD CONSTRAINT [FK_dbo.MediaResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexToken] ADD CONSTRAINT [FK_dbo.MediaResIndexToken_dbo.MediaRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MediaRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexUri] ADD CONSTRAINT [FK_dbo.MediaResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MediaResIndexUri] ADD CONSTRAINT [FK_dbo.MediaResIndexUri_dbo.MediaRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MediaRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationResIndexDateTime_dbo.MedicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationResIndexQuantity_dbo.MedicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MedicationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationResIndexReference_dbo.MedicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationResIndexToken_dbo.MedicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationResIndexUri_dbo.MedicationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexDateTime_dbo.MedicationAdministrationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationAdministrationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexQuantity_dbo.MedicationAdministrationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationAdministrationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MedicationAdministrationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexReference_dbo.MedicationAdministrationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationAdministrationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexToken_dbo.MedicationAdministrationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationAdministrationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationAdministrationResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationAdministrationResIndexUri_dbo.MedicationAdministrationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationAdministrationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexDateTime_dbo.MedicationDispenseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationDispenseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexQuantity_dbo.MedicationDispenseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationDispenseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MedicationDispenseResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexReference_dbo.MedicationDispenseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationDispenseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexToken_dbo.MedicationDispenseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationDispenseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationDispenseResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationDispenseResIndexUri_dbo.MedicationDispenseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationDispenseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexDateTime_dbo.MedicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexQuantity_dbo.MedicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MedicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexReference_dbo.MedicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexToken_dbo.MedicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationRequestResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationRequestResIndexUri_dbo.MedicationRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexDateTime] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexDateTime_dbo.MedicationStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexQuantity] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexQuantity_dbo.MedicationStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MedicationStatementResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexReference] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexReference_dbo.MedicationStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexToken] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexToken_dbo.MedicationStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MedicationStatementResIndexUri] ADD CONSTRAINT [FK_dbo.MedicationStatementResIndexUri_dbo.MedicationStatementRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MedicationStatementRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexDateTime_dbo.MessageDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexQuantity_dbo.MessageDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MessageDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexReference_dbo.MessageDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexToken_dbo.MessageDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.MessageDefinitionResIndexUri_dbo.MessageDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexDateTime] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexDateTime] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexDateTime_dbo.MessageHeaderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageHeaderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexQuantity] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexQuantity] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexQuantity_dbo.MessageHeaderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageHeaderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexReference] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[MessageHeaderResIndexReference] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexReference] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexReference_dbo.MessageHeaderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageHeaderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexToken] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexToken] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexToken_dbo.MessageHeaderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageHeaderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexUri] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[MessageHeaderResIndexUri] ADD CONSTRAINT [FK_dbo.MessageHeaderResIndexUri_dbo.MessageHeaderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[MessageHeaderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexDateTime] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexDateTime] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexDateTime_dbo.NamingSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NamingSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexQuantity] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexQuantity] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexQuantity_dbo.NamingSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NamingSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexReference] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[NamingSystemResIndexReference] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexReference] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexReference_dbo.NamingSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NamingSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexToken] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexToken] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexToken_dbo.NamingSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NamingSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexUri] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NamingSystemResIndexUri] ADD CONSTRAINT [FK_dbo.NamingSystemResIndexUri_dbo.NamingSystemRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NamingSystemRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexDateTime] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexDateTime] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexDateTime_dbo.NutritionOrderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NutritionOrderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexQuantity] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexQuantity] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexQuantity_dbo.NutritionOrderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NutritionOrderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexReference] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[NutritionOrderResIndexReference] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexReference] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexReference_dbo.NutritionOrderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NutritionOrderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexToken] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexToken] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexToken_dbo.NutritionOrderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NutritionOrderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexUri] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[NutritionOrderResIndexUri] ADD CONSTRAINT [FK_dbo.NutritionOrderResIndexUri_dbo.NutritionOrderRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[NutritionOrderRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ObservationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexDateTime] ADD CONSTRAINT [FK_dbo.ObservationResIndexDateTime_dbo.ObservationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ObservationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ObservationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexQuantity] ADD CONSTRAINT [FK_dbo.ObservationResIndexQuantity_dbo.ObservationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ObservationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexReference] ADD CONSTRAINT [FK_dbo.ObservationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ObservationResIndexReference] ADD CONSTRAINT [FK_dbo.ObservationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexReference] ADD CONSTRAINT [FK_dbo.ObservationResIndexReference_dbo.ObservationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ObservationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexToken] ADD CONSTRAINT [FK_dbo.ObservationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexToken] ADD CONSTRAINT [FK_dbo.ObservationResIndexToken_dbo.ObservationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ObservationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexUri] ADD CONSTRAINT [FK_dbo.ObservationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ObservationResIndexUri] ADD CONSTRAINT [FK_dbo.ObservationResIndexUri_dbo.ObservationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ObservationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexDateTime_dbo.OperationDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexQuantity_dbo.OperationDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[OperationDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexReference_dbo.OperationDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexToken_dbo.OperationDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.OperationDefinitionResIndexUri_dbo.OperationDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexDateTime] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexDateTime] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexDateTime_dbo.OperationOutcomeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationOutcomeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexQuantity] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexQuantity] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexQuantity_dbo.OperationOutcomeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationOutcomeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexReference] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[OperationOutcomeResIndexReference] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexReference] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexReference_dbo.OperationOutcomeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationOutcomeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexToken] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexToken] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexToken_dbo.OperationOutcomeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationOutcomeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexUri] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OperationOutcomeResIndexUri] ADD CONSTRAINT [FK_dbo.OperationOutcomeResIndexUri_dbo.OperationOutcomeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OperationOutcomeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexDateTime] ADD CONSTRAINT [FK_dbo.OrganizationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexDateTime] ADD CONSTRAINT [FK_dbo.OrganizationResIndexDateTime_dbo.OrganizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OrganizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexQuantity] ADD CONSTRAINT [FK_dbo.OrganizationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexQuantity] ADD CONSTRAINT [FK_dbo.OrganizationResIndexQuantity_dbo.OrganizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OrganizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexReference] ADD CONSTRAINT [FK_dbo.OrganizationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[OrganizationResIndexReference] ADD CONSTRAINT [FK_dbo.OrganizationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexReference] ADD CONSTRAINT [FK_dbo.OrganizationResIndexReference_dbo.OrganizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OrganizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexToken] ADD CONSTRAINT [FK_dbo.OrganizationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexToken] ADD CONSTRAINT [FK_dbo.OrganizationResIndexToken_dbo.OrganizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OrganizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexUri] ADD CONSTRAINT [FK_dbo.OrganizationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrganizationResIndexUri] ADD CONSTRAINT [FK_dbo.OrganizationResIndexUri_dbo.OrganizationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[OrganizationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexDateTime] ADD CONSTRAINT [FK_dbo.ParametersResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexDateTime] ADD CONSTRAINT [FK_dbo.ParametersResIndexDateTime_dbo.ParametersRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ParametersRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexQuantity] ADD CONSTRAINT [FK_dbo.ParametersResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexQuantity] ADD CONSTRAINT [FK_dbo.ParametersResIndexQuantity_dbo.ParametersRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ParametersRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexReference] ADD CONSTRAINT [FK_dbo.ParametersResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ParametersResIndexReference] ADD CONSTRAINT [FK_dbo.ParametersResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexReference] ADD CONSTRAINT [FK_dbo.ParametersResIndexReference_dbo.ParametersRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ParametersRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexToken] ADD CONSTRAINT [FK_dbo.ParametersResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexToken] ADD CONSTRAINT [FK_dbo.ParametersResIndexToken_dbo.ParametersRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ParametersRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexUri] ADD CONSTRAINT [FK_dbo.ParametersResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ParametersResIndexUri] ADD CONSTRAINT [FK_dbo.ParametersResIndexUri_dbo.ParametersRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ParametersRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexDateTime] ADD CONSTRAINT [FK_dbo.PatientResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexDateTime] ADD CONSTRAINT [FK_dbo.PatientResIndexDateTime_dbo.PatientRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PatientRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexQuantity] ADD CONSTRAINT [FK_dbo.PatientResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexQuantity] ADD CONSTRAINT [FK_dbo.PatientResIndexQuantity_dbo.PatientRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PatientRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexReference] ADD CONSTRAINT [FK_dbo.PatientResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PatientResIndexReference] ADD CONSTRAINT [FK_dbo.PatientResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexReference] ADD CONSTRAINT [FK_dbo.PatientResIndexReference_dbo.PatientRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PatientRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexToken] ADD CONSTRAINT [FK_dbo.PatientResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexToken] ADD CONSTRAINT [FK_dbo.PatientResIndexToken_dbo.PatientRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PatientRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexUri] ADD CONSTRAINT [FK_dbo.PatientResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PatientResIndexUri] ADD CONSTRAINT [FK_dbo.PatientResIndexUri_dbo.PatientRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PatientRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexDateTime] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexDateTime] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexDateTime_dbo.PaymentNoticeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentNoticeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexQuantity] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexQuantity] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexQuantity_dbo.PaymentNoticeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentNoticeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PaymentNoticeResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexReference_dbo.PaymentNoticeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentNoticeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexToken] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexToken] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexToken_dbo.PaymentNoticeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentNoticeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexUri] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentNoticeResIndexUri] ADD CONSTRAINT [FK_dbo.PaymentNoticeResIndexUri_dbo.PaymentNoticeRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentNoticeRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexDateTime] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexDateTime] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexDateTime_dbo.PaymentReconciliationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentReconciliationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexQuantity] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexQuantity] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexQuantity_dbo.PaymentReconciliationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentReconciliationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PaymentReconciliationResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexReference] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexReference_dbo.PaymentReconciliationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentReconciliationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexToken] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexToken] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexToken_dbo.PaymentReconciliationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentReconciliationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexUri] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PaymentReconciliationResIndexUri] ADD CONSTRAINT [FK_dbo.PaymentReconciliationResIndexUri_dbo.PaymentReconciliationRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PaymentReconciliationRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexDateTime] ADD CONSTRAINT [FK_dbo.PersonResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexDateTime] ADD CONSTRAINT [FK_dbo.PersonResIndexDateTime_dbo.PersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexQuantity] ADD CONSTRAINT [FK_dbo.PersonResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexQuantity] ADD CONSTRAINT [FK_dbo.PersonResIndexQuantity_dbo.PersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexReference] ADD CONSTRAINT [FK_dbo.PersonResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PersonResIndexReference] ADD CONSTRAINT [FK_dbo.PersonResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexReference] ADD CONSTRAINT [FK_dbo.PersonResIndexReference_dbo.PersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexToken] ADD CONSTRAINT [FK_dbo.PersonResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexToken] ADD CONSTRAINT [FK_dbo.PersonResIndexToken_dbo.PersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexUri] ADD CONSTRAINT [FK_dbo.PersonResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PersonResIndexUri] ADD CONSTRAINT [FK_dbo.PersonResIndexUri_dbo.PersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexDateTime_dbo.PlanDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PlanDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexQuantity_dbo.PlanDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PlanDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PlanDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexReference_dbo.PlanDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PlanDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexToken_dbo.PlanDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PlanDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PlanDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.PlanDefinitionResIndexUri_dbo.PlanDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PlanDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexDateTime] ADD CONSTRAINT [FK_dbo.PractitionerResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexDateTime] ADD CONSTRAINT [FK_dbo.PractitionerResIndexDateTime_dbo.PractitionerRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexQuantity] ADD CONSTRAINT [FK_dbo.PractitionerResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexQuantity] ADD CONSTRAINT [FK_dbo.PractitionerResIndexQuantity_dbo.PractitionerRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PractitionerResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerResIndexReference_dbo.PractitionerRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexToken] ADD CONSTRAINT [FK_dbo.PractitionerResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexToken] ADD CONSTRAINT [FK_dbo.PractitionerResIndexToken_dbo.PractitionerRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexUri] ADD CONSTRAINT [FK_dbo.PractitionerResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerResIndexUri] ADD CONSTRAINT [FK_dbo.PractitionerResIndexUri_dbo.PractitionerRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexDateTime] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexDateTime] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexDateTime_dbo.PractitionerRoleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRoleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexQuantity] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexQuantity] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexQuantity_dbo.PractitionerRoleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRoleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[PractitionerRoleResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexReference] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexReference_dbo.PractitionerRoleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRoleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexToken] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexToken] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexToken_dbo.PractitionerRoleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRoleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexUri] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[PractitionerRoleResIndexUri] ADD CONSTRAINT [FK_dbo.PractitionerRoleResIndexUri_dbo.PractitionerRoleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[PractitionerRoleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcedureResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcedureResIndexDateTime_dbo.ProcedureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcedureResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcedureResIndexQuantity_dbo.ProcedureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ProcedureResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureResIndexReference_dbo.ProcedureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexToken] ADD CONSTRAINT [FK_dbo.ProcedureResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexToken] ADD CONSTRAINT [FK_dbo.ProcedureResIndexToken_dbo.ProcedureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexUri] ADD CONSTRAINT [FK_dbo.ProcedureResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureResIndexUri] ADD CONSTRAINT [FK_dbo.ProcedureResIndexUri_dbo.ProcedureRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexDateTime_dbo.ProcedureRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexQuantity_dbo.ProcedureRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ProcedureRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexReference_dbo.ProcedureRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexToken_dbo.ProcedureRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcedureRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ProcedureRequestResIndexUri_dbo.ProcedureRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcedureRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexDateTime_dbo.ProcessRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexQuantity_dbo.ProcessRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ProcessRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexReference_dbo.ProcessRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexToken_dbo.ProcessRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ProcessRequestResIndexUri_dbo.ProcessRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexDateTime_dbo.ProcessResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexQuantity_dbo.ProcessResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ProcessResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexReference] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexReference_dbo.ProcessResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexToken] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexToken] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexToken_dbo.ProcessResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexUri] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProcessResponseResIndexUri] ADD CONSTRAINT [FK_dbo.ProcessResponseResIndexUri_dbo.ProcessResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProcessResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexDateTime] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexDateTime_dbo.ProvenanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProvenanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexQuantity] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexQuantity_dbo.ProvenanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProvenanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexReference] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ProvenanceResIndexReference] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexReference] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexReference_dbo.ProvenanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProvenanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexToken] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexToken] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexToken_dbo.ProvenanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProvenanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexUri] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ProvenanceResIndexUri] ADD CONSTRAINT [FK_dbo.ProvenanceResIndexUri_dbo.ProvenanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ProvenanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexDateTime] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexDateTime] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexDateTime_dbo.QuestionnaireRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexQuantity] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexQuantity] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexQuantity_dbo.QuestionnaireRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[QuestionnaireResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexReference_dbo.QuestionnaireRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexToken] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexToken] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexToken_dbo.QuestionnaireRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexUri] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResIndexUri] ADD CONSTRAINT [FK_dbo.QuestionnaireResIndexUri_dbo.QuestionnaireRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexDateTime] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexDateTime_dbo.QuestionnaireResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexQuantity] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexQuantity_dbo.QuestionnaireResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[QuestionnaireResponseResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexReference] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexReference_dbo.QuestionnaireResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexToken] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexToken] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexToken_dbo.QuestionnaireResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexUri] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[QuestionnaireResponseResIndexUri] ADD CONSTRAINT [FK_dbo.QuestionnaireResponseResIndexUri_dbo.QuestionnaireResponseRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[QuestionnaireResponseRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexDateTime_dbo.ReferralRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ReferralRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexQuantity_dbo.ReferralRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ReferralRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ReferralRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexReference] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexReference_dbo.ReferralRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ReferralRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexToken] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexToken_dbo.ReferralRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ReferralRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ReferralRequestResIndexUri] ADD CONSTRAINT [FK_dbo.ReferralRequestResIndexUri_dbo.ReferralRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ReferralRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexDateTime] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexDateTime] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexDateTime_dbo.RelatedPersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RelatedPersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexQuantity] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexQuantity] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexQuantity_dbo.RelatedPersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RelatedPersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexReference] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[RelatedPersonResIndexReference] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexReference] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexReference_dbo.RelatedPersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RelatedPersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexToken] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexToken] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexToken_dbo.RelatedPersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RelatedPersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexUri] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RelatedPersonResIndexUri] ADD CONSTRAINT [FK_dbo.RelatedPersonResIndexUri_dbo.RelatedPersonRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RelatedPersonRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexDateTime] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexDateTime] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexDateTime_dbo.RequestGroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RequestGroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexQuantity] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexQuantity] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexQuantity_dbo.RequestGroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RequestGroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexReference] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[RequestGroupResIndexReference] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexReference] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexReference_dbo.RequestGroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RequestGroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexToken] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexToken] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexToken_dbo.RequestGroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RequestGroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexUri] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RequestGroupResIndexUri] ADD CONSTRAINT [FK_dbo.RequestGroupResIndexUri_dbo.RequestGroupRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RequestGroupRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexDateTime] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexDateTime] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexDateTime_dbo.ResearchStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexQuantity] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexQuantity] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexQuantity_dbo.ResearchStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ResearchStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexReference_dbo.ResearchStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexToken] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexToken] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexToken_dbo.ResearchStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexUri] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchStudyResIndexUri] ADD CONSTRAINT [FK_dbo.ResearchStudyResIndexUri_dbo.ResearchStudyRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchStudyRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexDateTime] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexDateTime] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexDateTime_dbo.ResearchSubjectRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchSubjectRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexQuantity] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexQuantity] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexQuantity_dbo.ResearchSubjectRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchSubjectRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ResearchSubjectResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexReference] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexReference_dbo.ResearchSubjectRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchSubjectRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexToken] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexToken] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexToken_dbo.ResearchSubjectRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchSubjectRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexUri] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ResearchSubjectResIndexUri] ADD CONSTRAINT [FK_dbo.ResearchSubjectResIndexUri_dbo.ResearchSubjectRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ResearchSubjectRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexDateTime] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexDateTime] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexDateTime_dbo.RiskAssessmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RiskAssessmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexQuantity] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexQuantity] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexQuantity_dbo.RiskAssessmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RiskAssessmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexReference] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[RiskAssessmentResIndexReference] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexReference] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexReference_dbo.RiskAssessmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RiskAssessmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexToken] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexToken] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexToken_dbo.RiskAssessmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RiskAssessmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexUri] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[RiskAssessmentResIndexUri] ADD CONSTRAINT [FK_dbo.RiskAssessmentResIndexUri_dbo.RiskAssessmentRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[RiskAssessmentRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexDateTime] ADD CONSTRAINT [FK_dbo.ScheduleResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexDateTime] ADD CONSTRAINT [FK_dbo.ScheduleResIndexDateTime_dbo.ScheduleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ScheduleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexQuantity] ADD CONSTRAINT [FK_dbo.ScheduleResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexQuantity] ADD CONSTRAINT [FK_dbo.ScheduleResIndexQuantity_dbo.ScheduleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ScheduleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexReference] ADD CONSTRAINT [FK_dbo.ScheduleResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ScheduleResIndexReference] ADD CONSTRAINT [FK_dbo.ScheduleResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexReference] ADD CONSTRAINT [FK_dbo.ScheduleResIndexReference_dbo.ScheduleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ScheduleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexToken] ADD CONSTRAINT [FK_dbo.ScheduleResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexToken] ADD CONSTRAINT [FK_dbo.ScheduleResIndexToken_dbo.ScheduleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ScheduleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexUri] ADD CONSTRAINT [FK_dbo.ScheduleResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ScheduleResIndexUri] ADD CONSTRAINT [FK_dbo.ScheduleResIndexUri_dbo.ScheduleRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ScheduleRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexDateTime] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexDateTime] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexDateTime_dbo.SearchParameterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SearchParameterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexQuantity] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexQuantity] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexQuantity_dbo.SearchParameterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SearchParameterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexReference] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SearchParameterResIndexReference] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexReference] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexReference_dbo.SearchParameterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SearchParameterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexToken] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexToken] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexToken_dbo.SearchParameterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SearchParameterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexUri] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SearchParameterResIndexUri] ADD CONSTRAINT [FK_dbo.SearchParameterResIndexUri_dbo.SearchParameterRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SearchParameterRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexDateTime] ADD CONSTRAINT [FK_dbo.SequenceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexDateTime] ADD CONSTRAINT [FK_dbo.SequenceResIndexDateTime_dbo.SequenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SequenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexQuantity] ADD CONSTRAINT [FK_dbo.SequenceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexQuantity] ADD CONSTRAINT [FK_dbo.SequenceResIndexQuantity_dbo.SequenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SequenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexReference] ADD CONSTRAINT [FK_dbo.SequenceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SequenceResIndexReference] ADD CONSTRAINT [FK_dbo.SequenceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexReference] ADD CONSTRAINT [FK_dbo.SequenceResIndexReference_dbo.SequenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SequenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexToken] ADD CONSTRAINT [FK_dbo.SequenceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexToken] ADD CONSTRAINT [FK_dbo.SequenceResIndexToken_dbo.SequenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SequenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexUri] ADD CONSTRAINT [FK_dbo.SequenceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SequenceResIndexUri] ADD CONSTRAINT [FK_dbo.SequenceResIndexUri_dbo.SequenceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SequenceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexDateTime_dbo.ServiceDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ServiceDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexQuantity_dbo.ServiceDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ServiceDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ServiceDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexReference_dbo.ServiceDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ServiceDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexToken_dbo.ServiceDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ServiceDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ServiceDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.ServiceDefinitionResIndexUri_dbo.ServiceDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ServiceDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexDateTime] ADD CONSTRAINT [FK_dbo.SlotResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexDateTime] ADD CONSTRAINT [FK_dbo.SlotResIndexDateTime_dbo.SlotRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SlotRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexQuantity] ADD CONSTRAINT [FK_dbo.SlotResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexQuantity] ADD CONSTRAINT [FK_dbo.SlotResIndexQuantity_dbo.SlotRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SlotRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexReference] ADD CONSTRAINT [FK_dbo.SlotResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SlotResIndexReference] ADD CONSTRAINT [FK_dbo.SlotResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexReference] ADD CONSTRAINT [FK_dbo.SlotResIndexReference_dbo.SlotRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SlotRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexToken] ADD CONSTRAINT [FK_dbo.SlotResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexToken] ADD CONSTRAINT [FK_dbo.SlotResIndexToken_dbo.SlotRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SlotRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexUri] ADD CONSTRAINT [FK_dbo.SlotResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SlotResIndexUri] ADD CONSTRAINT [FK_dbo.SlotResIndexUri_dbo.SlotRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SlotRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexDateTime] ADD CONSTRAINT [FK_dbo.SpecimenResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexDateTime] ADD CONSTRAINT [FK_dbo.SpecimenResIndexDateTime_dbo.SpecimenRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SpecimenRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexQuantity] ADD CONSTRAINT [FK_dbo.SpecimenResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexQuantity] ADD CONSTRAINT [FK_dbo.SpecimenResIndexQuantity_dbo.SpecimenRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SpecimenRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexReference] ADD CONSTRAINT [FK_dbo.SpecimenResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SpecimenResIndexReference] ADD CONSTRAINT [FK_dbo.SpecimenResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexReference] ADD CONSTRAINT [FK_dbo.SpecimenResIndexReference_dbo.SpecimenRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SpecimenRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexToken] ADD CONSTRAINT [FK_dbo.SpecimenResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexToken] ADD CONSTRAINT [FK_dbo.SpecimenResIndexToken_dbo.SpecimenRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SpecimenRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexUri] ADD CONSTRAINT [FK_dbo.SpecimenResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SpecimenResIndexUri] ADD CONSTRAINT [FK_dbo.SpecimenResIndexUri_dbo.SpecimenRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SpecimenRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexDateTime] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexDateTime_dbo.StructureDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexQuantity] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexQuantity_dbo.StructureDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[StructureDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexReference] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexReference_dbo.StructureDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexToken] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexToken_dbo.StructureDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureDefinitionResIndexUri] ADD CONSTRAINT [FK_dbo.StructureDefinitionResIndexUri_dbo.StructureDefinitionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureDefinitionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexDateTime] ADD CONSTRAINT [FK_dbo.StructureMapResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexDateTime] ADD CONSTRAINT [FK_dbo.StructureMapResIndexDateTime_dbo.StructureMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexQuantity] ADD CONSTRAINT [FK_dbo.StructureMapResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexQuantity] ADD CONSTRAINT [FK_dbo.StructureMapResIndexQuantity_dbo.StructureMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexReference] ADD CONSTRAINT [FK_dbo.StructureMapResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[StructureMapResIndexReference] ADD CONSTRAINT [FK_dbo.StructureMapResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexReference] ADD CONSTRAINT [FK_dbo.StructureMapResIndexReference_dbo.StructureMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexToken] ADD CONSTRAINT [FK_dbo.StructureMapResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexToken] ADD CONSTRAINT [FK_dbo.StructureMapResIndexToken_dbo.StructureMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexUri] ADD CONSTRAINT [FK_dbo.StructureMapResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[StructureMapResIndexUri] ADD CONSTRAINT [FK_dbo.StructureMapResIndexUri_dbo.StructureMapRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[StructureMapRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexDateTime] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexDateTime] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexDateTime_dbo.SubscriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubscriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexQuantity] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexQuantity] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexQuantity_dbo.SubscriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubscriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexReference] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SubscriptionResIndexReference] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexReference] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexReference_dbo.SubscriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubscriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexToken] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexToken] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexToken_dbo.SubscriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubscriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexUri] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubscriptionResIndexUri] ADD CONSTRAINT [FK_dbo.SubscriptionResIndexUri_dbo.SubscriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubscriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexDateTime] ADD CONSTRAINT [FK_dbo.SubstanceResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexDateTime] ADD CONSTRAINT [FK_dbo.SubstanceResIndexDateTime_dbo.SubstanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubstanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexQuantity] ADD CONSTRAINT [FK_dbo.SubstanceResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexQuantity] ADD CONSTRAINT [FK_dbo.SubstanceResIndexQuantity_dbo.SubstanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubstanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexReference] ADD CONSTRAINT [FK_dbo.SubstanceResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SubstanceResIndexReference] ADD CONSTRAINT [FK_dbo.SubstanceResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexReference] ADD CONSTRAINT [FK_dbo.SubstanceResIndexReference_dbo.SubstanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubstanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexToken] ADD CONSTRAINT [FK_dbo.SubstanceResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexToken] ADD CONSTRAINT [FK_dbo.SubstanceResIndexToken_dbo.SubstanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubstanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexUri] ADD CONSTRAINT [FK_dbo.SubstanceResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SubstanceResIndexUri] ADD CONSTRAINT [FK_dbo.SubstanceResIndexUri_dbo.SubstanceRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SubstanceRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexDateTime] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexDateTime] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexDateTime_dbo.SupplyDeliveryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyDeliveryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexQuantity] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexQuantity] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexQuantity_dbo.SupplyDeliveryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyDeliveryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SupplyDeliveryResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexReference_dbo.SupplyDeliveryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyDeliveryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexToken] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexToken] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexToken_dbo.SupplyDeliveryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyDeliveryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexUri] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyDeliveryResIndexUri] ADD CONSTRAINT [FK_dbo.SupplyDeliveryResIndexUri_dbo.SupplyDeliveryRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyDeliveryRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexDateTime] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexDateTime_dbo.SupplyRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexQuantity] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexQuantity_dbo.SupplyRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[SupplyRequestResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexReference] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexReference_dbo.SupplyRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexToken] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexToken] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexToken_dbo.SupplyRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexUri] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[SupplyRequestResIndexUri] ADD CONSTRAINT [FK_dbo.SupplyRequestResIndexUri_dbo.SupplyRequestRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[SupplyRequestRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexDateTime] ADD CONSTRAINT [FK_dbo.TaskResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexDateTime] ADD CONSTRAINT [FK_dbo.TaskResIndexDateTime_dbo.TaskRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TaskRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexQuantity] ADD CONSTRAINT [FK_dbo.TaskResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexQuantity] ADD CONSTRAINT [FK_dbo.TaskResIndexQuantity_dbo.TaskRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TaskRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexReference] ADD CONSTRAINT [FK_dbo.TaskResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[TaskResIndexReference] ADD CONSTRAINT [FK_dbo.TaskResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexReference] ADD CONSTRAINT [FK_dbo.TaskResIndexReference_dbo.TaskRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TaskRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexToken] ADD CONSTRAINT [FK_dbo.TaskResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexToken] ADD CONSTRAINT [FK_dbo.TaskResIndexToken_dbo.TaskRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TaskRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexUri] ADD CONSTRAINT [FK_dbo.TaskResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TaskResIndexUri] ADD CONSTRAINT [FK_dbo.TaskResIndexUri_dbo.TaskRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TaskRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.TestReportResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexDateTime] ADD CONSTRAINT [FK_dbo.TestReportResIndexDateTime_dbo.TestReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.TestReportResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexQuantity] ADD CONSTRAINT [FK_dbo.TestReportResIndexQuantity_dbo.TestReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexReference] ADD CONSTRAINT [FK_dbo.TestReportResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[TestReportResIndexReference] ADD CONSTRAINT [FK_dbo.TestReportResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexReference] ADD CONSTRAINT [FK_dbo.TestReportResIndexReference_dbo.TestReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexToken] ADD CONSTRAINT [FK_dbo.TestReportResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexToken] ADD CONSTRAINT [FK_dbo.TestReportResIndexToken_dbo.TestReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexUri] ADD CONSTRAINT [FK_dbo.TestReportResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestReportResIndexUri] ADD CONSTRAINT [FK_dbo.TestReportResIndexUri_dbo.TestReportRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestReportRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexDateTime] ADD CONSTRAINT [FK_dbo.TestScriptResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexDateTime] ADD CONSTRAINT [FK_dbo.TestScriptResIndexDateTime_dbo.TestScriptRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestScriptRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexQuantity] ADD CONSTRAINT [FK_dbo.TestScriptResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexQuantity] ADD CONSTRAINT [FK_dbo.TestScriptResIndexQuantity_dbo.TestScriptRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestScriptRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexReference] ADD CONSTRAINT [FK_dbo.TestScriptResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[TestScriptResIndexReference] ADD CONSTRAINT [FK_dbo.TestScriptResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexReference] ADD CONSTRAINT [FK_dbo.TestScriptResIndexReference_dbo.TestScriptRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestScriptRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexToken] ADD CONSTRAINT [FK_dbo.TestScriptResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexToken] ADD CONSTRAINT [FK_dbo.TestScriptResIndexToken_dbo.TestScriptRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestScriptRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexUri] ADD CONSTRAINT [FK_dbo.TestScriptResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[TestScriptResIndexUri] ADD CONSTRAINT [FK_dbo.TestScriptResIndexUri_dbo.TestScriptRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[TestScriptRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexDateTime] ADD CONSTRAINT [FK_dbo.ValueSetResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexDateTime] ADD CONSTRAINT [FK_dbo.ValueSetResIndexDateTime_dbo.ValueSetRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ValueSetRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexQuantity] ADD CONSTRAINT [FK_dbo.ValueSetResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexQuantity] ADD CONSTRAINT [FK_dbo.ValueSetResIndexQuantity_dbo.ValueSetRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ValueSetRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexReference] ADD CONSTRAINT [FK_dbo.ValueSetResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[ValueSetResIndexReference] ADD CONSTRAINT [FK_dbo.ValueSetResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexReference] ADD CONSTRAINT [FK_dbo.ValueSetResIndexReference_dbo.ValueSetRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ValueSetRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexToken] ADD CONSTRAINT [FK_dbo.ValueSetResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexToken] ADD CONSTRAINT [FK_dbo.ValueSetResIndexToken_dbo.ValueSetRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ValueSetRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexUri] ADD CONSTRAINT [FK_dbo.ValueSetResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[ValueSetResIndexUri] ADD CONSTRAINT [FK_dbo.ValueSetResIndexUri_dbo.ValueSetRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[ValueSetRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexDateTime] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexDateTime_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexDateTime] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexDateTime_dbo.VisionPrescriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[VisionPrescriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexQuantity] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexQuantity_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexQuantity] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexQuantity_dbo.VisionPrescriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[VisionPrescriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexReference] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexReference_dbo.ServiceBaseUrl_ReferenceServiceBaseUrlId] FOREIGN KEY ([ReferenceServiceBaseUrlId]) REFERENCES [dbo].[ServiceBaseUrl] ([Id])
ALTER TABLE [dbo].[VisionPrescriptionResIndexReference] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexReference_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexReference] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexReference_dbo.VisionPrescriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[VisionPrescriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexToken] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexToken_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexToken] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexToken_dbo.VisionPrescriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[VisionPrescriptionRes] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexUri] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexUri_dbo.ServiceSearchParameter_ServiceSearchParameterId] FOREIGN KEY ([ServiceSearchParameterId]) REFERENCES [dbo].[ServiceSearchParameter] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[VisionPrescriptionResIndexUri] ADD CONSTRAINT [FK_dbo.VisionPrescriptionResIndexUri_dbo.VisionPrescriptionRes_ResourceId] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[VisionPrescriptionRes] ([Id]) ON DELETE CASCADE
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
