unit Model.Main;

interface

uses
  Interfaces.Model.Main;

  function CreateModelMain: IModelMain;

implementation

uses
  System.SysUtils,
  Globals;

type
  TModelMain = class(TInterfacedObject, IModelMain)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public

  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public

  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    function GetAppVersion: string;
    function GetStoreName: String;
    function GetWorkstationName: String;
    function GetUserName: String;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

function CreateModelMain: IModelMain;
begin
  Result := TModelMain.Create;
end;

{ TModelMain }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TModelMain.GetAppVersion: string;
begin
  Result := G.GetAppVersion;
end;

function TModelMain.GetStoreName: String;
begin
  Result := G.StoreName;
end;

function TModelMain.GetWorkstationName: String;
begin
  Result := G.WorkstationName;
end;

function TModelMain.GetUserName: String;
begin
  Result := G.UserName;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

end.
