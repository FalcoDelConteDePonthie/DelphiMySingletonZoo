unit Gatto;

interface

uses
  Animale;

type
  { TGatto }
  TGatto = class(TAnimale)
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

{ TGatto }
constructor TGatto.Create(const ATipo: String; const AColore: String;
  const AVerso: String; const ANumeroZampe: Integer; const ANome: String);
begin
  Tipo := ATipo;
  Colore := AColore;
  Verso := AVerso;
  NumeroZampe := ANumeroZampe;
  FNome := ANome;
end;

function TGatto.AlzaUnaZampa: String;
begin
  result := 'Sono un gatto.. io non do la zampa';
end;

function TGatto.CambiaColore(): String;
begin
  result := 'Non ti rispondo nemmeno..';
end;

function TGatto.FaiVerso: String;
begin
  result := 'Miao..';
end;

end.
