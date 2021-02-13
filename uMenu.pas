unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMenu = class(TForm)
    Panel2: TPanel;
    MemMEnu: TMemo;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Menu: String;
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

procedure TfrmMenu.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  MemMenu.Lines.Clear;
  MemMenu.Lines.Add(Menu);
end;

end.
