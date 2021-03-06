unit Camaleonte;

interface

uses
  Animale;

type
  { TCamaleonte }
  TCamaleonte = class(TAnimale)
  strict private
    FNome: String;

  strict protected

  public
    function FaiVerso(): String; override;
    function AlzaUnaZampa(): String; override;
    function CambiaColore(): String; override;
    constructor Create(const ATipo: String; const AColore: String;
      const AVerso: String; const ANumeroZampe: Integer;
      const ANome: String); overload;

    property Nome: String read FNome;
  end;

implementation

uses
  Winapi.Windows, Vcl.Graphics;

{ TCamaleonte }
constructor TCamaleonte.Create(const ATipo: String; const AColore: String;
  const AVerso: String; const ANumeroZampe: Integer; const ANome: String);
begin
  Tipo := ATipo;
  Colore := AColore;
  Verso := AVerso;
  NumeroZampe := ANumeroZampe;
  FNome := ANome;
end;

function TCamaleonte.AlzaUnaZampa: String;
begin
  result := '..';
end;

function TCamaleonte.CambiaColore(): String;
begin
  result := 'Nuovo colore: ' + ColorToString(RGB(Random(255), Random(255),
    Random(255)));
end;

function TCamaleonte.FaiVerso: String;
begin
  result := '..';
end;

end.
