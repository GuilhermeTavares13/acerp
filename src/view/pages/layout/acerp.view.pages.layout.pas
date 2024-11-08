unit acerp.view.pages.layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.MultiView, Router4D.Interfaces;

type
  TPageLayout = class(TForm,iRouter4DComponent)
    lytContainer: TLayout;
    MultiView1: TMultiView;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lytMain: TLayout;
    Layout2: TLayout;
    lytBody: TLayout;
    recBackGround: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TFMXObject;
    procedure UnRender;
  end;

implementation

{$R *.fmx}

{ TPageLayout }

function TPageLayout.Render: TFMXObject;
begin
  Result := lytContainer;
end;

procedure TPageLayout.UnRender;
begin

end;

end.
