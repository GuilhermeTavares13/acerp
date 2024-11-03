unit acerp.view.router;

interface
  type
    TRouter = class
      private
        constructor Create;
        destructor Destroy; override;
      public
        class function New: TRouter;
    end;

var
  Router: TRouter;

implementation

uses
  Router4D, acerp.view.pages.layout, acerp.view.pages.home;
{ TRouter }

constructor TRouter.Create;
begin
  TRouter4D
    .Switch
    .Router('Layout',TPageLayout)
    .Router('Home',TPageHome);
end;

destructor TRouter.Destroy;
begin

  inherited;
end;

class function TRouter.New: TRouter;
begin
  Result := Self.Create;
end;

initialization
  Router := Router.New;

finalization
  Router.Free;

end.
