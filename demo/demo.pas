unit demo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFileToB64, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FileToB64: TFileToB64;
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var Base64: string;
begin
OpenDialog1.Execute();
Base64 := FileToB64.LoadFromFile(OpenDialog1.FileName);
Memo1.Lines.Text := Base64;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Memo1.Lines.Text := FileToB64.LoadFromFile('https://cdn.shopify.com/app-store/listing_images/ba8bf84d0f9ae4222730eca1ab6a980b/icon/COKu9ab0lu8CEAE=.png');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Memo1.Clear;
end;

end.
