unit uFrmPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmPai = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCtrl: TObject); Virtual; abstract;
  end;

var
  FrmPai: TFrmPai;

implementation

{$R *.dfm}

{ TFrmPai }


end.
