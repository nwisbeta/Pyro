//[assembly: WebActivator.PostApplicationStartMethod(typeof(Pyro.WebApi.App_Start.SimpleInjectorWebApiInitializer), "Initialize")]
namespace Pyro.Backburner.App_Start
{
  using Hl7.Fhir.Specification.Source;
  using Pyro.Common.Cache;
  using Pyro.Common.CompositionRoot.Concrete;
  using Pyro.Common.DtoEntity;
  using Pyro.Common.Enum;
  using Pyro.Common.FhirHttpResponse;
  using Pyro.Common.FhirOperation.BundleTransaction;
  using Pyro.Common.FhirOperation.Compartment;
  using Pyro.Common.FhirOperation.ConnectathonAnswer; 
  using Pyro.Common.FhirOperation.IhiSearch;
    using Pyro.Common.FhirOperation.ProcessMessage;
    using Pyro.Common.FhirOperation.ResourceReport;
  using Pyro.Common.FhirOperation.ServerSearchParameter;
  using Pyro.Common.FhirOperation.Validate;
  using Pyro.Common.Global;
  using Pyro.Common.Interfaces.Operation;
  using Pyro.Common.Interfaces.Repositories;
  using Pyro.Common.Interfaces.Service;
  using Pyro.Common.Interfaces.Tools.HtmlSupport;
  using Pyro.Common.Logging;
  using Pyro.Common.RequestMetadata;
  using Pyro.Common.Search;
  using Pyro.Common.Search.SearchParameterEntity;
  using Pyro.Common.Service.CompartmentSearchParameter;
  using Pyro.Common.Service.Include;
  using Pyro.Common.Service.ResourceService;
  using Pyro.Common.Service.SearchParameters;
  using Pyro.Common.Service.Smart;
  using Pyro.Common.Service.Trigger;
  using Pyro.Common.Service.Trigger.TriggerServices;
  using Pyro.Common.ServiceRoot;
  using Pyro.Common.ServiceSearchParameter;
  using Pyro.Common.Tools;
  using Pyro.Common.Tools.FhirNarrative;
  using Pyro.Common.Tools.FhirResourceValidation;
  using Pyro.Common.Tools.Headers;
  using Pyro.Common.Tools.UriSupport;
  using Pyro.DataLayer.DbModel.DatabaseContext;
  using Pyro.DataLayer.DbModel.UnitOfWork;
  using Pyro.DataLayer.IndexSetter;
  using Pyro.DataLayer.Repository;
  using Pyro.Engine.Operation;
  using Pyro.Engine.Services.Metadata;
  using Pyro.Engine.Services.PyroServiceApi;
  using Pyro.Engine.Services.Resources;
  using Pyro.Engine.Services.ServiceBaseUrl;
  using Pyro.Engine.Services.ServiceConfiguration;
  using Pyro.Engine.Services.ServiceSearchParameter;
  using SimpleInjector;

  public static class SimpleInjectorWebApiInitializer
  {
    private static PyroProject.PyroProjectType ProjectType = PyroProject.PyroProjectType.Backburner;

    /// <summary>Initialise the container and register it as Web API Dependency Resolver.</summary>
    public static void Initialize(Container container)
    {
      container.Options.DefaultScopedLifestyle = new SimpleInjector.Lifestyles.AsyncScopedLifestyle();
      InitializeBackburnerServicesInContainer(container);
      InitializePyroServerServicesInContainer(container);
      InitializeConditionalServicesInContainer(container);      
      container.Verify();
    }

    /// <summary>
    /// Only services that are found in the Pyro.Backburner project
    /// </summary>
    /// <param name="container"></param>
    private static void InitializeBackburnerServicesInContainer(Container container)
    {
      //========================================================================================================
      //=================== Backburner Only ====================================================================            
      //========================================================================================================

      
    }

