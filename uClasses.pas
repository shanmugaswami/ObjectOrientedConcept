unit uClasses;

interface

type

//Contains classes used in this project.
TDrink = class(TObject)
private
  fDrinkname: string;
  fCarbonated: boolean;
  fDescription: string;

  function GetDrinkname: string;
  procedure SetDrinkName(const Value: String);

  function GetCarbonated: boolean;
  procedure SetCarbonated(const Value: boolean);

  function GetDescription: string;
  procedure SetDescription(const Value: string);

public
  property DrinkName: string read GetDrinkName write SetDrinkName;
  property Carbonated: boolean read GetCarbonated write SetCarbonated;
  property Description: string read GetDescription write SetDescription;

  constructor Create(DrinkName: string; Carbonated: boolean; Description: string);
end;

//TJuice & TBeer are subclass of class TDrink
 TJuice = class(TDrink)
 private
   FFruitName: string;
   function GetFruitName: string;
   procedure SetFruitName(const Value: string);
 public
   property FruitName: string read GetFruitName write SetFruitName;
   constructor Create(DrinkName: string; Carbonated: boolean; Description: string; FruitName: string); overload;
 end;

TBeer = class(TDrink)
 private
   FAlcoholContent: integer;
   function GetAlcoholcontent: integer;
   procedure SetAlcoholContent(const Value: integer);
 public
   property AlcoholContent: integer read GetAlcoholContent write SetAlcoholContent;
   constructor Create(DrinkName: string; Carbonated: boolean; Description: string; AlcoholContent: Integer); overload;
 end;




implementation

{ TDrink }

constructor TDrink.Create(DrinkName: string; Carbonated: boolean; Description: string);
begin
  FDrinkName:= Drinkname;
  FCarbonated:= Carbonated;
  FDescription:= Description;
end;

function TDrink.GetCarbonated: boolean;
begin
  Result:= fCarbonated;
end;

function TDrink.GetDescription: string;
begin
  Result:= fDescription;
end;

function TDrink.GetDrinkname: string;
begin
  Result:= fDrinkName;
end;

procedure TDrink.SetCarbonated(const Value: boolean);
begin
  fCarbonated := Value;
end;

procedure TDrink.SetDescription(const Value: string);
begin
  fDescription:= Value;
end;

procedure TDrink.SetDrinkName(const Value: String);
begin
  fDrinkName:= Value;
end;

{ TBeer }

constructor TBeer.Create(DrinkName: string; Carbonated: boolean; Description: string; AlcoholContent: Integer);
begin
  fDrinkName:= Drinkname;
  FCarbonated:= Carbonated;
  FDescription:= Description;
  fAlcoholContent:= AlcoholContent;
end;

function TBeer.GetAlcoholcontent: integer;
begin
   Result:= FAlcoholContent;
end;

procedure TBeer.SetAlcoholContent(const Value: integer);
begin
  FAlcoholContent:= Value;
end;

{ TJuice }

constructor TJuice.Create(DrinkName: string; Carbonated: boolean; Description: string; FruitName: string);
begin
  FDrinkName:= Drinkname;
  FCarbonated:= Carbonated;
  FDescription:= Description;
  fFruitname:= Fruitname;
end;

function TJuice.GetFruitName: string;
begin
  Result:= FFruitName;
end;

procedure TJuice.SetFruitName(const Value: string);
begin
  FFruitName:= Value;
end;

end.
