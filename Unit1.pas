unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

  TPessoa = class

  private
    FNome: string;
    FCPF: string;
    { Private declarations }
  public
    { Public declarations }
    property Nome: string read FNome write FNome;
    property CPF: string read FCPF write FCPF;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa := TPessoa.Create;
  try
    pessoa.Nome := 'João';
    pessoa.CPF :='77777777';
    ShowMessage(pessoa.Nome);
  finally
    pessoa.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