    /// <summary>
    /// Services that are Conditional on which Project is runnning. For instance a different concreate implementation maybe used for the same Interface    
    /// </summary>    
    private static void InitializeConditionalServicesInContainer(Container container)
    {
      switch (ProjectType)
      {
        case PyroProject.PyroProjectType.FhirApi:
          {
            container.Register<IGlobalProperties, GlobalProperties>(Lifestyle.Singleton);
          }
          break;
        case PyroProject.PyroProjectType.Backburner:
          {            
            container.Register<IGlobalProperties, DbGlobalProperties>(Lifestyle.Scoped);
          }
          break;
        default:
          throw new System.ComponentModel.InvalidEnumArgumentException(ProjectType.GetPyroLiteral(), (int)ProjectType, typeof(PyroProject.PyroProjectType));
      }
    }


    /// <summary>
    /// Services that are common to Pyro.WebApi & Pyro.Backburner
    /// (The whole method can be cut & pasted from Pyro.WebApi.App_Start.SimpleInjectorWebApiInitializer class to here and and vice versa)
    /// </summary>
    /// <param name="container"></param>
    private static void InitializePyroServerServicesInContainer(Container container)
    {
      //========================================================================================================
      //=================== Singleton ==========================================================================            
      //========================================================================================================

      container.RegisterConditional(typeof(ILog), context => typeof(Log<>).MakeGenericType(context.Consumer.ImplementationType), Lifestyle.Singleton, context => true);
      container.Register<Pyro.Common.CompositionRoot.ICommonFactory, CommonFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IDtoRootUrlStoreFactory, DtoRootUrlStoreFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IDatabaseOperationOutcomeFactory, DatabaseOperationOutcomeFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IPyroFhirUriFactory, PyroFhirUriFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IRequestHeaderFactory, RequestHeaderFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IPyroRequestUriFactory, PyroRequestUriFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IRequestMetaFactory, RequestMetaFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IResourceRepositoryFactory, Pyro.WebApi.CompositionRoot.ResourceRepositoryFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IResourceServiceOutcomeFactory, ResourceServiceOutcomeFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.ISearchParameterGenericFactory, SearchParameterGenericFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.ISearchParameterReferanceFactory, SearchParameterReferanceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.ISearchParameterServiceFactory, SearchParameterServiceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.ISearchParametersServiceOutcomeFactory, SearchParametersServiceOutcomeFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IMetadataServiceFactory, MetadataServiceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IBundleTransactionOperationFactory, BundleTransactionOperationFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IFhirBaseOperationServiceFactory, FhirBaseOperationServiceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IFhirResourceInstanceOperationServiceFactory, FhirResourceInstanceOperationServiceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IFhirResourceOperationServiceFactory, FhirResourceOperationServiceFactory>(Lifestyle.Singleton);
      container.Register<Pyro.Common.CompositionRoot.IServerSearchParameterServiceFactory, ServerSearchParameterServiceFactory>(Lifestyle.Singleton);
      container.Register<Common.CompositionRoot.IBackgroundTaskFactory, BackgroundTaskFactory>(Lifestyle.Singleton);

      container.Register<HealthIdentifiers.Identifiers.Australian.MedicareNumber.IMedicareNumberParser, HealthIdentifiers.Identifiers.Australian.MedicareNumber.MedicareNumberParser>(Lifestyle.Singleton);
      container.Register< HealthIdentifiers.Identifiers.Australian.DepartmentVeteransAffairs.IDVANumberParser, HealthIdentifiers.Identifiers.Australian.DepartmentVeteransAffairs.DVANumberParser>(Lifestyle.Singleton);
      container.Register<HealthIdentifiers.Identifiers.Australian.NationalHealthcareIdentifier.IIndividualHealthcareIdentifierParser, HealthIdentifiers.Identifiers.Australian.NationalHealthcareIdentifier.IndividualHealthcareIdentifierParser>(Lifestyle.Singleton);
      container.Register<HealthIdentifiers.Identifiers.Support.StandardsInformation.Australian.INationalHealthcareIdentifierInfo, HealthIdentifiers.Identifiers.Support.StandardsInformation.Australian.NationalHealthcareIdentifierInfo>(Lifestyle.Singleton);
      container.Register<HealthIdentifiers.Identifiers.Support.StandardsInformation.Australian.IMedicareNumberInfo, HealthIdentifiers.Identifiers.Support.StandardsInformation.Australian.MedicareNumberInfo>(Lifestyle.Singleton);
      container.Register<Pyro.Common.Tools.Paging.IPagingSupport, Pyro.Common.Tools.Paging.PagingSupport>(Lifestyle.Scoped);


      //Singleton: Cache      
      container.Register<IApplicationCacheSupport, ApplicationCacheSupport>(Lifestyle.Singleton);
      container.Register<ICacheClear, CacheClear>(Lifestyle.Singleton);

      //Singleton: Automapper      
      container.RegisterSingleton(() => container.GetInstance<Pyro.WebApi.CompositionRoot.MapperProvider>().GetMapper());

      //========================================================================================================
      //=================== Transient ==========================================================================            
      //========================================================================================================      
      container.Register<IFhirResourceNarrative, FhirResourceNarrative>(Lifestyle.Transient);
      container.Register<IHtmlGenerationSupport, HtmlGenerationSupport>(Lifestyle.Transient);

      container.Register<IDtoRootUrlStore, DtoRootUrlStore>(Lifestyle.Transient);
      container.Register<IRequestHeader, RequestHeader>(Lifestyle.Transient);
      container.Register<IPyroFhirUri, PyroFhirUri>(Lifestyle.Transient);
      container.Register<IPyroRequestUri, PyroRequestUri>(Lifestyle.Transient);
      container.Register<IFhirRestResponse, FhirRestResponse>(Lifestyle.Transient);
      container.Register<IRequestMeta, RequestMeta>(Lifestyle.Transient);

      container.Register<IBundleTransactionOperation, BundleTransactionOperation>(Lifestyle.Transient);
      container.Register<IMetadataService, MetadataService>(Lifestyle.Transient);

      container.Register<ISearchParameterService, SearchParameterService>(Lifestyle.Transient);
      container.Register<ISearchParameterGeneric, SearchParameterGeneric>(Lifestyle.Transient);
      container.Register<ISearchParameterReferance, SearchParameterReferance>(Lifestyle.Transient);
      container.Register<ISearchParametersServiceOutcome, SearchParametersServiceOutcome>(Lifestyle.Transient);
      container.Register<IDatabaseOperationOutcome, DtoDatabaseOperationOutcome>(Lifestyle.Transient);
      container.Register<IResourceServiceOutcome, ResourceServiceOutcome>(Lifestyle.Transient);

      container.Register<Common.SearchIndexer.Indexer.IInMemoryResourceSearch, Common.SearchIndexer.Indexer.InMemoryResourceSearch>(Lifestyle.Transient);
      container.Register<Common.SearchIndexer.Indexer.IResourceIndexed, Common.SearchIndexer.Indexer.ResourceIndexed>(Lifestyle.Transient);


      //========================================================================================================
      //=================== Scoped =============================================================================            
      //========================================================================================================


      //GenericInstanceFactory
      container.Register<Pyro.Common.CompositionRoot.IGenericInstanceFactory, Pyro.Common.CompositionRoot.Concrete.GenericInstanceFactory>(Lifestyle.Scoped);

      //Database indexes
      container.RegisterConditional(typeof(IDbIndexSetterFactory<,,,,,,>), typeof(Pyro.WebApi.CompositionRoot.DbIndexSetterFactory<,,,,,,>), Lifestyle.Scoped, c => !c.Handled);
      container.RegisterConditional(typeof(IDbReferenceSetter<,,,,,,>), typeof(DbReferenceSetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbNumberSetter<,,,,,,>), typeof(DbNumberSetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbDateTimeSetter<,,,,,,>), typeof(DbDateTimeSetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbQuantitySetter<,,,,,,>), typeof(DbQuantitySetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbStringSetter<,,,,,,>), typeof(DbStringSetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbTokenSetter<,,,,,,>), typeof(DbTokenSetter<,,,,,,>), c => !c.Handled);
      container.RegisterConditional(typeof(IDbUriSetter<,,,,,,>), typeof(DbUriSetter<,,,,,,>), c => !c.Handled);

      //In Memory indexes
      container.Register<Pyro.Common.CompositionRoot.IIndexSetterFactory, IndexSetterFactory>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.IReferenceSetter, Pyro.Common.SearchIndexer.Setter.ReferenceSetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.INumberSetter, Pyro.Common.SearchIndexer.Setter.NumberSetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.IDateTimeSetter, Pyro.Common.SearchIndexer.Setter.DateTimeSetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.IStringSetter, Pyro.Common.SearchIndexer.Setter.StringSetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.ITokenSetter, Pyro.Common.SearchIndexer.Setter.TokenSetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.IQuantitySetter, Pyro.Common.SearchIndexer.Setter.QuantitySetter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.SearchIndexer.Setter.IUriSetter, Pyro.Common.SearchIndexer.Setter.UriSetter>(Lifestyle.Scoped);

      //Custom FhirPath Resolver()
      container.Register<Common.Tools.FhirPathSupport.IPyroFhirPathResolve, Common.Tools.FhirPathSupport.PyroFhirPathResolve>(Lifestyle.Scoped);

      //Here we get the databse provider from the db connection string and then load the appropirate concrete dbContext.
      RegisterDbContextForDbProvider(container);

      container.Register<IRequestServiceRootValidate, RequestServiceRootValidate>(Lifestyle.Scoped);
      container.Register<IUnitOfWork, UnitOfWork>(Lifestyle.Scoped);
      container.Register<Pyro.Common.CompositionRoot.IResourceServiceFactory, ResourceServiceFactory>(Lifestyle.Scoped);
      container.Register<IRepositorySwitcher, RepositorySwitcher>(Lifestyle.Scoped);
      container.Register<IPyroService, PyroService>(Lifestyle.Scoped);
      container.Register<IServiceSearchParameterService, ServiceSearchParameterService>(Lifestyle.Scoped);
      container.Register<Common.Tools.FhirSpecCorrections.IFhirSpecificationCorrections, Common.Tools.FhirSpecCorrections.FhirSpecificationCorrections>(Lifestyle.Scoped);
      container.Register<IServicePrimaryBaseUrlService, ServiceBaseUrlService>(Lifestyle.Scoped);
      container.Register<IResourceServices, ResourceServices>(Lifestyle.Scoped);
      container.Register<ISmartScopeService, SmartScopeService>(Lifestyle.Scoped);
      container.Register<ISearchParameterFactory, SearchParameterFactory>(Lifestyle.Scoped);
      container.Register<IIncludeService, IncludeService>(Lifestyle.Scoped);
      container.Register<Pyro.ADHA.Api.IIhiSearchValidateConfig, Pyro.Common.ADHA.Api.IhiSearchValidateConfig>(Lifestyle.Scoped);
      container.Register<Pyro.ADHA.Api.IHiServiceApi, Pyro.ADHA.Api.HiServiceApi>(Lifestyle.Scoped);
      container.Register<IServiceBackburnerConnection, Engine.Services.BackburnerConnection.ServiceBackburnerConnection>(Lifestyle.Scoped);
      container.Register<IServiceFhirTaskQueue, Engine.Services.FhirTaskQueue.ServiceFhirTaskQueue>(Lifestyle.Scoped);
      container.Register<IServiceFhirTaskWorker, Engine.Services.FhirTaskWorker.ServiceFhirTaskWorker>(Lifestyle.Scoped);
      container.Register<IServiceFhirTaskWorkerManager, Engine.Services.FhirTaskWorker.ServiceFhirTaskWorkerManager>(Lifestyle.Scoped);

      //Scoped: Operations Locator 
      container.Register<IFhirBaseOperationService, FhirBaseOperationService>(Lifestyle.Scoped);
      container.Register<IFhirResourceInstanceOperationService, FhirResourceInstanceOperationService>(Lifestyle.Scoped);
      container.Register<IFhirResourceOperationService, FhirResourceOperationService>(Lifestyle.Scoped);
      //Scoped: Operations      
      container.Register<IServerSearchParameterOperation, ServerSearchParameterOperation>(Lifestyle.Scoped);
      container.Register<IResourceReportOperation, ResourceReportOperation>(Lifestyle.Scoped);
      container.Register<IFhirValidateOperation, FhirValidateOperation>(Lifestyle.Scoped);
      container.Register<IFhirValidationSupport, FhirValidationSupport>(Lifestyle.Scoped);
      container.Register<IConnectathonAnswerOperation, ConnectathonAnswerOperation>(Lifestyle.Scoped);
      container.Register<IIHISearchOrValidateOperation, IHISearchOrValidateOperation>(Lifestyle.Scoped);
      container.Register<ICompartmentOperation, CompartmentOperation>(Lifestyle.Scoped);
      container.Register<IProcessMessageOperation, ProcessMessageOperation>(Lifestyle.Scoped);

      //Scoped: Cache
      container.Register<IPrimaryServiceRootCache, PrimaryServiceRootCache>(Lifestyle.Scoped);
      container.Register<IServiceSearchParameterCache, ServiceSearchParameterCache>(Lifestyle.Scoped);
      container.Register<Common.Compartment.IServiceCompartmentCache, Common.Compartment.ServiceCompartmentCache>(Lifestyle.Scoped);
      container.Register<Common.FhirRelease.IFhirReleaseCache, Common.FhirRelease.FhirReleaseCache>(Lifestyle.Scoped);

      //Scoped: Load all the FHIR Validation Resolvers       
      container.Collection.Register<IResourceResolver>(new[] { typeof(InternalServerProfileResolver), typeof(AustralianFhirProfileResolver), typeof(ZipSourceResolver) });

      //Scoped: Repositories 
      var CommonResourceRepositoryTypeList = Pyro.DataLayer.DbModel.EntityGenerated.CommonResourceRepositoryTypeList.GetTypeList();
      container.Register(typeof(ICommonResourceRepository<,,,,,,>), CommonResourceRepositoryTypeList.ToArray(), Lifestyle.Scoped);
      container.Register<Pyro.DataLayer.Repository.Interfaces.IServiceBaseUrlRepository, ServiceBaseUrlRepository>(Lifestyle.Scoped);
      container.Register<IServicePrimaryBaseUrlRepository, ServiceBaseUrlRepository>(Lifestyle.Scoped);
      container.Register<IServiceSearchParameterRepository, ServiceSearchParameterRepository>(Lifestyle.Scoped);
      container.Register<IServiceCompartmentRepository, ServiceCompartmentRepository>(Lifestyle.Scoped);      
      container.Register<IFhirReleaseRepository, FhirReleaseRepository>(Lifestyle.Scoped);
      container.Register<IMigrationHistoryRepository, MigrationHistoryRepository>(Lifestyle.Scoped);
      container.Register<IBackburnerConnectionRepository, BackburnerConnectionRepository>(Lifestyle.Scoped);
      container.Register<IFhirTaskQueueRepository, FhirTaskQueueRepository>(Lifestyle.Scoped);
      container.Register<IFhirTaskWorkerRepository, FhirTaskWorkerRepository>(Lifestyle.Scoped);

      container.Register<ICompartmentSearchParameterService, CompartmentSearchParameterService>(Lifestyle.Scoped);

      //Scoped Trigger Services
      container.Register<IResourceTriggerService, ResourceTriggerService>(Lifestyle.Scoped);
      container.Register<ITriggerCompartmentDefinition, TriggerCompartmentDefinition>(Lifestyle.Scoped);
      container.Register<ITriggerProtectedResource, TriggerProtectedResource>(Lifestyle.Scoped);
      container.Register<ITriggerServerReadOnlyMode, TriggerServerReadOnlyMode>(Lifestyle.Scoped);

      //Background Task Payloads
      container.Register<Common.BackgroundTask.TaskPayload.IBackgroundTaskPayload, Common.BackgroundTask.TaskPayload.BackgroundTaskPayload>(Lifestyle.Scoped);      

      //Background Task Services            
      container.Register<Pyro.Common.BackgroundTask.TaskService.HiService.IIhiSearchService, Pyro.Common.BackgroundTask.TaskService.HiService.IhiSearchService>(Lifestyle.Scoped);
      container.Register<Pyro.Common.BackgroundTask.TaskService.Indexer.IIndexerService, Pyro.Common.BackgroundTask.TaskService.Indexer.IndexerService>(Lifestyle.Scoped);
      container.Register<Pyro.Common.BackgroundTask.TaskService.FhirApiDiscovery.IFhirApiDiscoveryService, Pyro.Common.BackgroundTask.TaskService.FhirApiDiscovery.FhirApiDiscoveryService>(Lifestyle.Scoped);

      //Service Configuration to Db
      container.Register<IServiceConfigurationService, ServiceConfigurationService>(Lifestyle.Scoped);
      container.Register<IServiceConfigurationRepository, ServiceConfigurationRepository>(Lifestyle.Scoped);

      //Fhir Tasks Processing
      container.Register<Pyro.Engine.Services.FhirTasks.ITaskRunner, Pyro.Engine.Services.FhirTasks.TaskRunner>(Lifestyle.Scoped);
      container.Register<Common.Tools.FhirTask.IFhirTaskTool, Common.Tools.FhirTask.FhirTaskTool>(Lifestyle.Scoped);
      container.Register<Pyro.Engine.Services.FhirTasks.FhirSpecLoader.IFhirSpecificationDefinitionLoader, Pyro.Engine.Services.FhirTasks.FhirSpecLoader.FhirSpecificationDefinitionLoader>(Lifestyle.Scoped);
      container.Register<Pyro.Engine.Services.FhirTasks.FhirSpecLoader.IFhirSpecificationDefinitionLoaderParameters, Pyro.Engine.Services.FhirTasks.FhirSpecLoader.FhirSpecificationDefinitionLoaderParameters>(Lifestyle.Scoped);
      container.Register<Pyro.Engine.Services.FhirTasks.SetCompartment.ISetCompartmentDefinitionTaskProcessor, Pyro.Engine.Services.FhirTasks.SetCompartment.SetCompartmentDefinitionTaskProcessor>(Lifestyle.Scoped);
      container.Register<Pyro.Engine.Services.FhirTasks.SearchParameterLoader.ISearchParameterResourceLoader, Pyro.Engine.Services.FhirTasks.SearchParameterLoader.SearchParameterResourceLoader>(Lifestyle.Scoped);

      //Pyro FHIR Resources
      container.Register<Pyro.Common.PyroHealthFhirResource.IPyroFhirResource, Pyro.Common.PyroHealthFhirResource.PyroFhirResource>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.ICodeSystem, Pyro.Common.PyroHealthFhirResource.CodeSystem>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.IOrganization, Pyro.Common.PyroHealthFhirResource.Organization>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.ITask, Pyro.Common.PyroHealthFhirResource.Task>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.IDevice, Pyro.Common.PyroHealthFhirResource.Device>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.ICompartmentDefinition, Pyro.Common.PyroHealthFhirResource.CompartmentDefinition>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.IOperationDefinition, Pyro.Common.PyroHealthFhirResource.OperationDefinition>(Lifestyle.Scoped);

      //Pyro FHIR Resources: CodeSystems
      container.Register<Pyro.Common.PyroHealthFhirResource.CodeSystems.IPyroFhirServer, Pyro.Common.PyroHealthFhirResource.CodeSystems.PyroFhirServer>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CodeSystems.IPyroTask, Pyro.Common.PyroHealthFhirResource.CodeSystems.PyroTask>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CodeSystems.IPyroHealth, Pyro.Common.PyroHealthFhirResource.CodeSystems.PyroHealth>(Lifestyle.Scoped);
      //Pyro FHIR Resources: Organizations
      container.Register<Pyro.Common.PyroHealthFhirResource.Organizations.IPyroHealth, Pyro.Common.PyroHealthFhirResource.Organizations.PyroHealth>(Lifestyle.Scoped);
      //Pyro FHIR Resources: Tasks
      container.Register<Pyro.Common.PyroHealthFhirResource.Tasks.ILoadFhirSpecificationDefinitions, Pyro.Common.PyroHealthFhirResource.Tasks.LoadFhirSpecificationDefinitions>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.Tasks.ISetCompartmentDefinitions, Pyro.Common.PyroHealthFhirResource.Tasks.SetCompartmentDefinitions>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.Tasks.ISetSearchParameterDefinitions, Pyro.Common.PyroHealthFhirResource.Tasks.SetSearchParameterDefinitions>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.Tasks.ISearchParameterIndexing, Pyro.Common.PyroHealthFhirResource.Tasks.SearchParameterIndexing>(Lifestyle.Scoped);
      //Pyro FHIR Resources: Device
      container.Register<Pyro.Common.PyroHealthFhirResource.Devices.IPyroFhirServer, Pyro.Common.PyroHealthFhirResource.Devices.PyroFhirServer>(Lifestyle.Scoped);
      //Pyro Fhir Resources: CompartmentDefinition
      container.Register<Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.IPyroCompartmentDefinitionDevice, Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.PyroCompartmentDefinitionDevice>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.IPyroCompartmentDefinitionEncounter, Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.PyroCompartmentDefinitionEncounter>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.IPyroCompartmentDefinitionPatient, Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.PyroCompartmentDefinitionPatient>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.IPyroCompartmentDefinitionPractitioner, Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.PyroCompartmentDefinitionPractitioner>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.IPyroCompartmentDefinitionRelatedPerson, Pyro.Common.PyroHealthFhirResource.CompartmentDefinitions.PyroCompartmentDefinitionRelatedPerson>(Lifestyle.Scoped);
      //Pyro Fhir Resources: CompartmentDefinition
      container.Register<Pyro.Common.PyroHealthFhirResource.OperationDefinitions.IServerIndexesSet, Pyro.Common.PyroHealthFhirResource.OperationDefinitions.ServerIndexesSet>(Lifestyle.Scoped);
      container.Register<Pyro.Common.PyroHealthFhirResource.OperationDefinitions.IServerIndexesIndex, Pyro.Common.PyroHealthFhirResource.OperationDefinitions.ServerIndexesIndex>(Lifestyle.Scoped);
    }

    private static void RegisterDbContextForDbProvider(Container container)
    {
      var ConnectionStringSetting = DatabaseConnection.GetConectionStringSettings();
      if (ConnectionStringSetting.ProviderName == DatabaseConnection.MicrosoftSQLServerProvider)
      {
        container.Register<IPyroDbContext, MsSqlContext>(Lifestyle.Scoped);
      }
      else if (ConnectionStringSetting.ProviderName == DatabaseConnection.PostgreSQLProvider)
      {
        container.Register<IPyroDbContext, PostgreContext>(Lifestyle.Scoped);
      }
      else
      {
        throw new System.ApplicationException($"Unsupported database provider found in database connection string. Provider was : {ConnectionStringSetting.ProviderName}. The only supported provider names are '{DatabaseConnection.PostgreSQLProvider}' for PostgreSQL and '{DatabaseConnection.MicrosoftSQLServerProvider}' for Microsoft SQL Server.");
      }
    }
  }
}