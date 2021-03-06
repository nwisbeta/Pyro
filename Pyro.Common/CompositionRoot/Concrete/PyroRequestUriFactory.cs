﻿using Pyro.Common.CompositionRoot;
using Pyro.Common.Tools.UriSupport;

namespace Pyro.Common.CompositionRoot.Concrete
{
  public class PyroRequestUriFactory : IPyroRequestUriFactory
  {
    private readonly SimpleInjector.Container Container;

    public PyroRequestUriFactory(SimpleInjector.Container Container)
    {
      this.Container = Container;
    }

    public IPyroRequestUri CreateFhirRequestUri()
    {
      return Container.GetInstance<IPyroRequestUri>();
    }
  }
}