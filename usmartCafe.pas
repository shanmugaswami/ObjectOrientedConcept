unit usmartCafe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmSmartCafe = class(TForm)
    pnlTop: TPanel;
    stHeader: TStaticText;
    pnlCofee: TPanel;
    PnlBeer: TPanel;
    pnlJuice: TPanel;
    imgCofee: TImage;
    imgJuice: TImage;
    imBeer: TImage;
    btnMenu: TButton;
    procedure btnMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSmartCafe: TfrmSmartCafe;

implementation

{$R *.dfm}

uses
   uClasses, uMenu;

procedure TfrmSmartCafe.btnMenuClick(Sender: TObject);
var
  aDrinks: Array of TDrink;
  oJuice: TJuice;
  oBeer: TBeer;
  oSoda: TDrink;
  i: integer;
  sMessage: string;
  frmMenu: TfrmMenu;
begin
  try
     //Crete objects for Juice, beer & soda
     oJuice:= TJuice.Create( 'Orange Juice',False, 'Orange Juice, not carbonated, made from oranges', 'Orange');
     oBeer:= TBeer.Create('Budweiser', True, 'Budweiser, carbonated, 5%', 5);
     oSoda:= TDrink.Create('Pepsi', True, 'Pepsi, carbonated');

     try
       //Add to dynamic array
       SetLength(aDrinks, 3);
       aDrinks[0]:= OJuice;
       aDrinks[1]:= OBeer;
       aDrinks[2]:= OSoda;

       //Construct the description(menu) looping thr' array
       sMessage:= 'Menu: '+ #13#10;
       sMessage:= sMessage+ '-------'+ #13#10 + #13#10;

       for i:= 0  to high(aDrinks) do
         sMessage:= sMessage + aDrinks[i].Description+ #13#10 +  #13#10;

        //Show Menu in modal form instead of message for visual appeal
        frmMenu:= TfrmMenu.Create(self);
        try
          frmMenu.Menu:= sMessage;
          frmMenu.ShowModal;
        finally
          frmMenu.Free;
        end;

     finally
        OJuice.Free;
        OBeer.Free;
        OSoda.Free;
     end;
  except on e: exception do
     Showmessage('Exception occured on Menu button click' + #13#10+ e.Message);
  end;
end;

end.
