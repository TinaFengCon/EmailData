FROM acrbreezesoahub.azurecr.io/dotnet-6-base:latest AS base
WORKDIR /app
EXPOSE 8080
EXPOSE 4433
ENV ASPNETCORE_URLS=http://+:8080

FROM acrbreezesoahub.azurecr.io/dotnet-6-build:latest AS build
WORKDIR /src
COPY ["cifr-manager-service/cifr-manager-service.csproj", "cifr-manager-service/"]
RUN dotnet restore "cifr-manager-service/cifr-manager-service.csproj"
COPY . .
WORKDIR "/src/cifr-manager-service"
RUN dotnet build "cifr-manager-service.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "cifr-manager-service.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "cifr_manager_service.dll"]