﻿using System;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using Pyro.Common.BackgroundTask.TaskPayload;
using Pyro.Common.Enum;

namespace Pyro.WebApi.SignalRHub
{
  public class Broadcaster
  {
    private static readonly Lazy<Broadcaster> _instance =
     new Lazy<Broadcaster>(() =>
             new Broadcaster(GlobalHost
                            .ConnectionManager
                            .GetHubContext<BroadcastHub>()
                            .Clients));

    public static Broadcaster Instance => _instance.Value;

    public IHubConnectionContext<dynamic> Clients { get; set; }

    public Broadcaster(IHubConnectionContext<dynamic> clients)
    {
      Clients = clients;   
    }

    public void Broadcast(DateTime x)
    {
      Clients.All.Broadcast(x);
    }

    public void BackgroundTask(IBackgroundTaskPayload Payload)
    {
      IClientProxy proxy = Clients.All;
      proxy.Invoke(BackgroundTaskEnum.BroadcastType.BackgroundTask.GetPyroLiteral(), Payload);
    }

    //public void HiServiceResolveIHI(ITaskPayloadHiServiceIHISearch Payload)
    //{
    //  IClientProxy proxy = Clients.All;
    //  proxy.Invoke(Payload.TaskType.GetPyroLiteral(), Payload);
    //}

    //public void PyroServerIndexing(ITaskPayloadPyroServerIndexing Payload)
    //{
    //  IClientProxy proxy = Clients.All;
    //  proxy.Invoke(Payload.TaskType.GetPyroLiteral(), Payload);
    //}


  }
}